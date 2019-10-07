module EquationManager
  class Quadratic
    def self.calculate(data)
      discr = data[:b] ** 2 - 4 * data[:a] * data[:c]

      if discr < 0
        'no roots'
      elsif discr == 0
        { x: - data[:b].to_f.quo(2 * data[:a]) }
      else discr > 0
        {
          x1: ( - data[:b] + Math.sqrt(discr) ).to_f.quo(2 * data[:a]),
          x2: ( - data[:b] - Math.sqrt(discr) ).to_f.quo(2 * data[:a])
        }
      end
    end
  end
end
