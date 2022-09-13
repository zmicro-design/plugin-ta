# Ta - Ta Development CLI

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
Ta (v1.2.8)

Ta Development CLI

Usage: ta <command> [args...]

Commands:
  环境相关
  setup               - Setup Ta Development Environment

  项目管理
  add <repository>    - Add Git Repository

  日常开发
  bootstrap           - Bootstrap project
  dev                 - Project dev
  commit              - Project commit
  fmt                 - Project format

  分支管理
  feat                - Create feature branch
  branch <type>       - Create branch by feat/fix/hotfix/release
  mr                  - Create merge request (:WIP:)

  构建部署
  build               - Project build

  其他扩展
  run                 - Run npm script

  配置管理
  config              - Get/set config

  系统相关
  info                - Show system info
  update              - Update CLI
  version             - Show version
  help                - Show help
```

## License
ZMicro Design is released under the [MIT License](./LICENSE).
