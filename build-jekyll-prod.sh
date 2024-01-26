#!/bin/bash
rm -rf docs/*
JEKYLL_ENV=production bundle exec jekyll build --destination docs
touch docs/.nojekyll
