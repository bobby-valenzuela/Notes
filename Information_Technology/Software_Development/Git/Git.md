<https://dev.to/lydiahallie/cs-visualized-useful-git-commands-37p1>

<https://youtu.be/ecK3EnyGD8o>

<img src="./media/image1.png" style="width:6.5in;height:3.47083in"
alt="Timeline Description automatically generated" />

# Installtion

**One method**

install git

```bash


sudo curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo
apt-key add -

sudo sed -i s/deb.debian.org/archive.debian.org/g /etc/apt/sources.list

sudo sed -i
's|security.debian.org|archive.debian.org/debian-security/|g'
/etc/apt/sources.list

sudo sed -i '/stretch-updates/d' /etc/apt/sources.list

sudo sed -i s/deb.debian.org/archive.debian.org/g
/etc/apt/sources.list.d/backports.list

sudo apt update

sudo apt install git
```

**Alertnatives**

Can also use PPAs

# Configuration

- **Exiting error screen**: Colon (Shift + comma ) + wq (**:wq**).


**Get remote url (repo)**

```bash
git config --get remote.origin.url
```

<br />

**Set remote url (repo)**

```bash
git remote set-url origin new.git.url/here
```

<br />



**Get default username (local and global)**
```bash
git config --get user.name
```

```bash
git config --global --get user.name
```

<br />


**Get default email (local and global)**

```bash
git config --get user.email
```

```bash
git config --global --get user.email
```


<br />

**Set default username (local and global)**

```bash
git config user.name "Your Name"
```

```bash
git config --global user.name "Your Name"
```

<br />


**Set default email (local and global)**

```bash
git config user.email <%22yourname@example.com%22com>
```

```bash
git config --global user.email "yourname@example.com"
```

<br />


**Enabled colourful output**

```bash
git config --global color.ui auto
```

<br />


**Set alias for command**

```bash
git config --global alias.ac “commit –am”
```

```bash
git ac “msg here!”
```

<br />


**Prevent pushing to master**

```bash
git config branch.master.pushRemote \<REPO\>
```

```bash
git config branch.master.pushRemote no_push
```

<br />


- *Note: You can check your (hidden) **gitconfig** file for these
  changes*

- <img src="./media/image2.png" style="width:1.54411in;height:0.23565in"
  alt="A black screen with white text Description automatically generated with low confidence" />

- <img src="./media/image3.png"
  style="width:2.94722in;height:0.83836in" />

> *If you can push to master it would look like this*

- <img src="./media/image4.png" style="width:3.75052in;height:0.81261in"
  alt="A black background with white text Description automatically generated with low confidence" />

- ***Editing config file:** Global settings may have “global” in square
  brackets but local changes won’t have “local” – they will just be kept
  as-is. For example. Editing the user details would look like this*

  - <img src="./media/image5.png" style="width:3.88857in;height:0.83671in"
    alt="Graphical user interface, text Description automatically generated" />

  - *Where you would do this same in the terminal as…*

    - *git config user.email \<myemail\>*

# General and Logging

- **Show git reflog**

  ```bash
  git reflog
  ```

- **Point local repo to remote repo**

```bash
git config --global user.name "Your Name"
```

- **Clone remote repo to local directory**

  - ```git clone \<repo url\>```

- **Log: Log x number (5) of last commits**

  - ```git log –n 5 –oneline```

  - <img src="./media/image6.png" style="width:4.0556in;height:1.43883in"
    alt="Text Description automatically generated" />

- **Log: Log x number (25) of last commits – prettify**

  - `git log -n 25 --decorate --graph --oneline`

- **Log: Log x number (5) of last commits – prettify**

  - `git log -n 5 --decorate --graph --oneline`

  - <img src="./media/image7.png" style="width:5.79037in;height:1.56513in"
    alt="Text Description automatically generated" />

- Log: Activity in last week/by author

  - `git log --oneline --after="last week"`

  - `git log --oneline --after="last week" --author="Bobby Valenzuela"`

- Log: Show commits and their code changes

  - `git log -p`

- View differences in file (unstaged changes)

  - `git diff
`
- View differences in file (staged changes)

  - `git diff --staged`

- View differences in file (unstaged changes) – side-by-side

  - `git difftool -y \<file\>`

- Log since some date

  - `git log --pretty=medium --after "Tue Jan 31 2023"`

# Branches 

- **Create branch**

  - `git branch \<branchname\>`

- **Create & switch to branch**

  - `git checkout –b branchname`

- **Switch to previously checked-out branch**

  -` git checkout –`

- **Show current branch**

- `git branch | grep -E ‘\*’`

- or…

- `git branch –show-current
`
- **Go to previous branch**

-` git checkout -`

- **Merge a branch into master**

  - `git merge \<branchname\>`

    - *Can’t be on merging branch.*

- **Renaming local branch to the new name**

> `git branch -m \<old-name\> \<new-name\>`

- **Checkout branch starting at a specific commit**

  - `git branch \<branchname\> \<commit hash\>`

- **Get remote branch with changes unstaged**

  - `git pull origin myremotebranch –no-commit`

  - `git pull`

  - *This is the same as **git fetch ＜remote＞** followed by **git
    merge origin/＜current-branch＞**.*

- **Pull master branch to local**

  - `git pull origin master`

<!-- -->

- ***Branches -undoing***

  - **Delete a local branch:**

    - `$ git branch -d localBranchName`

  - **Show branch history:**

    - `$ git show-branch`

    - Or…

    - `$ git show-branch \<Branch name\>`

  - **Show branch history:**

    - git show-branch
`
    - \# you can use . instead of file_path to unstage all staged files.

    git restore --staged \<file_path\>

- **Branch tracking**

  - **Create new local branch which tracks a remote branch**

    - git branch --track \<new_branch\> origin/\<remote_branch\>

    - or… *(preferred because this creates AND checks out the branch)*

    - git checkout --track origin/\<remote_branch\>

  - **Set tracking on existing branch to remote branch**

    - git branch --set-upstream-to=origin/\<local branch\> \<remo\>

    - git branch --set-upstream-to=origin/DEV2-61 DEV2-61

- <img src="./media/image8.png" style="width:6.5in;height:4.42014in"
  alt="A picture containing graphical user interface Description automatically generated" /><img src="./media/image9.png" style="width:6.5in;height:3.32083in"
  alt="Graphical user interface, text Description automatically generated" />

- <img src="./media/image10.png" style="width:6.5in;height:2.77153in"
  alt="Graphical user interface, text, application Description automatically generated" />

# Commits -undoing

- **Remove last commit** (keep changes - back to staged/uncommitted)

  - $ git reset --soft HEAD~1

  - *Or you can specify a commit hash to go back to*

  - $ git reset --soft 2b504bee

- **Remove last commit (lose changes)**

  - $ git reset --hard HEAD~1

  - *Or you can specify a commit hash to go back to*

  - $ git reset --soft 2b504bee

- **Unstage all staged changes**

  - $ git reset index.html

  - $ git reset .

- **Undo all unstaged changes (pre 2.23)**

  - $ git checkout -- index.html

  - $ git checkout -- .

- **Undo all unstaged changes (git 3.0+) \[Might need to download
  snap\]**

  - $ git restore index.html

  - $ git restore .

- **Revert a commit and stage changes**

  - git revert \<hash\> --no-commit -–no-edit

- **Revert a merge commit and stage changes**

  - git revert \<hash\> -m 1 --no-commit

  - *“-m 1”: means restore to state “one” commit prior.*

- *\`* **Rebase local changes**

  - rebase \<branch\>

    - *Keeps a linear git history free of merge commits. Should only be
      done for editing local changes. **Do not do for any commits
      already pushed to repo.***

- **Make changes and apply them to last commit (such as editing commit
  message)**

  - git commit --amend

  - *Quite literally overwrites previous commit.*

  - *If ran with no changes made, will default to letting you change
    description.*

  - ***\[WARNING\]**: Avoid amending commits that have already been
    pushed to a repo.*<img src="./media/image11.png"
    style="width:5.55691in;height:2.80577in" />

# Cherrypicking

<img src="./media/image12.png" style="width:6.5in;height:6.79514in"
alt="Graphical user interface, application Description automatically generated" />\`

- **Cherrypick and no commit (save code to stage)**

  - git cherry-pick –no-commit \<hash\>

    - *If you want to commit every UP TO and including specific commit,
      I’ve had success cherry-picking in order all the commits
      individually. Or.. see below*

- **Cherrypick succession of commits (no commit)**

  - git cherry-pick –no-commit \<from hash\>^..\<to hash\>

  - *This does all at once – not in succession – so could lead to
    conflicts. ([see
    here](https://jira.atlassian.com/browse/SRCTREE-1486)) . If so just
    abort and try again.* git cherry-pick --abort

> *Other ways to do this… - just so all individually in order.*

- git cherry-pick –no-commit \<hash1\> \<hash2\> \<hash3\> …

<!-- -->

- **Cherrypick succession of commits (no commit) where first commit is
  not included**

  - git cherry-pick –no-commit \<from hash\>..\<to hash\>

  - *This does all at once – not in succession – so could lead to
    conficlits. ([see
    here](https://jira.atlassian.com/browse/SRCTREE-1486)) Other ways to
    do this… - just so all individually in order. If so just abort and
    try again.* git cherry-pick --abort

# Committing

- **Stage file(s)**

  - git add filename

  - git add –A

    - *Stage all*

- **Stage only some changes to a file (step through changes)**

  - git add –p \<filename\>

  - *”p” – “prompt” for changes to stage.*

- **Remove something from git index**

  - *Useful in case you’ve committing something and now that file/folder
    will not be respected by the .gitignore file. Remove that item from
    the git index with git rm –cached \<item\> then push up your
    .gitignore file.*

  - git rm -r --cached \<folder\>

  - git add .gitignore

  - git commit -m "fixed gitignore"

  - *Note: others who pull down from the repo will .have this
    file/folder removed altogether – use catiously. Or, just have
    others*

- **Commit all changes**

  - *From local master to remote master*

  - git commit filename –m “message here”

- **Stage and Commit all changes**

  - *From local master to remote master*

  - git commit –am “message here”

- **See what’s about to push (Committed not yet pushed)**

  - git diff --stat --cached \[remote/branch\]

  - example:

  - git diff --stat --cached origin/master

- **Change the msg of the last commit**

  - git push –-amend –m “updated msg!”

- **Include more staged changes to last commit**

  - Git add .

  - git commit –-amend –m “updated msg!”

- **Push local changes to remote repo**

  - git push –u origin master

  - Note: -u is short for upstream

  - git push –u origin main

  - git push

- **Push local changes to remote repo on new branch**

  - git push –-set-upstream origin newbranchname

  - Note: Here, origin specifies origin of this commit (local working
    branch)

- **Push Single commit**

  - git push urlto e55b5f:master

  - <img src="./media/image13.png" style="width:4.26889in;height:0.73801in"
    alt="A picture containing graphical user interface Description automatically generated" />

# Stashing

- **Save stash annotated with a message**

  - git stash push –m Some mewssage

- **Save stash annotated with a message**

  - git stash save my message...

- **Stash a single file (no msg)**

  - git stash save –- myfile.py

- **List of current stashes**

  - git stash list

- **Show most recent stash content**

  - git stash show -p

- **Show stash content by index**

  - git stash show –p stash@{2}

  - git stash show –p –-index 2

- **Show most recent stash by index (preferred)**

  - git stash show –p 2

- **Delete entire stash**

  - git stash clear

- **Delete single stash**

  - git stash drop stash@{3}

  - <img src="./media/image14.png"
    style="width:4.80042in;height:0.3917in" />

- **Apply and Pop:** Can use curly brace or index notation

- **Apply a specific stash and remove from stash list**

  - git stash pop --index 2

- **Apply the most recent stash**

  - git stash apply

- **Apply a specific stash**

  - git stash apply --index 2

- **Undelete a specific stash**

  - git fsck --no-reflog | grep dangling | cut -d " " -f 3

  - *^ The above will return a hash and you can **git stash apply** that
    hash id*

More on git stash

<https://www.youtube.com/watch?v=Ie1EXmd9k0s>

<https://www.technical-recipes.com/2019/a-git-stash-cheat-sheet/>

<https://git-scm.com/docs/git-stash>

<https://www.freecodecamp.org/news/useful-tricks-you-might-not-know-about-git-stash-e8a9490f0a1a/>

<img src="./media/image15.png" style="width:6.23387in;height:5.29213in"
alt="Graphical user interface Description automatically generated with medium confidence" />

<img src="./media/image16.png" style="width:6.27554in;height:6.57557in"
alt="Graphical user interface, text, application Description automatically generated" />

# Reset local master to state of remote:

git fetch origin && git reset --hard origin/master && git clean -df

Pull down latest, resync, clean up artifacts.

<img src="./media/image17.png"
style="width:4.55722in;height:1.63641in" />

<img src="./media/image18.png" style="width:3.75141in;height:1.67811in"
alt="A black rectangle with white text Description automatically generated" />

Non-master branch

git fetch origin && git reset --hard origin/DEV2-226 && git clean -df

git fetch origin && git reset --hard origin/ PublicAPIHive5_MAIN && git
clean -df

# Rebasing your branch against the master branch

***On master***

git pull

git checkout \<your-branch\>

git rebase master

***Resolve conflicts if any then run…***

git add \<conflicted-file\>

git rebase –-continue

git push origin \<your-branch\> --force

Using the --force flag is necessary because the commit history of your
branch has been rewritten due to the rebase.

<img src="./media/image19.png" style="width:6.5in;height:3.19097in"
alt="A screen shot of a computer Description automatically generated with medium confidence" />

Note: Rebasing should be used with caution, especially when
collaborating with others on a shared branch. Rewriting commit history
can cause issues if other developers have based their work on the
original commits. It is recommended to communicate and coordinate with
your team before performing a rebase.

# Interactive Rebase

<img src="./media/image20.png" style="width:6.5in;height:3.97917in" />

# Squashing Commits with interactive rebase

**<u>On your local branch</u>**… we'll call git **rebase-i master**.
When we call an interactive rebase, a text editor opens with a list of
all the selected commits from the oldest to the most recent. By changing
the first word of each line, we can select what we want to do with the
commits.

<img src="./media/image21.png" style="width:6.5in;height:3.84514in"
alt="A picture containing text, screenshot, software, font Description automatically generated" />

The default action here is pick which takes the commits and rebases them
against the branch we selected. This is what we do with git rebase in an
earlier video when we called it without the dash i flag. But now we can
change the action to something else. The comments in the file tells all
the different commands we can use for our commits. For example, we can
reword a commit message keeping the changes as they are but modifying
the commit message. We can also edit the commit to add or remove changes
from it. We have two options for combining commits, squash and fix up.
In both cases, the contents of the selected commit are merged into the
previous commit in the list. The difference is what happens with the
commit messages. When we choose squash, the commit messages are added
together and an editor opens up to let us make any necessary changes.
When we choose fix up, the commit message for that commit is discarded.
For our example, we want to use squash so that we can combine both
commits but also modify the commit description. So let's change the pick
command in the second line to squash it into the first one, then we'll
save and exit the editor as usual.

<img src="./media/image22.png" style="width:6.5in;height:0.7125in" />

S

<img src="./media/image23.png" style="width:6.5in;height:2.32778in"
alt="A screenshot of a computer Description automatically generated with medium confidence" />

Once we've told git that we want to squash a commit unto the one before
it, we're given another file to edit. In this case, it's the combined
commit message. As usual, git shows us some helpful information in the
comments including which files are modified and what commits are being
combined. We want to improve the description by adding more info about
our change. Let's add we're including an example use case.

<img src="./media/image24.png" style="width:6.5in;height:1.67361in"
alt="A screen shot of a computer Description automatically generated with medium confidence" />

Git push –force

Using the --force flag is necessary because the commit history of your
branch has been rewritten due to the rebase.

# Squash last n commits without rebase

<img src="./media/image25.png" style="width:6.5in;height:6.50694in"
alt="A screenshot of a chat Description automatically generated" />

# Adding aliases to git commands

<img src="./media/image26.png" style="width:6.5in;height:4.46736in" />

# Creating diff files

**<u>From unsaved changes</u>**

git diff \> my.diff

**<u>From old/new files</u>**

<img src="./media/image27.png" style="width:6.5in;height:0.61806in" />

The “u” flag makes the output more user-friendly. This is also called a
“patch” file.

The **patch** command can be used to apply the changes in a diff file to
your original file.

<img src="./media/image28.png" style="width:6.5in;height:0.52014in" />

The patch command is better than just sending the new file, as the old
file may have changes already made and we might only want to update the
relevant lines per the diff file.

# Git blame

Using **git blame** to find author, commit, and date for every line of
code

git blame \<file\>

<img src="./media/image29.png" style="width:6.5in;height:2.07014in"
alt="Text Description automatically generated with medium confidence" />

<img src="./media/image30.png" style="width:4.73635in;height:1.40979in"
alt="Text Description automatically generated" />

**Line Number based**

git blame header1.pl -L 31023,3105

**Regex Based**

git blame header1.pl -L ^/sub\\sget_resources_from_accountid/

With single-quotes:

git blame header1.pl -L '/^sub get_resources_from_accountid/'

# Working with remote git hosting services

<img src="./media/image31.png" style="width:6.5in;height:3.5375in"
alt="Graphical user interface, text, application Description automatically generated" />

General:

- Cloud-based Git services with GUI (GitHub, GitLab, BitBucket)

- The **HEAD** always points to the current branch you are in (or
  checking out)

- <https://www.git-tower.com/>

- **Net Ninja Tutorial**:
  <https://www.youtube.com/playlist?list=PL4cUxeGkcC9goXbgTDQ0n_4TBzOO0ocPR>

<img src="./media/image32.png" style="width:6.5in;height:4.59165in"
alt="https://ihatetomatoes.net/wp-content/uploads/2020/04/git-cheat-sheet-ihatetomatoes.png" />

# Tagging (pushing new release version)

<https://www.youtube.com/watch?v=govmXpDGLpo>

# Forking a repo and setting up

For this exercise, you need to fork an existing
repository: google/it-cert-automation-practice.

- Open [Github](https://github.com/join). If you don't already have a
  Github account, create one by entering a username, email, and
  password. If you already have a Github account proceed to the next
  step.

- Log in to your account from the [Github](https://github.com/) login
  page.

A fork is a copy of a repository. Forking a repository allows you to
freely experiment with changes without affecting the original project.

Forking a repository is a simple two-step process. We've created a
repository for you to practice with!

- On GitHub, navigate to
  the [google/it-cert-automation-practice](https://github.com/google/it-cert-automation-practice) repository.

- In the top-right corner of the page, click Fork.

<img src="./media/image33.png" style="width:5.32153in;height:1.46111in"
alt="A screenshot of a computer Description automatically generated with medium confidence" />

That's it! Now, you have a fork of the
original google/it-cert-automation-practice repository.

<img src="./media/image34.png" style="width:6.5in;height:2.0125in"
alt="A screenshot of a computer Description automatically generated with medium confidence" />

First, clone the repository using the following command:

git clone
https://github.com/\[git-username\]/it-cert-automation-practice.git

**Note:** If you enabled two-factor authentication in your Github
account you won't be able to push via HTTPS using your account’s
password. Instead you need to generate a personal access token. This can
be done in the application settings of your Github account. Using this
token as your password should allow you to push to your remote
repository via HTTPS. Use your username as usual. Note down this
personal access token as we would need it further in the lab. For more
help to generate a personal access token,
click [here](https://help.github.com/en/github/authenticating-to-github/creating-a-personal-access-token-for-the-command-line#creating-a-token).

Output:

<img src="./media/image35.png" style="width:6.5in;height:0.80139in" />

Go to the it-cert-automation-practice directory using the following
command:

cd ~/it-cert-automation-practice

First, verify that you have already setup a remote for the upstream
repository, and an origin.Type the following command and
press **Enter**. You'll see the current configured remote repository for
your fork.

git remote -v

Output:

<img src="./media/image36.png" style="width:6.5in;height:0.47222in" />

In terms of source control, you're "**downstream**" when you copy
(clone, checkout, etc) from a repository. Information is flowed
"downstream" to you.

When you make changes, you usually want to send them back "**upstream**"
so they make it into that repository so that everyone pulling from the
same source is working with all the same changes. This is mostly a
social issue of how everyone can coordinate their work rather than a
technical requirement of source control. You want to get your changes
into the main project so you're not tracking divergent lines of
development.

Setting the upstream for a fork you have created using the following
command:

git remote add upstream
https://github.com/\[git-username\]/it-cert-automation-practice.git

To verify the new upstream repository you've specified for your fork,
type git remote -v again. You should see the URL for your fork as
origin, and the URL for the original repository as upstream.

git remote -v

Output:

<img src="./media/image37.png" style="width:6.5in;height:0.70903in" />

**Committing**

<img src="./media/image38.png" style="width:6.5in;height:3.38125in"
alt="A picture containing text, screenshot, font, number Description automatically generated" />

**Creating a PR**

Then, from GitHub, create a pull request from your forked
repository \[git-username\]/it-cert-automation-practice that includes a
description of your change. Your branch improve-username-behavior is now
able to merge into the master branch. It should look like the image
below:

<img src="./media/image39.png" style="width:5.33056in;height:4.30417in"
alt="PR" />

After initializing a pull request, you'll see a review page that shows a
high-level overview of the changes between your branch (the compare
branch) and the repository's base branch. You can add a summary of the
proposed changes, review the changes made by commits, add labels,
milestones, and assignees, and **@mention** individual contributors or
teams.

Once you've created a pull request, you can push commits from your topic
branch to add them to your existing pull request. These commits will
appear in chronological order within your pull request and the changes
will be visible in the "Files changed" tab.

Other contributors can review your proposed changes, add review
comments, contribute to the pull request discussion, and even add
commits to the pull request.

You can see information about the branch's current deployment status and
past deployment activity on the "Conversation" tab.

# Git with access token

<https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token#using-a-personal-access-token-on-the-command-line>

<https://stackoverflow.com/questions/18935539/authenticate-with-github-using-a-token>

**GitHub FineGraned access token**: github_pat_XXX

**GitHub Classic Token**: ghp_XXX

# GitHub: Customize your Profile

1.  Create a new repo with the exact same name as your username. This
    creates a special used for editing your profile. Make sure this repo
    is public.

2.  Add a README.md to this repo.

    1.  Populate readme with output from here:
        <https://www.profileme.dev/create-profile>

# Troubleshooting

I am receiving this **'This repository moved. Please use the new
location'** when I use git push this appears after I am changing my user
name on Github.

Do this to update your repo's address in your local repository. Replace
new_username and repository_name as necessary.

**git remote set-url origin <git@github.com:n>**

## Bitbucket – using app password

git remote set-url origin
https://USERNAME:APP_PASSWORD@bitbucket.org/OWNER/REPO.git

<img src="./media/image40.png" style="width:6.5in;height:0.53056in" />

Though you are using SSH to connect…the url has to be the forward-slash
variant one gets from trying to clone via HTTPs not SSH when setting
remote connection in git

<img src="./media/image41.png" style="width:4.17383in;height:1.09033in"
alt="Graphical user interface, text, application Description automatically generated" />

Here’s me updating from user/password to new format

<img src="./media/image42.png" style="width:6.5in;height:0.89236in"
alt="A screenshot of a computer program AI-generated content may be incorrect." />

Or setting it as so

<img src="./media/image43.png" style="width:6.5in;height:0.17708in" />

<img src="./media/image44.png" style="width:6.5in;height:0.20208in" />

## Undoing things

**<u>Soft reset</u>**:
<https://www.git-tower.com/learn/git/faq/undo-last-commit/>

**<u>Git revert</u>**: undoes a particular commit

<https://www.git-tower.com/learn/git/commands/git-revert/>

Push one commit:

<http://blog.dennisrobinson.name/push-only-one-commit-with-git/>

<https://youtu.be/RIYrfkZjWmA>

<img src="./media/image45.png" style="width:6.5in;height:3.52847in"
alt="Diagram Description automatically generated" />

## Undoing Push to Master

1.  While on local master branch**…** undo last commit (so you can stash
    those changes later)

    1.  $ git reset --soft HEAD~1

    2.  This undoes your last commit and moves the changes from that
        commit back to ‘staged’.

2.  Now that the changes from your last commit are staged again you can
    **stash your changes**

    1.  $ git stash save nameofcoolstash

    2.  Your local master branch should be how it was before you made
        any changes.

3.  Use git pull to pull the latest push (that you pushed to master)
    down to your local master branch.

    1.  git pull

    2.  This also adds your latest commit hash into the git log (this is
        the commit where you pushed to master).

4.  List the log of your past commit. (Just showing last five with this
    code)

    1.  git log –n 5 –oneline

5.  Find (and copy) the hash of the commit where you pushed to master

    1.  Should be the first (most recent) commit

6.  Use git revert to undo the commit

    1.  git revert \<hash\> --no-commit -–no-edit

    2.  <img src="./media/image46.png"
        style="width:2.96916in;height:0.28129in" />

        1.  –no-commit = keep reverted changes staged

        2.  –no-edit = keep default commit msg

    3.  This will not merely undo but rather inverse the changes you
        pushed to the master branch. So this is a set of changes such
        that your previously commit will effectively be cancelled out by
        these changes once you commit.

7.  Now your local master branch will have all reverted stuff

8.  On your local master branch, stage and commit these changes.

    1.  Add some msg like ‘undoing push to master’

    2.  git add -A

    3.  git commit -m "Reverting push to master"

    4.  git push

9.  Now, run git pull again – everything should be back the way it was

10. Now, checkout a new branch!

11. Unstash those changes

## Merge Conflict

<https://www.youtube.com/watch?v=HosPml1qkrg>

<https://support.atlassian.com/bitbucket-cloud/docs/resolve-merge-conflicts/>

Basically, once you’ve pushed your local branch to remote (origin -\>
master/main) a new remote branch will be created and will merge your
local code with the remote code. If some of the newer remote code
conflicts with the local code you’re trying to push then you will have a
merge conflict. Chances are you won’t see this on your local branch as
you aren’t aware of the newer code that’s in the repo.

In order to see this, you’ll need to pull down the remote version of
your local branch since this is the branch which contains the merge
conflict. This will pull down the merge conflict and you can fix before
pushing up again.

**mybranch** – is the local branch that we were on when we initially
pushed from.

**mybranch\*** – is the remote branch that our local branch was pushed
to. This remote branch contains the merge conflict.

Note: Both branches will show same name, adding asterisk to reference
remote instance.

1.  On local system on master branch run git pull to update

2.  Rename old branch to some name

> git branch –m “oldname” “oldbranch_conflicted”

3.  On your local system, create and checkout **oldbranch** (if not
    already in it).

4.  Use git pull to pull down merge conflict from **oldbranch\*** into
    **oldbranch**

> Format: git pull \<into\> \<from\> --no-commit
>
> git pull origin oldbranch –no-commit

5.  Fix conflict

6.  Push to same branch name

    - Git push origin oldbranch

    - Note: og branch will still be saved locally

**Troubleshooting**

If you see this…

<img src="./media/image47.png" style="width:6.5in;height:0.67222in" />

Make sure the branch you’re on matches the name of the branch you are
pushing to.

### Resolving in CLI

<https://stackoverflow.com/questions/161813/how-do-i-resolve-merge-conflicts-in-a-git-repository>

git mergetool

\[This command\] doesn't necessarily open a GUI unless you install one.
Running git mergetool for me resulted in vimdiff being used. You can
install one of the following tools to use it
instead: meld, opendiff, kdiff3, tkdiff, xxdiff, tortoisemerge, gvimdiff, diffuse, ecmerge, p4merge, araxis, vimdiff, emerge.

Below is a sample procedure using vimdiff to resolve merge conflicts,
based on [this
link](http://www.rosipov.com/blog/use-vimdiff-as-git-mergetool/#fromHistor).

1.  Run the following commands in your terminal

2.  git config merge.tool vimdiff

3.  git config merge.conflictstyle diff3

4.  git config mergetool.prompt false

> This will set vimdiff as the default merge tool.

5.  Run the following command in your terminal

6.  git mergetool

7.  You will see a vimdiff display in the following format:

> <img src="./media/image48.png" style="width:4.92647in;height:2.49969in"
> alt="A diagram of a remote control Description automatically generated with medium confidence" />
>
> These 4 views are

- **LOCAL:** this is the file from the current branch

- **BASE:** the common ancestor, how this file looked before both
  changes

- **REMOTE:** the file you are merging into your branch

- **MERGED:** the merge result; this is what gets saved in the merge
  commit and used in the future

> You can navigate among these views using ctrl+w. You can directly
> reach the MERGED view using ctrl+w followed by j.
>
> More information about vimdiff navigation
> is [here](https://stackoverflow.com/questions/4556184/vim-move-window-left-right) and [here](https://stackoverflow.com/questions/27151456/how-do-i-jump-to-the-next-prev-diff-in-git-difftool).

8.  You can edit the MERGED view like this:

    - If you want to get changes from REMOTE

    - :diffg RE

    - If you want to get changes from BASE

    - :diffg BA

    - If you want to get changes from LOCAL

    - :diffg LO

9.  Save, Exit, Commit, and Clean up

> :wqa save and exit from vi
>
> git commit -m "message"
>
> git clean Remove extra files (e.g. \*.orig). **Warning:** It will
> remove all untracked files, if you won't pass any arguments.
