module.exports = function(grunt) {

  // Project configuration.
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),
    
      watch: {
        scripts: {
          files: ['app/**'],
          tasks: ['exec'],
          options: {
            spawn: false,
          },
        },
      },

      exec: {
        echo_something: './scripts/composer/copy_dev_files.sh'
      }

  });


  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-exec');

};

