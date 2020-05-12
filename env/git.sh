merge-staging() {
    branch=$(git symbolic-ref --short HEAD)
    git checkout staging
    git merge $branch
    git checkout $branch
    git push origin staging
}