=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end

class Matrix
  def initialize(matrix)
    @matrix = matrix
  end

  def rows
    @matrix.each_line.map do |line|
      line.chomp.split.map(&:to_i)
    end
  end 

  def columns 
    rows.transpose
  end

  # def test_extract_a_row
  #   matrix = Matrix.new("1 2\n10 20")
  #   assert_equal [1, 2], matrix.rows[0]
  # end
end