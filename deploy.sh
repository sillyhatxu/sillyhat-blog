#!/bin/bash
blogmsg="add blog : `date "+%Y-%m-%d %H:%M:%S"`"
echo "blogmsg"
git add .
git commit -m "blogmsg"
git push -u origin master


echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Build the project.
hugo # if using a theme, replace with `hugo -t <YOURTHEME>`

# Go To Public folder
cd public
# Add changes to git.
git add .

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master

# Come Back up to the Project Root
cd ..

#echo "# sillyhatxu.github.io" >> README.md
#git init
#git add README.md
#git commit -m "first commit"
#git remote add origin https://github.com/sillyhatxu/sillyhatxu.github.io.git
#git push -u origin master


#git remote get-url --all origin
#git remote add origin https://github.com/sillyhatxu/sillyhatxu.github.io.git
#git remote set-url --add origin https://github.com/sillyhatxu/sillyhat-blog.git
#git remote set-url --delete origin https://github.com/sillyhatxu/sillyhat-blog.git