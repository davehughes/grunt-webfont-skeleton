module.exports = (grunt) ->
  grunt.initConfig

    pkg: grunt.file.readJSON('package.json')

    webfont:
      icons:
        src: 'icons/svg/*.svg'
        dest: 'icons'
        options:
          font: 'icons'
          stylesheet: 'less'
          hashes: false
          template: 'templates/basic.css'
          templateOptions:
            baseClass: 'icon'
            classPrefix: 'icon-'
            mixinPrefix: 'icon-mixin-'

    watch:
      icons:
        files: 'icons/svg/*.svg'
        tasks: ['webfont:icons']

  grunt.loadNpmTasks('grunt-contrib-watch')
  grunt.loadNpmTasks('grunt-webfont')
  grunt.registerTask('default', ['webfont'])
