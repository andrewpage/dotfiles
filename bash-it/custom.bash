ssh-add -l ~/.ssh/personal.key

alias be='bundle exec'
alias berp='be resque-pool'

export ANDROID_HOME="/Applications/android-sdk-macosx"
export GEMDEV=1

export INTERCOM_APP_ID='ju23vvqz'
export INTERCOM_API_KEY='92742b0690b4398c6b338df8c9a7ed9403094594'

alias cds='cd ~/Developer/Ship'

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

function scpt {
    origin=$1
    origin_filename=$(basename $origin)

    jumphost=$2
    destination=$3

    echo "SCPing '$origin' through jumphost '$jumphost' to destination '$destination'."

    cat < $origin | ssh $jumphost "cat > $origin_filename && scp $origin_filename $destination && rm $origin_filename"
}
