# Vítor’s dotfiles

### Install everything
```
bash -c "$(curl -fsSL 'https://raw.github.com/vitorgalvao/dotfiles/master/install.sh')"
```

### Organisation
Although this repo’s name is `dotfiles`, it doesn’t contain any. A separate app handles backup and restoration of those. This repo consists of a series of commands and files to automate setting up a new machine.

Everything is modular. The most important parts of the repo’s file structure are:

```
.
├── install.sh
├── scripts
└── files
    └── post_install_script.sh
```

`scripts` is a directory that contains various shell scripts. However, none of them will actually do anything if ran on their own: they consist of structured functions to perform various tasks. `files` contains configurations that must be applied manually, files to support the installation scripts, and a special `post_install_script.sh` to call after system setup. Finally, `install.sh` is what brings it all together in an automated fashion. It loads up all the script functions and runs them in sequence.

All the script functions are organised in logical sequence. Operations range from support to the installation as a whole (asking for details beforehand for future functions, moving `files` to a more visible location) to useful on their own. The latter is where the modularity shines.

If, say, we wish to [repeat the python setup process](https://github.com/vitorgalvao/dotfiles/blob/c353f8019e77b00ca9e3f26a18a5bb421e524b93/scripts/01_environments.sh#L6), [update homebrew head apps](https://github.com/vitorgalvao/dotfiles/blob/c353f8019e77b00ca9e3f26a18a5bb421e524b93/scripts/02_apps.sh#L20), or [reset default apps in a particular manner](https://github.com/vitorgalvao/dotfiles/blob/c353f8019e77b00ca9e3f26a18a5bb421e524b93/scripts/03_configs.sh#L5), we need only source the appropriate scripts and run the respective functions.

This allows for a flexible arrangement where we need only make sure the functions are up to date. Those we want to run outside the system setup can be built around the scripts, loading and executing the appropriate commands.

#### License
The Unlicense (Public Domain, essentially)
