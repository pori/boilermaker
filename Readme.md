# Boilermaker

Boilerplate configurator for modern JS.

## Features

* develop in es2015+ code
* linting
* unit testing with [ava](https://github.com/avajs/ava)
* code coverage

## Install

```js
npm install pori/boilermaker
```

Then, in a `Makefile` in the root of your project:

```make
include node_modules/boilermaker/Makefile
```

## Usage

```

   build      - compile es2015+ code for distribution
   lint       - validate source code
   test       - run tests (lints, builds first)
   test-cov   - run tests with code coverage
   help       - you're looking at it

```

## Options

Set these before loading in the `Makefile`.

* BIN_DIR     - location of `babel`, `ava`, `eslint`, and `nyc` binaries
* BUILD_DIR   - destination for built es2015 code 
* SRC_DIR     - destination of source code 
* BUILD_FLAGS - `babel` options 
* LINT_FLAGS  - `eslint` options 
* TEST_FLAGS  - `ava` options 

## License

  MIT

---

> [pori.io](http://pori.io) &nbsp;&middot;&nbsp;
> GitHub [@pori](https://github.com/pori) &nbsp;&middot;&nbsp;
> Twitter [@pori_alex](https://twitter.com/pori_alex)


