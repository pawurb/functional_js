gulp       = require 'gulp'
watch      = require 'gulp-watch'
coffee     = require 'gulp-coffee'
livereload = require 'gulp-livereload'
gutil      = require 'gulp-util'

catchErr = (err) ->
  console.log err.toString()
  @emit 'end'

gulp.task 'default', ->
  livereload.listen()
  gulp.watch(['src/*'], ['coffee'])

gulp.task 'coffee', ->
  gulp.src(['src/*.coffee'])
  .pipe(coffee(bare: true))
  .on('error', catchErr)
  .pipe(gulp.dest('scripts/'))
  .pipe(livereload())

  gutil.log(gutil.colors.green('JavaScript Compiled - reloading'))
