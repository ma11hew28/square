require 'bigdecimal'

module Square
  class Payment
    FEE_RATE = BigDecimal("0.029") # * 2.9%
    FEE_BASE = BigDecimal("0.15")  # + $0.15

    attr_reader :amount

    def initialize(amount)
      @amount = BigDecimal(amount)
    end

    def fee_amount
      @fee_amount ||= (FEE_RATE * amount + FEE_BASE).round(2)
    end
  end
end
