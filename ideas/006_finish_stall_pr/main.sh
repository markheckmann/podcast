# https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/reviewing-changes-in-pull-requests/checking-out-pull-requests-locally

# add upstream
git remote -v
git fetch origin pull/571/head:571_remove_media

git remote add upstream git@github.com:davidgohel/officer.git
git fetch upstream pull/571/head:571_remove_media

# look at commits
git rebase master

# run R CMD CHECK
# error in test-pptx-misc.R:111:3
# CTRL + . go to file

# make changes

# create new Pr
