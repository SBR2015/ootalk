require 'json'

module OoTalk
  class Program
    def initialize(data)
      @body = data
      @json_dict = JSON.parse(data)
      @result_dict = {}
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
          eval_obj = evaluate(dict)
        elsif dict.instance_of?(Array)
          parse(dict)
        end
      end
    end

    def evaluate(dict)
      key = dict.keys[0]
      value = dict[key]

      left = value['Left'].instance_of?(Hash) ? evaluate(value['Left']) : value['Left']
      right = value['Right'].instance_of?(Hash) ? evaluate(value['Right']) : value['Right']
      middle = value['Middle'].instance_of?(Hash) ? evaluate(value['Middle']) : value['Middle']

      case key
      when 'Constant'
        eval_obj = OoTalk::Constant.new(left)
      when 'Variable'
        eval_obj = OoTalk::Variable.new(left)
      when 'Add'
        eval_obj = OoTalk::Add.new(left, right)
      when 'Subtract'
        eval_obj = OoTalk::Subtract.new(left, right)
      when 'Times'
        eval_obj = OoTalk::Times.new(left, right)
      when 'Divide'
        eval_obj = OoTalk::Divide.new(left, right)
      when 'Power'
        eval_obj = OoTalk::Power.new(left, right)
      when 'Logarithm'
        eval_obj = OoTalk::Logarithm.new(left, right)
      when 'Surplus'
        eval_obj = OoTalk::Surplus.new(left, right)
      when 'GreaterThan'
        eval_obj = OoTalk::GreaterThan.new(left, right)
      when 'GreaterThanOrEqualTo'
        eval_obj = OoTalk::GreaterThanOrEqualTo.new(left, right)
      when 'EqualTo'
        eval_obj = OoTalk::EqualTo.new(left, right)
      when 'NotEqual'
        eval_obj = OoTalk::NotEqual.new(left, right)
      when 'LessThan'
        eval_obj = OoTalk::LessThan.new(left, right)
      when 'LessThanOrEqualTo'
        eval_obj = OoTalk::LessThanOrEqualTo.new(left, right)
      when 'And'
        eval_obj = OoTalk::And.new(left, right)
      when 'Nand'
        eval_obj = OoTalk::Nand.new(left, right)
      when 'Or'
        eval_obj = OoTalk::Or.new(left, right)
      when 'Nor'
        eval_obj = OoTalk::Nor.new(left, right)
      when 'Xor'
        eval_obj = OoTalk::Xor.new(left, right)
      else
        return
      end

      result = {}
      result['eval'] = eval_obj.to_s
      result['result'] = eval_obj.respond_to?(:exec) ? eval_obj.exec: eval_obj
      @result_dict['eval_' + @result_dict.keys.length.to_s] = result
      eval_obj
    end
  end
end
