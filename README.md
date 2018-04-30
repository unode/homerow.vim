# Homerow for vim

Functions to remap vim's movement keys to something other than `hjkl`.

# Available bindings currently include:

- `←↓↑→` on `hjkl` - `homerow#Default*`
- `←↓↑→` on `jkl;` - `homerow#JKLsemi*`
- `←↓↑→` as vim's built-in - `homerow#Unset*`
- Disable directional `←↓↑→` keys - `homerow#NoArrows`
- Disable directional `hjkl` keys - `homerow#NoHJKL`
- Minimal bindings on `HL` and `jk` - `homerow#Mini` (only WrapLine and QuickStartEnd)

`*` represents one of the following suffixes:

- () - Calls all below
- Move() - Affects movement keys: `hjkl`
- Window() - Affects window movement keys: `<C-w>h ; <C-w>j ...`
- WindowAlt() - Affects window movement keys using `<Alt>`: `<A-h> ; <A-j> ...`
- WindowAltTerm() - Affects window movement keys using `<Alt>` in terminal mode: `<A-h> ; <A-j> ...`
- Line() - Affects visual line movement keys: `gh ; gj ...`
- WrapLine() - Affects wrapped line movement: `k -> gk ; j -> gj`
- QuickStartEnd() - Affects UP/DOWN for quick start/end of line movement: `K -> ^ ; L -> $``

# Usage

`:call homerow#JKLsemi()` or any of the functions listed above

# About

There's [way](https://github.com/neovim/neovim/issues/277) [too](https://github.com/wikitopian/hardmode) [many](https://stackoverflow.com/q/3083928/125801) [philosophies](https://www.reddit.com/r/vim/comments/pu71n/remap_hjkl_to_jkl_anyone/) on what is the *ideal* set of bindings for arrow-like movement in vim and even the [historical reasons](http://www.catonmat.net/blog/why-vim-uses-hjkl-as-arrow-keys/) behind the default.  
To me they are all wrong and `↓↘→+P` is the only right answer.

So instead of being forced to one default or the other, give this plugin a try, enable a different configuration for a while and if it works for you, GREAT!  
If it doesn't, try something else. If none works for you, make a new one and submit a pull request with your ideal configuration.

# Contributing

If you have strong opinions about one particular arrangement of bindings, open a pull request with your proposal.  
Anything goes as long as it respects the function pattern above.  
Additional suffixes are also welcome.
