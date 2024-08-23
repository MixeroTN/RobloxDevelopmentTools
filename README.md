# Roblox Development Tools

The set of scripts to make the development easier. Launch once to create hooks.

```bash
bash script-name
```

## Where to put?

I recommend to put it in project's root directory or to make the tools folder for it, and have it synced with git. For example, the `wally-auto-install.sh`
script, which has been made to reinstall the latest wally packages after each successful merge, is designed to eliminate problems
with outdated packages the game uses and stores, as well when contributors use different versions, as the packages folder should be ignored by git.

These scripts aren't packaged. They are intended to copy-paste and eventually change for your liking. They are also lightweight.

## Things to note

- Remember to include the wally packages provided in our's `wally.toml`.
- If you have included Rojo in `wally.toml` file, make sure to stop `serve` when merging (git pull with changes), and when executing the shell file to create a hook (the file also executes the code on file execution, to prevent that remove the part of code repeated from inside the `cat` command).
