#!/usr/bin/env sh

# abort on errors 
# 發生錯誤時執行終止指令
set -e

# build 
# 打包編譯
npm run build

# navigate into the build output directory
# 移動到打包資料夾下，若你有調整的話打包後的資料夾請務必調整
cd dist

# place .nojekyll to bypass Jekyll processing
echo > .nojekyll

# if you are deploying to a custom domain
# 部署到自定義網域
# echo 'www.example.com' > CNAME

git init
git checkout -B main
git add -A
git commit -m 'deploy'

# 部署到 https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# 部署到 https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git master:gh-pages
# 以這個專案來講就要改成這樣以下這樣，下面是走 ssh 模式
# git push -f git@github.com:kelvinLin9/metahorse.git master:gh-pages
# 除此之外，也可以改走 HTTPS 模式
git push -f https://github.com/kelvinLin9/goodnews.git main:gh-pages

cd -
