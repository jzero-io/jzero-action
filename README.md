# jzero-action

jzero github action

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
```
