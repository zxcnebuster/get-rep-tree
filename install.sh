SCRIPT_NAME="print_rep_tree"
SCRIPT_PATH="/usr/local/bin/$SCRIPT_NAME"
SOURCE_SCRIPT="./rep_tree.sh"

if [[ ! -f "$SOURCE_SCRIPT" ]]; then
    echo "Error: Source script '$SOURCE_SCRIPT' does not exist."
    exit 1
fi

sudo cp "$SOURCE_SCRIPT" "$SCRIPT_PATH"
if [[ $? -ne 0 ]]; then
    echo "Error: Failed to copy the script to $SCRIPT_PATH."
    exit 1
fi

sudo chmod +x "$SCRIPT_PATH"
if [[ $? -ne 0 ]]; then
    echo "Error: Failed to make the script executable."
    exit 1
fi

echo "The script has been installed as '$SCRIPT_NAME' and can be run from anywhere on your computer."
