# Stranger Danger

Two solutions to help you keep tabs on your repository privileges.

## Getting started

The idea for these solutions came from a friend who didn't realize that one of their repositories was set to public.
I also find myself double checking privileges from time to time.

### Solution 1: Check local repositories

A bash script that you can pass a directory that contains your git repositories.
It'll then check if their privileges are set to private or public.

#### Usage
Run the script and pass it a directory:

```
./check_repos ~/my-git-dir
```

The output will show you if your repo(s) are private or public.

### Solution 2: Git post commit hook 

We can perform an action using git's post commit hook. In this case it'll check the privileges of your working repository.

#### Usage
Run the install-post-commit.sh script and it'll set up global hooks.

```
./install-post-commit.sh
```

Note that the hook will trigger on every commit. It'll also set your global hooks path to `$HOME/.git/hooks`
