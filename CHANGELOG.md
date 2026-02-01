# Changelog

All notable changes to this project are documented in this file.

The format follows common open-source conventions:
- Versions are listed in reverse chronological order
- Only user-visible changes are documented

---

## [1.2] – 2026-01-31

### Added
- Integrated **mechanical filename cleanup** into `--apply`
  - removes stray `-pdf-` tokens
  - collapses duplicated extensions (e.g. `.pdf.pdf`)
  - normalizes casing and repeated separators
- Built-in **`--undo`** command to revert the last applied run
- Automatic rebuild of duplicate hash index from disk on every run
- Support for mixed filename patterns (`aula`, `trilha`)

### Changed
- `--dry-run` is now the default behavior
- Organization pipeline now follows:
  **normalize → infer → organize**
- Improved robustness against inconsistent real-world filenames

### Fixed
- Incorrect handling of `trilha-XX` lessons as `aula-00`
- Duplicate detection breaking after undo operations
- Reprocessing of already-normalized files

---

## [1.1] – 2026-01-25

### Added
- Standalone filename normalization utility (`fix-filenames`)
- Improved handling of malformed filenames
- Debian package update workflow

### Changed
- Minor refinements to renaming rules
- Safer collision handling for renamed files

---

## [1.0] – 2026-01-20

### Added
- Initial release
- Recursive PDF discovery
- Safe `--dry-run` and `--apply` modes
- Discipline-based organization
- Duplicate detection via file hashing
- Debian package (`.deb`) distribution

---

## Notes

This project prioritizes:
- safety over cleverness
- idempotent behavior
- real-world data tolerance

Breaking changes, if any, will always be clearly documented.
