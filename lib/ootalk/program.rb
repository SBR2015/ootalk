require 'json'

module OoTalk
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
      left = evaluate(value['Left'])
      right = evaluate(value['Right'])
      middle = evaluate(value['Middle'])
      evalobj = create_evalobject(key, left, right, middle)
      setresult(evalobj)
      evalobj
    end

    def setresult(evalobj)
      result = {}
      result['exec'] = evalobj.to_s
      result['result'] = evalobj.respond_to?(:exec) ? evalobj.exec : evalobj
      @result_dict.push(result);
    end

    def create_evalobject(key, left, right, _middle)
      case key
      when 'Constant'
        OoTalk::Constant.new(left)
      when 'Variable'
        OoTalk::Variable.new(left)
      when 'Assignment'
        OoTalk::Assignment.new(left, right)
      when 'Add'
        OoTalk::Add.new(left, right)
      when 'Substract'
        OoTalk::Substract.new(left, right)
      when 'Times'
        OoTalk::Times.new(left, right)
      when 'Divide'
        OoTalk::Divide.new(left, right)
      when 'Power'
        OoTalk::Power.new(left, right)
      when 'Logarithm'
        OoTalk::Logarithm.new(left, right)
      when 'Surplus'
        OoTalk::Surplus.new(left, right)
      when 'GreaterThan'
        OoTalk::GreaterThan.new(left, right)
      when 'GreaterThanOrEqualTo'
        OoTalk::GreaterThanOrEqualTo.new(left, right)
      when 'EqualTo'
        OoTalk::EqualTo.new(left, right)
      when 'NotEqual'
        OoTalk::NotEqual.new(left, right)
      when 'LessThan'
        OoTalk::LessThan.new(left, right)
      when 'LessThanOrEqualTo'
        OoTalk::LessThanOrEqualTo.new(left, right)
      when 'And'
        OoTalk::And.new(left, right)
      when 'Nand'
        OoTalk::Nand.new(left, right)
      when 'Or'
        OoTalk::Or.new(left, right)
      when 'Nor'
        OoTalk::Nor.new(left, right)
      when 'Xor'
        OoTalk::Xor.new(left, right)
      end
    end
  end
end
