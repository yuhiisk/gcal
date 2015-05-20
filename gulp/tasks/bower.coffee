gulp = require 'gulp'
config = require '../config'
$ = (require 'gulp-load-plugins')()
bowerFiles = require 'main-bower-files'

gulp.task 'bower', () ->
    jsFilter = $.filter('**/*.js')
    cssFilter = $.filter('**/*.css')

    return gulp.src(bowerFiles())
        .pipe(jsFilter)
        .pipe($.uglify({ preserveComments: 'some' }))
        .pipe($.concat(config.bower.js))
        .pipe(gulp.dest(config.path.js))
        .pipe(jsFilter.restore())
        .pipe(cssFilter)
        .pipe(gulp.dest(config.path.css))
