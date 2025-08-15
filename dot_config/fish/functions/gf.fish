function gf -d "Create a feature branch for JIO-x"
    set -l base_branch "rd/nsp-$argv"
    set -l branch_name $base_branch
    set count 1

    while git show-ref --verify --quiet "refs/heads/$branch_name"
        set branch_name $base_branch-$count
        set count (math $count + 1)
        echo "Incrementing branch_name to $branch_name"
    end

    git checkout -b $branch_name
    echo "Created branch: $branch_name"
end
