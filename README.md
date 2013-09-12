# grunt-embed [![Build Status](https://secure.travis-ci.org/callumlocke/grunt-embed.png?branch=master)](http://travis-ci.org/callumlocke/grunt-embed)

This is the [resource-embedder](https://github.com/callumlocke/resource-embedder) module wrapped as a Grunt plugin.


## Getting Started
This plugin requires Grunt.

If you haven't used [Grunt](http://gruntjs.com/) before, be sure to check out the [Getting Started](http://gruntjs.com/getting-started) guide, as it explains how to create a [Gruntfile](http://gruntjs.com/sample-gruntfile) as well as install and use Grunt plugins. Once you're familiar with that process, you may install this plugin with this command:

```shell
npm install grunt-embed --save-dev
```

Once the plugin has been installed, it may be enabled inside your Gruntfile with this line of JavaScript:

```js
grunt.loadNpmTasks('grunt-embed');
```


## The "embed" task

### Overview
In your project's Gruntfile, add a section named `embed` to the data object passed into `grunt.initConfig()`.

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
See [resource-embedder options](https://github.com/callumlocke/resource-embedder) for options.

You can also use `data-embed` attributes to force-include/exclude a specific `script` or `link` element, as documented [here](https://github.com/callumlocke/resource-embedder).

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
