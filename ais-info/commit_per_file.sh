# pull
git pull
# credential caching, it will be cached for 7200 seconds (2 hour) .
# git config --global credential.helper 'cache --timeout 7200'
# get changed files
files=`git diff --name-only`
git pull
for file in $files; do
  echo "Adding file: $file"
  git add $file
  git commit -m "build $file"
  git push
  echo "sleep 5 minutes"
  sleep 300
  echo "done ------------------"
done
