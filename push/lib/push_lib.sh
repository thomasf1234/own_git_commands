

function github_compare_url {
  REMOTE_ORIGIN_URL=$(git config --list | grep remote.origin.url)
  REPOSITORY=$(echo ${REMOTE_ORIGIN_URL#*:} | cut -d '.' -f 1)
  CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)
  echo "https://github.com/$REPOSITORY/compare/$CURRENT_BRANCH"
}

function open_url {
  URL=$1
  firefox $URL & 
}

