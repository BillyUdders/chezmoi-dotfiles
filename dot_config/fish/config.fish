if status is-interactive
    # Misc.
    abbr -a vim nvim
    abbr -a c clear
    abbr -a l eza -lahm --group-directories-first --icons --git
    abbr -a cat bat
    abbr -a tg topgrade
    abbr -a neorg "nvim -c 'Neorg index'"

    # Git 
    abbr -a gs git status
    abbr -a gsv git status -v
    abbr -a gl commitea log
    abbr -a gca commitea commit
    abbr -a gchk git switch
    abbr -a gk git save
    abbr -a grh git reset --hard
    abbr -a gp git p

    # Kustomize
    abbr -a k kustomize

    # Terraform
    abbr -a tf terraform
    abbr -a tfa terraform apply
    abbr -a tfp terrform plan

    ~/.local/bin/mise activate fish | source
    zoxide init fish | source
    starship init fish | source
end
