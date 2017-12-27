# Lua API for Star Wars Battlefront II

## Features

This repository includes documentation extensions for virtually every single built-in Lua function in Star Wars Battlefront II (2005). Other than event callbacks, the only ones that are currently undocumented are many of the shell-exclusive callbacks, but there is pretty much no use for those anyway. Currently there exists an extension for [Lua Development Tools](https://projects.eclipse.org/projects/tools.ldt) (as a `.doclua` file) and [Visual Studio Code](https://code.visualstudio.com/) (as a marketplace extension).

Because each IDE uses a different documentation framework, the features for each IDE differ slightly (see below).

> Items that are **bolded** are identical across each IDE.

### Lua Development Tools

#### Currently included

- **IntelliSense-like function auto-completion.** (finicky)
- **Each function includes a description of what it does - some include thorough use-case examples.**
- Functions with return values include descriptions of each return value.
- Function parameters are documented with their name, data type, and description.

#### Not yet included

- **Snippets for event callbacks (such as `OnCharacterSpawn`).**

### Visual Studio Code

#### Currently included

- **IntelliSense-like function auto-completion.**
- **Each function includes a description of what it does - some include thorough use-case examples.**
- Functions with parameters include auto-completion for each parameter.
- Parameters with predetermined values have dropdown-based value auto-fill.
- Functions with multiple return values include descriptions of each return value.

#### Not yet included

- Parameter descriptions - this is largely because VSCode does not yet seem to support individual parameter descriptions.
- **Snippets for event callbacks (such as `OnCharacterSpawn`).**

## Install

### Lua Development Tools

Save [API/LuaDevelopmentTools/Battlefront2API.doclua](https://raw.githubusercontent.com/marth8880/SWBF2-Lua-API/master/API/LuaDevelopmentTools/Battlefront2API.doclua) (right-click link & Save As) to the root of your project's source folder (or `data_***\Common\scripts`).

> When saving the file, make sure the file extension is `.doclua` and not `.doclua.txt`!

### Visual Studio Code

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