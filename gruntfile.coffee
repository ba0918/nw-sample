module.exports = (grunt) ->
    grunt.loadNpmTasks 'grunt-mocha-test'
    grunt.loadNpmTasks 'grunt-node-webkit-builder'

    grunt.initConfig
        nodewebkit:
            options:
                build_dir: 'build/bin'
            src: [
                'package.json',
                'app/**/*'
            ]

        mochaTest:
            test:
                options:
                    reporter: 'spec'
                    require: 'intelli-espower-loader'
                src: ['test/**/*.js']

    grunt.registerTask 'build',   ['nodewebkit']
    grunt.registerTask 'test',    ['mochaTest']
    grunt.registerTask 'default', ['test','build']

