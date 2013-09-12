###
  grunt-embed
  https://github.com/callumlocke/grunt-embed

  Copyright 2013 Callum Locke
  Licensed under the MIT license.
###

ResourceEmbedder = require 'resource-embedder'
path = require 'path'

module.exports = (grunt) ->

  # Please see the Grunt documentation for more information regarding task
  # creation: http://gruntjs.com/creating-tasks
  grunt.registerMultiTask "embed", "Converts external scripts and stylesheets into embedded ones.", ->
    done = @async()

    @files.forEach (file) =>
      srcFile = file.orig.src
      if typeof srcFile isnt 'string'
        if srcFile.length > 1
          grunt.log.warn 'Multiple source files supplied; only the first will be used.'
        srcFile = srcFile[0]

      if not grunt.file.exists srcFile
        grunt.log.warn "Source file \"#{path.resolve(srcFile)}\" not found."

      else
        embedder = new ResourceEmbedder srcFile, @options()
        embedder.get (output) ->
          grunt.file.write file.dest, output
          grunt.log.writeln "File \"#{file.dest}\" created."
          done()
