module.exports = function (grunt) { 
    grunt.initConfig({
        jasmine_node: {
            all: ['test/']
        }
    });

    grunt.loadNpmTasks('grunt-jasmine-node');

    grunt.registerTask('test', ['jasmine_node']);
};
