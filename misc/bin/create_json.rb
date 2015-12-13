require "json"

def create_dic(left, right)
  dic = {
    Program: {
      Add: {
        Left: {
          Constant: {
            Left: left
          }
        },
        Right: {
          Constant: {
            Left: right
          }
        }
      }
    }
  }

end

array = []
run_times = 3000
run_times.times do
  array.push(create_dic(rand(1..10),rand(1..10)))
end

puts array.to_json
