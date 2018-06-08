var gulp = require('gulp');
var sass = require('gulp-sass');

gulp.task('sass', function() {
    gulp.src('./assets/css/**/*.scss')
    .pipe(sass())
    .pipe(gulp.dest('./assets/css'))
});
gulp.task('sass:watch', function() {
    gulp.watch('./assets/css/**/*.scss', ['sass']);
});