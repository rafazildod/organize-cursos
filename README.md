# organize-cursos

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
