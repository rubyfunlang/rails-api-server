module EquationManager
  class Quadratic

    def self.calculate(data)
      a = data[:a].to_i
      b = data[:b].to_i
      c = data[:c].to_i

      discr = b ** 2 - 4 * a * c

      if discr < 0
        'no roots'
      elsif discr == 0
        { x: - b.to_f.quo(2 * a) }
      else discr > 0
        {
          x1: ( - b + Math.sqrt(discr) ).to_f.quo(2 * a),
          x2: ( - b - Math.sqrt(discr) ).to_f.quo(2 * a)
        }
      end
    end
  end
end
