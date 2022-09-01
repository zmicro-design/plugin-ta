# Ta - Ta Development Plugin for [ZMicro](https://github.com/zcorky/zmicro)

[![Release](https://img.shields.io/github/tag/zmicro-design/plugin-ta.svg?label=Release)](https://github.com/zmicro-design/plugin-ta/tags)
[![Build Status](https://github.com/zmicro-design/plugin-ta/actions/workflows/test.yml/badge.svg?branch=master)](https://github.com/zmicro-design/plugin-ta/actions/workflows/test.yml)
[![GitHub issues](https://img.shields.io/github/issues/zmicro-design/plugin-ta.svg)](https://github.com/zmicro-design/plugin-ta/issues)


## Installation

```bash
# CURL
curl -o- https://raw.githubusercontent.com/zmicro-design/plugin-ta/master/install | bash

# WGET
wget -qO- https://raw.githubusercontent.com/zmicro-design/plugin-ta/master/install | bash
```

## Usage

```markdown
Go Version Manager (v1.0.6)

Go Version Manager is a tool for managing multiple Go versions.

Usage:
  ta install <version>   - Install Go version
  ta use <version>       - Use Go version
  ta remove <version>    - Remove Go version
  ta ls                  - List all Go versions
  ta ls-remote           - Show current Go version
  ta current             - Show current Go version
  ta help                - Show help

Example:
  ta install v1.18
  ta use v1.18
  ta remove v1.18
  ta ls
  ta ls-remote
  ta current
```

## License
ZMicro Design is released under the [MIT License](./LICENSE).
