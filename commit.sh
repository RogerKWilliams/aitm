
# this really feels ugly & brittle.
# dependent on successfully changing directories along relative paths.

# commit to repo
git add . -A && git commit -m "commit"
git push origin master

# push to pages.
cd ../aitm-pages
git add . && git commit -m "commit"
git push origin gh-pages
cd ../aitm
