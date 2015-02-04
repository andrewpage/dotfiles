ssh-add -l ~/.ssh/personal.key

alias be='bundle exec'
alias berp='be resque-pool'

export ANDROID_HOME="/Applications/android-sdk-macosx"
export GEMDEV=1

function playground {
    heroku $@ --app shipio-playground
}

function uat {
    heroku $@ --app shipio-uat
}

function staging {
    heroku $@ --app shipio-staging
}

function production {
    heroku $@ --app shipio-production
}
