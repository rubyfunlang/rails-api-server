module EquationManager
  class Linear

    def self.calculate(data)
      if data[:b] == '0'
        { x: 0 }
      elsif data[:a] == '0'
        { x: "impossible linear equation" }
      else
        { x: - (data[:b].to_i.to_f.quo data[:a].to_i) }
      end
    end
  end
end
