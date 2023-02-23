# To create a Git repository:

1.  Log into your Synology server via SSH as root or admin.
2.  Change directory to /volumeX, where X is the volume number, to create a folder. For example, "git_repos". The permission of the folder will be the same as Linux.
3.  In the folder, run git init to create an empty repository.
4.  After the repository is created, a Git client user can enter the following command to access this repository:
    git clone ssh://[Git users]@[Your Synology server's IP address or hostname]/[Git repository path]

```
ssh nelson@192.168.1.164
cd /volume1/git/
sudo git --bare init git-setup.git
sudo chown -R nelson:users git-setup.git
cd git-setup.git
git update-server-info

```

# Add Nas as remote for local repo

1. Clone repo from NAS

```
git clone ssh://nelson@192.168.1.164/volume1/git/git-setup.git
```
