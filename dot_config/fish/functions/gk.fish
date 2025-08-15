function gk --description "Quick Git commit with Conventional Commit format: type(subject): description"
    if count $argv != 2
        echo "Usage: gcq <subject> <description>"
        echo "Example: gcq feat login Add login form"
        return 1
    end

    set subject $argv[1]
    set description $argv[2]

    git add .
    git commit -m "feature($subject): $description" 
    git push
end

