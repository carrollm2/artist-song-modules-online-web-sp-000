module Findable
  module ClassMethods
    def find_by_name(name)
      objects = []
      ObjectSpace.each_object(self){|obj| objects << obj}
      objects.reverse.detect{|a| a.name == name}
    end
  end
end
