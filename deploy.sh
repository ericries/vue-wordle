#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# if you are deploying to a custom domain
#echo 'encandle.org' > CNAME

# navigate into the build output directory
cd dist


git add --all
git commit -m "Deploy to gh-pages"
git push origin gh-pages


cd -
