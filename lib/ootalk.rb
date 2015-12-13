# version
require 'ootalk/version'

# c extension
require "ootalkext/ootalkext"
include OotalkExt

# program components
require 'ootalk/program'
require 'ootalk/constant'
require 'ootalk/variable'
require 'ootalk/skip'
require 'ootalk/instruction'
require 'ootalk/operator'
require 'ootalk/assignment'
require 'ootalk/compound'
require 'ootalk/conditional'

# arithmetic operator
require 'ootalk/add'
require 'ootalk/subtract'
require 'ootalk/times'
require 'ootalk/divide'
require 'ootalk/surplus'
require 'ootalk/power'
require 'ootalk/logarithm'

# boolean operator
require 'ootalk/and'
require 'ootalk/not_and'
require 'ootalk/or'
require 'ootalk/not_or'
require 'ootalk/x_or'

# relational operator
require 'ootalk/equal_to'
require 'ootalk/not_equal'
require 'ootalk/greater_than'
require 'ootalk/greater_than_or_equal_to'
require 'ootalk/less_than'
require 'ootalk/less_than_or_equal_to'


# OoTalk module
module Ootalk
end
