=begin
Write your code for the 'Series' exercise in this file. Make the tests in
`series_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/series` directory.
=end

class Series
  def initialize(series)
    @series = series
  end

  def slices(n)
    raise ArgumentError if n > @series.length
    @series.chars.each_cons(n).map(&:join)
  end
end