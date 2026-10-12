#!/bin/bash
# Watches a directory and keeps a timestamped backup of every file that is modified.
# Requires inotifywait (package: inotify-tools). Type 'exit' to stop.

echo "Enter the directory to monitor for changes:"
read -r MAIN_DIR
echo "Enter the directory where backups should be saved:"
read -r BACK_DIR

if [ ! -d "$MAIN_DIR" ]; then
  echo "Error: $MAIN_DIR is not a directory" >&2
  exit 1
fi
if ! command -v inotifywait > /dev/null; then
  echo "Error: inotifywait not found (install inotify-tools)" >&2
  exit 1
fi

# -p creates parent directories as needed and is silent if the directory exists.
if [ ! -d "$BACK_DIR" ]; then
  mkdir -p "$BACK_DIR"
  echo "The backup directory has been created: $BACK_DIR"
fi

echo "We are now monitoring the directory: $MAIN_DIR"
echo "Type 'exit' to stop monitoring $MAIN_DIR."

backup_file() {
  local file=$1 filename timestamp backup_filename
  # Ignore anything inside the backup directory in case it lives under MAIN_DIR.
  case "$file" in "$BACK_DIR"/*) return ;; esac
  [ -f "$file" ] || return
  filename=$(basename "$file")
  timestamp=$(date '+%Y%m%d_%H%M%S')
  if [[ "$filename" == *.* ]]; then
    backup_filename="${filename%.*}_$timestamp.${filename##*.}"
  else
    backup_filename="${filename}_$timestamp"
  fi
  cp "$file" "$BACK_DIR/$backup_filename"
  echo "Backup created: $BACK_DIR/$backup_filename"
}

# inotifywait -m keeps running and prints one path per finished write (-r: all subdirectories).
# Reading its output on fd 3 lets the loop also poll the keyboard for 'exit'.
exec 3< <(inotifywait -m -r -q -e close_write --format '%w%f' "$MAIN_DIR")
watcher=$!

while true; do
  if read -r -t 0.5 -u 3 file; then
    backup_file "$file"
  fi
  read -r -t 0.1 command
  rc=$?
  # rc 0: a line was read; rc > 128: timeout; anything else: end of input.
  if [ $rc -eq 0 ] && [ "$command" == "exit" ]; then
    break
  elif [ $rc -ne 0 ] && [ $rc -le 128 ]; then
    break
  fi
done

kill "$watcher" 2> /dev/null
echo "Exiting the backup monitoring process."
