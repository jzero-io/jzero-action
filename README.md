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

      - uses: jzero-io/jzero-action@v0.0.1
        with:
          args: gen sdk --module github.com/jzero/test -d test
          version: v0.23.4
```

## References

* https://docs.github.com/en/actions/sharing-automations/creating-actions/creating-a-docker-container-action
* https://github.com/orgs/community/discussions/115697