require 'test/unit'
require File.dirname(__FILE__) + '/../lib/mathematics'

class TestMathematics < Test::Unit::TestCase

  # .. describe .......................

  def test_describe
    assert Mathematics.desc == "Wrapper around Math module; Has additional methods."
  end

  def test_desc
    assert Mathematics.desc == "Wrapper around Math module; Has additional methods."
  end

  # .. min .......................

  def test_min
    assert Mathematics.min(1,2,3) == 1
  end

  # .. max .......................

  def test_max
    assert Mathematics.max(1,2,3) == 3
  end

  # .. minmax .......................

  def test_minmax
    assert Mathematics.minmax(1,2,3,4,5) == [1,5]
  end

  # .. sum .......................

  def test_add
    assert Mathematics.add(1,2) == 3
  end

  def test_sum
    assert Mathematics.sum(1,2,3) == 6
  end

  def test_total
    assert Mathematics.total(1,2,3,4) == 10
  end

  # .. mean .......................

  def test_average
    assert Mathematics.average(1,2,3) == 2
  end

  def test_avg
    assert Mathematics.avg(1,2,3,4) == 2.5
  end

  def test_mean
    assert Mathematics.mean(1,2,3,4,5) == 3
  end

  # .. median .......................

  def test_median
    assert Mathematics.median(1,2,4,7,11) == 4
    assert Mathematics.median(1,2,4,7,11,13) == 5.5
  end

  # .. mode .......................

  def test_mode
    assert Mathematics.mode(1,2,2,3,3,3) == 3
  end

  # .. range .......................

  def test_range
    assert Mathematics.range(0,1,2,3,4,5,6,7,8,9) == 9
    assert Mathematics.range(3,4,5,6,7,8) == 5
  end

  # .. variance .......................

  def test_variance
    assert Mathematics.variance(1,2,3) > 0.66 && Mathematics.variance(1,2,3) < 0.67
    assert Mathematics.var(1,2,3) > 0.66 && Mathematics.var(1,2,3) < 0.67
  end

  # .. standard deviation .......................

  def test_stddev
    assert Mathematics.stddev(1,2,3) > 0.8164 && Mathematics.stddev(1,2,3) < 0.8165
    assert Mathematics.sd(1,2,3) > 0.8164 && Mathematics.sd(1,2,3) < 0.8165
  end

  # .. factorial .......................

  def test_factorial
    result = Mathematics.factorial(-1)
    assert result == nil, "=> It was #{result}"
    result = Mathematics.factorial(0)
    assert result == 1, "=> It was #{result}"
    result = Mathematics.factorial(1)
    assert result == 1, "=> It was #{result}"
    result = Mathematics.factorial(2)
    assert result == 2, "=> It was #{result}"
    result = Mathematics.factorial(3)
    assert result == 6, "=> It was #{result}"
    result = Mathematics.factorial(4)
    assert result == 24, "=> It was #{result}"
    result = Mathematics.factorial(5)
    assert result == 120, "=> It was #{result}"
    result = Mathematics.factorial(6)
    assert result == 720, "=> It was #{result}"
    result = Mathematics.factorial(7)
    assert result == 5040, "=> It was #{result}"
    result = Mathematics.factorial(8)
    assert result == 40320, "=> It was #{result}"
    result = Mathematics.factorial(9)
    assert result == 362880, "=> It was #{result}"
    result = Mathematics.factorial(10)
    assert result == 3628800, "=> It was #{result}"
    result = Mathematics.factorial(11)
    assert result == 39916800, "=> It was #{result}"
    result = Mathematics.factorial(12)
    assert result == 479001600, "=> It was #{result}"
  end

  # .. fact .......................

  def test_fact
    result = Mathematics.fact(-1)
    assert result == nil, "=> It was #{result}"
    result = Mathematics.fact(0)
    assert result == 1, "=> It was #{result}"
    result = Mathematics.fact(1)
    assert result == 1, "=> It was #{result}"
    result = Mathematics.fact(2)
    assert result == 2, "=> It was #{result}"
    result = Mathematics.fact(3)
    assert result == 6, "=> It was #{result}"
    result = Mathematics.fact(4)
    assert result == 24, "=> It was #{result}"
    result = Mathematics.fact(5)
    assert result == 120, "=> It was #{result}"
    result = Mathematics.fact(6)
    assert result == 720, "=> It was #{result}"
    result = Mathematics.fact(7)
    assert result == 5040, "=> It was #{result}"
    result = Mathematics.fact(8)
    assert result == 40320, "=> It was #{result}"
    result = Mathematics.fact(9)
    assert result == 362880, "=> It was #{result}"
    result = Mathematics.fact(10)
    assert result == 3628800, "=> It was #{result}"
    result = Mathematics.fact(11)
    assert result == 39916800, "=> It was #{result}"
    result = Mathematics.fact(12)
    assert result == 479001600, "=> It was #{result}"
  end

  # .. triangular_number .......................

  def test_triangular_number
    result = Mathematics.triangular_number(-1)
    assert result == nil, "=> It was #{result}"
    result = Mathematics.triangular_number(0)
    assert result == nil, "=> It was #{result}"
    result = Mathematics.triangular_number(1)
    assert result == 1, "=> It was #{result}"
    result = Mathematics.triangular_number(2)
    assert result == 3, "=> It was #{result}"
    result = Mathematics.triangular_number(3)
    assert result == 6, "=> It was #{result}"
    result = Mathematics.triangular_number(4)
    assert result == 10, "=> It was #{result}"
    result = Mathematics.triangular_number(5)
    assert result == 15, "=> It was #{result}"
    result = Mathematics.triangular_number(6)
    assert result == 21, "=> It was #{result}"
    result = Mathematics.triangular_number(7)
    assert result == 28, "=> It was #{result}"
    result = Mathematics.triangular_number(8)
    assert result == 36, "=> It was #{result}"
    result = Mathematics.triangular_number(9)
    assert result == 45, "=> It was #{result}"
    result = Mathematics.triangular_number(10)
    assert result == 55, "=> It was #{result}"
    result = Mathematics.triangular_number(11)
    assert result == 66, "=> It was #{result}"
    result = Mathematics.triangular_number(12)
    assert result == 78, "=> It was #{result}"
    result = Mathematics.triangular_number(13)
    assert result == 91, "=> It was #{result}"
  end

  # .. triangle_number .......................

  def test_triangle_number
    result = Mathematics.triangle_number(-1)
    assert result == nil, "=> It was #{result}"
    result = Mathematics.triangle_number(0)
    assert result == nil, "=> It was #{result}"
    result = Mathematics.triangle_number(1)
    assert result == 1, "=> It was #{result}"
    result = Mathematics.triangle_number(2)
    assert result == 3, "=> It was #{result}"
    result = Mathematics.triangle_number(3)
    assert result == 6, "=> It was #{result}"
    result = Mathematics.triangle_number(4)
    assert result == 10, "=> It was #{result}"
    result = Mathematics.triangle_number(5)
    assert result == 15, "=> It was #{result}"
    result = Mathematics.triangle_number(6)
    assert result == 21, "=> It was #{result}"
    result = Mathematics.triangle_number(7)
    assert result == 28, "=> It was #{result}"
    result = Mathematics.triangle_number(8)
    assert result == 36, "=> It was #{result}"
    result = Mathematics.triangle_number(9)
    assert result == 45, "=> It was #{result}"
    result = Mathematics.triangle_number(10)
    assert result == 55, "=> It was #{result}"
    result = Mathematics.triangle_number(11)
    assert result == 66, "=> It was #{result}"
    result = Mathematics.triangle_number(12)
    assert result == 78, "=> It was #{result}"
    result = Mathematics.triangle_number(13)
    assert result == 91, "=> It was #{result}"
  end

  # .. binomial_coefficient .......................

  def test_binomial_coefficient
    assert Mathematics.binomial_coefficient(1,-1) == 0
    assert Mathematics.binomial_coefficient(1,2) == 0
    assert Mathematics.binomial_coefficient(3,0) == 1
    assert Mathematics.binomial_coefficient(3,3) == 1
    assert Mathematics.binomial_coefficient(3,2) == 3,
      "It was #{Mathematics.binomial_coefficient(3,2)}"
    assert Mathematics.binomial_coefficient(4,2) == 6,
      "It was #{Mathematics.binomial_coefficient(4,2)}"
    assert Mathematics.binomial_coefficient(5,3) == 10,
      "It was #{Mathematics.binomial_coefficient(5,3)}"
  end

  # .. sin .......................

  def test_sin_0
    assert Mathematics.sin(0) == 0, "It was #{Mathematics.sin(0)}"
  end

  def test_sin_45
    assert (Mathematics.sin(0.25*Math::PI) > 0.7071) &&
      (assert Mathematics.sin(0.25*Math::PI) < 0.7072),
      "It was #{Mathematics.sin(0.25*Math::PI)}"
  end

  def test_sin_90
    assert Mathematics.sin(0.5*Math::PI) == 1, "It was #{Mathematics.sin(0.5*Math::PI)}"
  end

  def test_sin_180
    assert Mathematics.sin(Math::PI) == 0, "It was #{Mathematics.sin(Math::PI)}"
  end

  def test_sin_270
    assert Mathematics.sin(1.5*Math::PI) == -1, "It was #{Mathematics.sin(1.5*Math::PI)}"
  end

  def test_sin_360
    assert Mathematics.sin(2*Math::PI) == 0, "It was #{Mathematics.sin(2*Math::PI)}"
  end

  def test_sin_450
    assert Mathematics.sin(2.5*Math::PI) == 1, "It was #{Mathematics.sin(2.5*Math::PI)}"
  end

  def test_sin_540
    assert Mathematics.sin(3*Math::PI) == 0, "It was #{Mathematics.sin(3*Math::PI)}"
  end

  def test_sin_630
    assert Mathematics.sin(3.5*Math::PI) == -1, "It was #{Mathematics.sin(3.5*Math::PI)}"
  end

  def test_sin_720
    assert Mathematics.sin(4*Math::PI) == 0, "It was #{Mathematics.sin(4*Math::PI)}"
  end

  # .. cos .......................

  def test_cos_0
    assert Mathematics.cos(0) == 1, "It was #{Mathematics.cos(0)}"
  end

  def test_cos_45
    assert (Mathematics.cos(0.25*Math::PI) > 0.7071) &&
      (assert Mathematics.cos(0.25*Math::PI) < 0.7072),
      "It was #{Mathematics.cos(0.25*Math::PI)}"
  end

  def test_cos_90
    assert Mathematics.cos(0.5*Math::PI) == 0, "It was #{Mathematics.cos(0.5*Math::PI)}"
  end

  def test_cos_180
    assert Mathematics.cos(Math::PI) == -1, "It was #{Mathematics.cos(Math::PI)}"
  end

  def test_cos_270
    assert Mathematics.cos(1.5*Math::PI) == 0, "It was #{Mathematics.cos(1.5*Math::PI)}"
  end

  def test_cos_360
    assert Mathematics.cos(2*Math::PI) == 1, "It was #{Mathematics.cos(2*Math::PI)}"
  end

  def test_cos_450
    assert Mathematics.cos(2.5*Math::PI) == 0, "It was #{Mathematics.cos(2.5*Math::PI)}"
  end

  def test_cos_540
    assert Mathematics.cos(3*Math::PI) == -1, "It was #{Mathematics.cos(3*Math::PI)}"
  end

  def test_cos_630
    assert Mathematics.cos(3.5*Math::PI) == 0, "It was #{Mathematics.cos(3.5*Math::PI)}"
  end

  def test_cos_720
    assert Mathematics.cos(4*Math::PI) == 1, "It was #{Mathematics.cos(4*Math::PI)}"
  end

  # .. tan .......................

  def test_tan_0
    assert Mathematics.tan(0) == 0, "It was #{Mathematics.tan(0)}"
  end

  def test_tan_45
    assert Mathematics.tan(0.25*Math::PI) == 1, "It was #{Mathematics.tan(0.25*Math::PI)}"
  end

  def test_tan_90
    assert Mathematics.tan(0.5*Math::PI) == 1.0/0, "It was #{Mathematics.tan(0.5*Math::PI)}"
  end

  def test_tan_135
    assert Mathematics.tan(0.75*Math::PI) == -1, "It was #{Mathematics.tan(0.75*Math::PI)}"
  end

  def test_tan_180
    assert Mathematics.tan(Math::PI) == 0, "It was #{Mathematics.tan(Math::PI)}"
  end

  def test_tan_225
    assert Mathematics.tan(1.25*Math::PI) == 1, "It was #{Mathematics.tan(1.25*Math::PI)}"
  end

  def test_tan_270
    assert Mathematics.tan(1.5*Math::PI) == -1.0/0, "It was #{Mathematics.tan(1.5*Math::PI)}"
  end

  def test_tan_315
    assert Mathematics.tan(1.75*Math::PI) == -1, "It was #{Mathematics.tan(1.75*Math::PI)}"
  end

  def test_tan_360
    assert Mathematics.tan(2*Math::PI) == 0, "It was #{Mathematics.tan(2*Math::PI)}"
  end

  def test_tan_405
    assert Mathematics.tan(2.25*Math::PI) == 1, "It was #{Mathematics.tan(2.25*Math::PI)}"
  end

  def test_tan_450
    assert Mathematics.tan(2.5*Math::PI) == 1.0/0, "It was #{Mathematics.tan(2.5*Math::PI)}"
  end

  def test_tan_495
    assert Mathematics.tan(2.75*Math::PI) == -1, "It was #{Mathematics.tan(2.75*Math::PI)}"
  end

  def test_tan_540
    assert Mathematics.tan(3*Math::PI) == 0, "It was #{Mathematics.tan(3*Math::PI)}"
  end

  def test_tan_585
    assert Mathematics.tan(3.25*Math::PI) == 1, "It was #{Mathematics.tan(3.25*Math::PI)}"
  end

  def test_tan_630
    assert Mathematics.tan(3.5*Math::PI) == -1.0/0, "It was #{Mathematics.tan(3.5*Math::PI)}"
  end

  def test_tan_675
    assert Mathematics.tan(3.75*Math::PI) == -1, "It was #{Mathematics.tan(3.75*Math::PI)}"
  end

  def test_tan_720
    assert Mathematics.tan(4*Math::PI) == 0, "It was #{Mathematics.tan(4*Math::PI)}"
  end

end
