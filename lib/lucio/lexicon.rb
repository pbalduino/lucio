require 'lucio/operators'

module Lucio
  class Lexicon
    @@operator_list = nil

    def self.get(operator)
      fill_operator_list unless @@operator_list
      ret = @@operator_list[operator]
    end

    private
    def self.fill_operator_list
      @@operator_list = {}
      @@operator_list['+']    = Operator::Sum.new
      @@operator_list['*']    = Operator::Multiplication.new
      @@operator_list['/']    = Operator::Division.new
      @@operator_list['-']    = Operator::Subtraction.new
      @@operator_list['eql?'] = Operator::Equality.new
      @@operator_list['if']   = Operator::Conditional.new
    end
  end
end
