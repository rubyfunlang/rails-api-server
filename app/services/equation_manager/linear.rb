module EquationManager
  class Linear
    def self.calculate(data)
      if data[:b] == 0
        0
      elsif data[:a] == 0
        'impossible linear equation'
      else
        - (data[:b].to_f.quo data[:a])
      end
    end
  end
end
