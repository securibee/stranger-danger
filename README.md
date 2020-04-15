# Stranger Danger

Two solutions, a bash script and a git hook, to help you keep tabs on your repository privileges.

## Getting started

The idea for these solutions came from a friend who didn't realize that one of their repositories was set to public.
I also find myself double checking privileges from time to time.

### Solution 1: Check local repositories

A bash script that you can pass a (parent) git directory. It'll then check if their privileges are set to private or public.

#### Usage
Run the script and pass it a directory:

```
./check_repos.sh ~/my-git-dir
```

The output will show you if your repo(s) are private or public.

### Solution 2: Git post commit hook 

We can perform an action using git's post commit hook. In this case it'll check the privileges of your working repository.

#### Usage
Run the install-post-commit.sh script and it'll set up global hooks.

```
./install-post-commit.sh
```

After each commit you'll be warned if the working repository is set to public.

Note that the hook will trigger on every commit. It'll also set your global hooks path to `$HOME/.git/hooks`
