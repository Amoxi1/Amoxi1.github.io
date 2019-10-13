#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm install

npm run build

# 进入生成的文件夹
cd docs/.vuepress/dist


#创建.nojekyll 防止Github Pages build错误
touch .nojekyll

git init
git add -A
git commit -m 'deploy'

# Push source and build repos.
git push -f "https://${access_token}@github.com/Amoxi1/Amoxi1.github.io.git" master:master

# Come Back up to the Project Root
cd ..
