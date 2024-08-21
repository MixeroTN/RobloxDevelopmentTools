# Roblox Development Tools

The set of scripts to make the development easier.

## Where to put?

I recommend to make the `Tools` folder in project directory and have it synced with git. For example the `wally-auto-install.sh`
script that has been made to reinstall the latest Roblox-related packages after each successful merge to eliminate the problems
with outdated packages the game uses and stores, as the Packages folder is ignored.

These scripts aren't packaged. They are intended to copy-paste and eventually change for your liking. They are also lightweight.

## Things to note

- If you have included Rojo in `wally.toml` file, make sure to stop `serve` when merging (git pull with changes), and executing the shell file to create a hook (the file also executes the code on file execution, to prevent that remove the part of code repeated from inside the `cat` command).
