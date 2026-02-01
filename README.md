# organize-cursos

![Version](https://img.shields.io/github/v/release/rafazildod/organize-cursos)
![License](https://img.shields.io/github/license/rafazildod/organize-cursos)
![Python](https://img.shields.io/badge/python-3.x-blue)
![Platform](https://img.shields.io/badge/platform-linux-lightgrey)

A command-line tool to normalize, organize, and deduplicate course PDFs.

Built to handle messy real-world filenames with:
- dry-run safety
- undo support
- duplicate detection
- mechanical filename cleanup
- Debian packaging

## Features

- Recursive PDF discovery
- Safe `--dry-run` (default)
- `--apply` to organize files
- `--undo` to revert the last run
- Automatic discipline inference
- Local configuration per folder
- Idempotent behavior

## Usage

```bash
organize-cursos --dry-run
organize-cursos --apply
organize-cursos --undo
