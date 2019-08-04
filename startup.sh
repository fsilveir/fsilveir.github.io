#!/bin/bash


# MAIN function
main() {
    TARGET=$1
    start_jekyll $TARGET
}

start_jekyll() {
    if [[ ${1} = "" ]] ; then
        msg_usage
    else
        for ARG in "$@"
        do
            if [[ ${ARG} = "prod" ]] ; then
                rm -rf _config.yml &&\
                ln -s _config.yml.prod _config.yml &&\
                bundle exec jekyll liveserve
            elif [[ $ARG = "dev" ]]; then
                rm -rf _config.yml &&\
                ln -s _config.yml.dev _config.yml &&\
                bundle exec jekyll liveserve
            else
                msg_usage
            fi
        done
    fi
}

msg_usage() {
    echo "You did not specify a valid command or failed to pass the proper options. Exiting!"
    echo "type 'dev' or 'prod' as an argument to start."
    echo ""
    exit 1
}

# ---------------------------------------------------------------------------------------------------
main "$@"