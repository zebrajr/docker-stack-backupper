# docker-stack-backupper
### Overview

This toolkit comprises a set of Bash scripts designed to facilitate the backup and restoration of server files and Docker containers. The scripts are built to interact with a remote server, create backups of specified directories and running Docker containers, and retrieve these backups to a local machine.

### Prerequisites
- Bash
- Docker (for Docker-related operations)
- Access to a remote server with SSH
- Sudo privileges on the machine where the scripts are run

### Configuration
Copy the ``.env.sample`` into ``.env`` and add your own values



### Scripts Description
1. 01_copy_to_remote.sh

Copies specified files or directories to a remote server.

2. 02_tar_folders.sh

Creates tar.gz backups of each folder in a specified directory and changes the ownership to a user defined in .env.

3. 03_export_running_docker_images.sh

Exports all currently running Docker container images as tar.gz files.

4. 04_copy_backups_local.sh

Retrieves tar.gz backups from the remote server to the local machine.

### Usage
Run the scripts in order.

``01_copy_to_remote.sh`` and ``04_copy_backups_local.sh`` are to be run on your local machine (copy to, copy from)

``02_tar_folders.sh`` and ``03_export_running_docker_images.sh`` are to be run on the machine that is being backed up (backup data, backup images)


### Contribution

Contributions to this project are welcome. Please follow the standard Git workflow - fork the repository, make your changes, and submit a pull request.

### License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.


Made by me - [CarlosSousa.tech](https://carlossousa.tech)