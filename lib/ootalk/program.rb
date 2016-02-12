require 'json'

module Ootalk
  class Program
    def initialize(data)
      @body = data
      @json_dict = JSON.parse(data)
      @result_dict = []
      parse(@json_dict)
    end

    def exec
      @result_dict
    end

    def input_raw_data
      @body
    end

    def to_s
      @result_dict.to_s
    end

    private

    def parse(obj_array)
      obj_array.each do |code|
        dict = code['Program']
        if dict.instance_of?(Hash)
          evaluate(dict)
        end
      end
    end

    def evaluate(dict)
      return dict unless dict.instance_of?(Hash)
      key = dict.keys[0]
      value = dict[key]
      if value.instance_of?(Array)
        parse(value)
      else
        left = evaluate(value['Left'])
        right = evaluate(value['Right'])
        middle = evaluate(value['Middle'])
        evalobj = create_evalobject(key, left, right, middle)
        setresult(evalobj)
        evalobj
      end
    end

    def setresult(evalobj)
      begin
        result = {}
        result['name'] = evalobj.class.name.split("::")[-1]
        result['exec'] = evalobj.to_s
        result['result'] = evalobj.respond_to?(:exec) ? evalobj.exec : evalobj
        @result_dict.push(result);
      rescue
      end 
    end

    def create_evalobject(key, left, right, middle)
      case key
      when 'Constant'
        Ootalk::Constant.new(left)
      when 'Variable'
        Ootalk::Variable.new(left)
      when 'Assignment'
        Ootalk::Assignment.new(left, right)
      when 'Add'
        Ootalk::Add.new(left, right)
      when 'Subtract'
        Ootalk::Subtract.new(left, right)
      when 'Times'
        Ootalk::Times.new(left, right)
      when 'Divide'
        Ootalk::Divide.new(left, right)
      when 'Power'
        Ootalk::Power.new(left, right)
      when 'Logarithm'
        Ootalk::Logarithm.new(left, right)
      when 'Surplus'
        Ootalk::Surplus.new(left, right)
      when 'GreaterThan'
        Ootalk::GreaterThan.new(left, right)
      when 'GreaterThanOrEqualTo'
        Ootalk::GreaterThanOrEqualTo.new(left, right)
      when 'EqualTo'
        Ootalk::EqualTo.new(left, right)
      when 'NotEqual'
        Ootalk::NotEqual.new(left, right)
      when 'LessThan'
        Ootalk::LessThan.new(left, right)
      when 'LessThanOrEqualTo'
        Ootalk::LessThanOrEqualTo.new(left, right)
      when 'And'
        Ootalk::And.new(left, right)
      when 'Nand'
        Ootalk::Nand.new(left, right)
      when 'Or'
        Ootalk::Or.new(left, right)
      when 'Nor'
        Ootalk::Nor.new(left, right)
      when 'Xor'
        Ootalk::Xor.new(left, right)
      when 'Conditional'
        Ootalk::Conditional.new(left, middle, right)
      when 'Loop'
        Ootalk::Loop.new(left, right)
      end
    end
  end
end
