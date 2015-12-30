function fish_greeting
	fortune -a | cowthink -f tux -W (math (stty size | cut -d " " -f 2)-3) | lolcat
end
