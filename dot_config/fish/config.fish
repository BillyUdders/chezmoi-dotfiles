if status is-interactive
	abbr -a vim nvim
	abbr -a c clear
	abbr -a l eza -alh --group-directories-first --icons --git
	abbr -a cat bat
	abbr -a tg topgrade

	# Git
	abbr -a gs commitea status
	abbr -a gl commitea log 
	abbr -a gp git p 
	abbr -a gca commitea commit 
	abbr -a gchk git switch

	~/.local/bin/mise activate fish | source
	zoxide init fish | source
	starship init fish | source
end
