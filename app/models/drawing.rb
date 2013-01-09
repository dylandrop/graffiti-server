class Drawing < ActiveRecord::Base
  attr_accessible :lines
  serialize :multi_wrong, Array
end
