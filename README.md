# grunt-embed [![Build Status](https://secure.travis-ci.org/callumlocke/grunt-embed.png?branch=master)](http://travis-ci.org/callumlocke/grunt-embed)

> Not ready for production use yet! (See [issues](https://github.com/callumlocke/resource-embedder/issues).) Wait till 0.1.x.

Grunt plugin version of the [resource-embedder](https://github.com/callumlocke/resource-embedder) module.

Turns short external scripts and stylesheets into embedded ones:

* `<script src="foo.js"></script>` becomes `<script> ... </script>`
* `<link rel="stylesheet" href="bar.css">` becomes `<style> ... </style>`

This is for the purpose of reducing the number of HTTP requests, at the expense of increased markup size and reduced cacheability. Do your own testing to see if this is a good trade-off in your situation. (Short, blocking scripts in the `head` are a good candidate for embedding.)


## Getting Started

This plugin requires [Grunt](http://gruntjs.com/) (see [Getting Started](http://gruntjs.com/getting-started)).

Install:

```shell
npm install grunt-embed --save-dev
```

Load the task in your Gruntfile:

```js
grunt.loadNpmTasks('grunt-embed');
```


## The "embed" task

### Overview

In your Gruntfile, add a section named `embed` to the data object passed into `grunt.initConfig()`.

```js
grunt.initConfig({
  embed: {
    options: {
      // Task-specific options go here.
    },
    your_target: {
      // Target-specific file lists and/or options go here.
    },
  },
})
```

### Options

See [resource-embedder options](https://github.com/callumlocke/resource-embedder#options) for the full list.

You can also use `data-embed` attributes in your markup to force-include/exclude a particular `script` or `link` element from being embedded, as documented [here](https://github.com/callumlocke/resource-embedder#choosing-which-files-to-embed).

### Usage Examples

#### Default Options

Embed any external scripts and stylesheets under 5KB in size (the default threshold):

```js
grunt.initConfig({
  embed: {
    files: {
      'dest/output.html': 'src/input.html'
    }
  }
})
```

#### Custom Options

Custom threshold – embed anything under 3KB in size:

```js
grunt.initConfig({
  embed: {
    options: {
      threshold: '3KB'
    },
    files: {
      'dest/output.html': 'src/input.html'
    }
  }
})
```


## Contributing

In lieu of a formal styleguide, take care to maintain the existing coding style. Add unit tests for any new or changed functionality. Lint and test your code using [Grunt](http://gruntjs.com/).


## Release History

_(Nothing yet)_


## License

Copyright (c) 2013 Callum Locke. Licensed under the MIT license.
