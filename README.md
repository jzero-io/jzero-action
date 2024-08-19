# jzero-action

jzero github action for running [jzero](https://github.com/jzero-io/jzero) command

## Usage

```yaml
name: jzero-action-test

on:
  push:
    branches:

jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v3
        with:
          fetch-depth: 0

      - uses: jzero-io/jzero-action@v1
        with:
          args: gen sdk --module github.com/jzero/test --output test
          version: v0.23.4
```