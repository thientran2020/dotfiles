function fish_prompt
  set -l last_status $status
  set -l cmd (prompt_pwd)

  if not test $last_status -eq 0
    set_color --bold white -b red
    echo -n ' ! '
    set_color normal
  end

  # Display current path
  set_color black -b green
  echo -n " 🍒/$(basename $(dirname $PWD))/$(basename $PWD) "

  # Show git branch and dirty state
  set -l git_branch (command git symbolic-ref HEAD 2> /dev/null | sed -e 's|^refs/heads/||')
  set -l git_dirty (command git status -s --ignore-submodules=dirty 2> /dev/null)
  if test -n "$git_branch"
    if test -n "$git_dirty"
      set_color purple -b black
      echo -n " 🔰🚀🌱 ($git_branch) 🔥 "
    else
      set_color cyan -b black
      echo -n " 🔰🚀🌱 ($git_branch) 🔥 "
    end
  end

  # Add a space
  set_color normal
  echo -e '\n ➡ '

  # Set of emojis
  # 🥑🍄🔥💚🥤🍵🍓🍀🥝🍉🍒
end

function fish_right_prompt -d "Write out the right prompt"
   #date
end

alias k="kubectl"
set -g theme_color_scheme solarized-dark
set -g theme_newline_cursor yes
set -g theme_title_display_user yes
set -g theme_title_display_process yes
set -g theme_display_cmd_duration yes
