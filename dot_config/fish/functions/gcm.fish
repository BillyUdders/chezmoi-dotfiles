function gcm -d "Git checkout main | master"
    for branch in main master
        if git switch $branch 2>/dev/null
            git pull
            return
        end
    end
    return 1
end
