#!/bin/bash

# Initial package installation
echo "Fetching packages..."
wally install
echo "Exporting sourcemap..."
rojo sourcemap default.project.json --output sourcemap.json
echo "Exposing package types..."
wally-package-types --sourcemap sourcemap.json Packages/

# Create the post-merge script and write the commands to it
cat << EOF > .git/hooks/post-merge
#!/bin/bash
echo "Fetching packages..."
wally install
echo "Exporting sourcemap..."
rojo sourcemap default.project.json --output sourcemap.json
echo "Exposing package types..."
wally-package-types --sourcemap sourcemap.json Packages/
EOF

# Make the post-merge script executable
chmod +x .git/hooks/post-merge

echo "Post-merge hook created successfully!"
