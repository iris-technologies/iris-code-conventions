cd custom-code/externals/iris-php-utils

git add --all
git commit -m "change iris-php-utils"
git push origin HEAD:master

cd ../../..

cd custom-code/database

git add --all
git commit -m "change iris-php-utils"
git push origin HEAD:master

cd ../..

cd custom-code/iris-defines

git add --all
git commit -m "change iris-defines"
git push origin HEAD:master

cd ../..

git add --all
git commit -m "change Iris"
git push
