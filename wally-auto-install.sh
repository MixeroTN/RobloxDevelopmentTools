#!/bin/bash

# Create the post-merge script and write the commands to it
cat << EOF > .git/hooks/post-merge
#!/bin/bash
echo "Running wally install"
wally install
EOF

# Make the post-merge script executable
chmod +x .git/hooks/post-merge

echo "Post-merge hook created successfully!"
