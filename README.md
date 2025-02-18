# Data for Starccato

- [*training*](https://starccato.github.io/data/training): Contains the training dataset of stellar core collapse GW signals (obtained from Richers et al, 2017, https://zenodo.org/record/201145)
- [*weights*](https://starccato.github.io/data/weights/): Contains the trained neural net weights


### INSTRUCTIONS TO UPDATE

To prevent bloating of the repo, we will need to delete all the commit history but keep the code in its current state. We can do this by

1. Checkout/create orphan branch (this branch won't show in git branch command)
2. Add all the files to the newly created branch
3. Commit the changes
4. Delete main (default) branch (this step is permanent)
5. Rename the current (orphan) branch to main
6. Force update your remote repository

```
starccato_train --outdir weights/ --epochs 128
git checkout --orphan latest_branch
git add -A
git commit -am "update data"
git branch -D main
git branch -m main
git push -f origin main
```

This will *not keep your old commit history*.
Now you should only see your new commit in the history of your git repository.
