module.exports = (grunt) ->
    grunt.loadNpmTasks 'grunt-node-webkit-builder'

    grunt.initConfig
        nodewebkit:
            options:
                build_dir: 'build/bin'
            src: [
                'package.json',
                'app/**/*'
            ]
    grunt.registerTask 'default', ['nodewebkit']
