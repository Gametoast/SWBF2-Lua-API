# Lua API for Star Wars Battlefront II

## Features

This repository includes documentation extensions for virtually every single built-in Lua function in Star Wars Battlefront II (2005). The only ones that are currently undocumented are many of the shell-exclusive callbacks, but there is pretty much no use for those anyway. Currently there exists an extension for [Lua Development Tools](https://projects.eclipse.org/projects/tools.ldt) (as a `.doclua` file) and [Visual Studio Code](https://code.visualstudio.com/) (as a marketplace extension).

Because each IDE uses a different documentation framework, the features for each IDE differ slightly (see below).

> Items that are **bolded** are identical across each IDE.

### Lua Development Tools

#### Currently included

- **IntelliSense-like function auto-completion.** (finicky)
- **Each function includes a description of what it does - some include thorough use-case examples.**
- Functions with return values include descriptions of each return value.
- Function parameters are documented with their name, data type, and description.
- Snippets for all event callbacks (such as `OnCharacterSpawn`).

#### Not yet included

- Nothing off the top of my head. ;-)

### Visual Studio Code

#### Currently included

- **IntelliSense-like function auto-completion.**
- **Each function includes a description of what it does - some include thorough use-case examples.**
- Functions with parameters include auto-completion for each parameter.
- Parameters with predetermined values have dropdown-based value auto-fill.
- Functions with multiple return values include descriptions of each return value.
- Snippets for all event callbacks (such as `OnCharacterSpawn`) - furthermore, each snippet includes auto-completion that sets up the callback's lambda function (e.g., 'function(object, killer)' for 'OnObjectKill') and instance values.

#### Not yet included

- Parameter descriptions - this is largely because VSCode does not yet seem to support individual parameter descriptions.

## Install

### Lua Development Tools

Save [API\LuaDevelopmentTools\Battlefront2API.doclua](https://raw.githubusercontent.com/marth8880/SWBF2-Lua-API/1.0.0-release-LDT/API/LuaDevelopmentTools/Battlefront2API.doclua) (v1.0.0, latest) (right-click link & Save As) to the root of your project's source folder (or `data_***\Common\scripts`).

> When saving the file, make sure the file extension is `.doclua` and not `.doclua.txt`!

### Visual Studio Code

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

## Issues

If you think there are any missing or incorrectly-documented functions/parameters/return values, please [file a bug report](https://github.com/marth8880/SWBF2-Lua-API/issues).

## Contributing

Please feel free to help out with the extensions if you'd like! Simply fork/clone the repo ([.git link](https://github.com/marth8880/SWBF2-Lua-API.git)), make your changes, and [submit a pull request](https://yangsu.github.io/pull-request-tutorial/).

Some notes:

- The VSCode extension directory is located in `API\VSCode`
- The LDT extension directory is located in `API\LuaDevelopmentTools`
- The file containing all of the VSCode snippets is at `API\VSCode\snippets\snippets.json`
- The file containing all of the LDT snippets is at `API\LuaDevelopmentTools\Battlefront2API.doclua`
- Documentation for creating VSCode snippets can be found [HERE](https://code.visualstudio.com/docs/editor/userdefinedsnippets)
- Documentation for creating LuaDoc (LDT) snippets can be found [HERE](http://keplerproject.github.io/luadoc/manual.html#howto)

## Release Notes

> Versions suffixed with **-release-LDT** indicate a Lua Development Tools release, whereas **-release-VSC** indicates a Visual Studio Code release.

### [v1.0.0-release-LDT](https://raw.githubusercontent.com/marth8880/SWBF2-Lua-API/v1.0.0-release-LDT/API/LuaDevelopmentTools/Battlefront2API.doclua)

Event callback snippets are now supported.

### v1.0.0-release-VSC

Event callback snippets are now supported.

### v0.1.0-release-VSC

Initial release of extension.