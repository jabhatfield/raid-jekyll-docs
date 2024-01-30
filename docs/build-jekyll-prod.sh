#!/bin/bash
rm -rf docs/*
echo "ga_tracking: $RAID_JEKYLL_GA" >> _config.yml
JEKYLL_ENV=production bundle exec jekyll build --destination docs
sed -i '' -e '$d' _config.yml
touch docs/.nojekyll
