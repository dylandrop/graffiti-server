class Drawing < ActiveRecord::Base
  attr_accessible :lines
  serialize :lines, Array
end
