function __pip
  set pip (which $argv[1])
  set n (count $argv)
  if test $n -gt 1
    switch $argv[2]
      case install list
        eval $pip $argv[2] --user $argv[$n..-2]
      case '*'
        eval $pip $argv[$n..-1]
    end
  else
    eval $pip
  end
end
