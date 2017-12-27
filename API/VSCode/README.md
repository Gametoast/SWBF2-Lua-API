# Lua API for Star Wars Battlefront II (VSCode)

## Install

1. Open [Visual Studio Code](https://code.visualstudio.com/)
2. Press `Ctrl+P` to open the Quick Open dialog
3. Type `ext install vscode-swbf2-lua-api` to find the extension
4. Click the `Install` button, then the `Enable` button

OR

1. Press `Ctrl+Shift+X` to open the Extensions tab
2. Type `vscode-swbf2-lua-api` to find the extension
3. Click the `Install` button, then the `Enable` button

OR

1. Open a command-line prompt
2. Run `code --install-extension aarongilbert2012.vscode-swbf2-lua-api`

## Features

This extension includes snippets for virtually every single built-in Lua function in Star Wars Battlefront II (2005). Other than event callbacks, the only ones that are currently undocumented are many of the shell-exclusive callbacks, but there is pretty much no use for those anyway.

### Currently included

- IntelliSense-like function auto-completion.
- Each function includes a description of what it does - some include thorough use-case examples.
- Functions with parameters include auto-completion for each parameter.
- Parameters with predetermined values have dropdown-based value auto-fill.
- Functions with multiple return values include descriptions of each return value.

### Not yet included

- Parameter descriptions - this is largely because VSCode does not yet seem to support individual parameter descriptions.
- Snippets for event callbacks (such as `OnCharacterSpawn`).

## Requirements

There are no explicit requirements or dependencies for this extension, but obviously it is only useful for SWBF2 modders. ;-)

> If you are not a SWBF2 modder but would like to begin learning the ropes, [check out the modding FAQ on the Gametoast forums](http://www.gametoast.com/viewtopic.php?f=27&t=13806)!

## Issues

If you think there are any missing or incorrectly-documented functions/parameters/return values, please [file a bug report](https://github.com/marth8880/SWBF2-Lua-API/issues).

## Release Notes

### 0.1.0

Initial release of extension.