if type -q base16
  base16 onedark
end

if which direnv >/dev/null
  eval (direnv hook fish)
end

alias gst 'git status'

# i have never ever wanted to run ghostscript
alias gs 'git status'

set -x GEM_HOME $HOME/.gems

for path in $HOME/bin $HOME/go/bin $HOME/.yarn/bin $GEM_HOME/bin /usr/lib/go-1.12/bin /usr/lib/postgresql/11/bin
  if test -d $path
    set -x PATH $path $PATH
  end
end

set fish_color_autosuggestion 555\x1ebrblack
set fish_color_command \x2d\x2dbold
set fish_color_comment red
set fish_color_cwd green
set fish_color_cwd_root red
set fish_color_end brmagenta
set fish_color_error brred
set fish_color_escape bryellow\x1e\x2d\x2dbold
set fish_color_history_current \x2d\x2dbold
set fish_color_host normal
set fish_color_match \x2d\x2dbackground\x3dbrblue
set fish_color_normal normal
set fish_color_operator bryellow
set fish_color_param cyan
set fish_color_quote yellow
set fish_color_redirection brblue
set fish_color_search_match bryellow\x1e\x2d\x2dbackground\x3dbrblack
set fish_color_selection white\x1e\x2d\x2dbold\x1e\x2d\x2dbackground\x3dbrblack
set fish_color_user brgreen
set fish_color_valid_path \x2d\x2dunderline
set fish_greeting \x1d
set fish_key_bindings fish_default_key_bindings
set fish_pager_color_completion \x1d
set fish_pager_color_description B3A06D\x1eyellow
set fish_pager_color_prefix white\x1e\x2d\x2dbold\x1e\x2d\x2dunderline
set fish_pager_color_progress brwhite\x1e\x2d\x2dbackground\x3dcyan
