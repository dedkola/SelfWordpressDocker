#!/bin/bash

# Check if filename is provided as argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

filename=$1

# Add 'SET autocommit = 0;' at the beginning of the file
sed -i '1s/^/SET autocommit = 0;\n/' "$filename"

# Append 'echo 'COMMIT;' to the end of the file
echo 'COMMIT;' >> "$filename"

echo "Script completed successfully."
