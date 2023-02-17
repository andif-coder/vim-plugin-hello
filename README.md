# vim-plugin-parentheses
## Usage

Click `cin(` in the common mode of vim, it will match the first `( `in the current line, then delete the content in the brackets and enter the insert mode.

`il` is the first match from back to front`(`

`an` and `al` will delete the parentheses together

## Bug

Appearing `()/<>` will delete `(`and then enter insert mode

Appearance of `{}` will delete more
