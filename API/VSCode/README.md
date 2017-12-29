# Lua API for Star Wars Battlefront II (VSCode)

## Install

1. Go to the [extension's page on the Visual Studio Marketplace](https://marketplace.visualstudio.com/items?itemName=aarongilbert2012.vscode-swbf2-lua-api)
2. Click the `Install` button
3. If you're prompted to allow Visual Studio Code to open, confirm the prompt
4. Once Visual Studio Code has opened, click the `Install` button, then the `Enable` button

OR

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

This extension includes snippets for virtually every single built-in Lua function in Star Wars Battlefront II (2005). The only ones that are currently undocumented are many of the shell-exclusive callbacks, but there is pretty much no use for those anyway.

### Currently included

- IntelliSense-like function auto-completion.
- Each function includes a description of what it does - some include thorough use-case examples.
- Functions with parameters include auto-completion for each parameter.
- Parameters with predetermined values have dropdown-based value auto-fill.
- Functions with multiple return values include descriptions of each return value.
- Snippets for all event callbacks (such as `OnCharacterSpawn`) - furthermore, each snippet includes auto-completion that sets up the callback's lambda function (e.g., 'function(object, killer)' for 'OnObjectKill') and instance values.

### Not yet included

- Parameter descriptions - this is largely because VSCode does not yet seem to support individual parameter descriptions.

## Requirements

There are no explicit requirements or dependencies for this extension, but obviously it is only useful for SWBF2 modders. ;-)

> If you are not a SWBF2 modder but would like to begin learning the ropes, [check out the modding FAQ on the Gametoast forums](http://www.gametoast.com/viewtopic.php?f=27&t=13806)!

## Issues

If you think there are any missing or incorrectly-documented functions/parameters/return values, please [file a bug report](https://github.com/marth8880/SWBF2-Lua-API/issues).

## Contributing

Please feel free to help out with the extensions if you'd like! Simply fork/clone the repo ([.git link](https://github.com/marth8880/SWBF2-Lua-API.git)), make your changes, and [submit a pull request](https://yangsu.github.io/pull-request-tutorial/).

Some notes:

- The extension directory is at `API\VSCode`
- The file containing all of the snippets is at `API\VSCode\snippets\snippets.json`
- Documentation for creating snippets can be found [HERE](https://code.visualstudio.com/docs/editor/userdefinedsnippets)

## Release Notes

### [v1.0.0-release-VSC](https://github.com/marth8880/SWBF2-Lua-API/releases/tag/v1.0.0-release-VSC)

### [v0.1.0-release-VSC](https://github.com/marth8880/SWBF2-Lua-API/releases/tag/v0.1.0-release-VSC)