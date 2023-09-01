# Git archiver

A solution for continously backing up git repositories, including branch and tag state over time.

## How to use
1. Clone the repositories you want to archive int a folder directly in the `repos` folder. Subfolder are not supported.
2. Run `bulk-archiver.sh` periodically, ideally with cron or similar.
