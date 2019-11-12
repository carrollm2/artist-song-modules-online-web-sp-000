require 'pry'

module Findable
  module ClassMethods
    # def find_by_name(name)
    #   objects = []
    #   ObjectSpace.each_object(self){|obj| objects << obj}
    #   objects.detect{|a| a.name == name}
    # end
    def find_by_name(name)
      ObjectSpace.each_object(self) do |obj|
        if obj.name == name
          obj
        end
      end
    end

  end
end
