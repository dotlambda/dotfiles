if test -x '(which fortune)' -a -x '(which cowthink)' -a -x '(which lolcat)'
  function fish_greeting
    fortune -s | cowthink -f tux -W (math (stty size | cut -d " " -f 2)-3) | lolcat
  end
else
  function fish_greeting
  end
end
