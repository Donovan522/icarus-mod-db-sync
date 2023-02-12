# Change Log

All notable changes to this project will be documented in this file.

## History (reverse chronological order)

### v2.1 - 2023-02-11

- Remove support for `fileType` and `fileURL` in `modinfo.json` files
- bugfixes

### v2.0 - 2023-02-03

- Converts to new `files` object, replacing fileType and fileURL

### v1.9 - 2023-01-28

- Renamed `Progs` to `Tools`

### v1.8 - 2023-01-27

- Added support for `proginfo.json` files
- Refactored to better utilize caching

### v1.7 - 2023-01-20

- Added `validation` command
- Added `--dry-run` to `sync` commands

### v1.6 - 2023-01-15

- Added `--check` to `sync mods` to check for updates without downloading
- Added support for `readmeURL` in `modinfo.json`

### v1.5 - 2023-01-08

- Moved source into the DonovanMods Github organization
- Added `long_description` to `modinfo.json`
- Added `imageURL` to `modinfo.json`
- bugfixes

### v1.4 - 2023-01-03

**BREAKING CHANGES!**

You'll need to move your ENV variables to a config file. See the README for more details.

- Read configuration from `~/.imtconfig.json`
- bugfixes

### v1.3 - 2023-01-02

- First public release
- Added sorting and filtering to the `list mods` command
- Bugfixes

### v1.2 - 2023-01 _[Unreleased]_

- initial `sync mods` working functionality
- Bugfixes

### v1.1 - 2022-12 _[Unreleased]_

- Initial alpha release

### v1.0 - 2022-12 _[Unreleased]_

- Development
