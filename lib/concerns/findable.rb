require 'pry'

module Findable
  module ClassMethods
    # def find_by_name(name)
    #   objects = []
    #   ObjectSpace.each_object(self){|obj| objects << obj}
    #   objects.detect{|a| a.name == name}
    # end
    def find_by_name(name)
      objects_names = []
      objects = []
      ObjectSpace.each_object(self) do |obj|
        if objects_names.include?(obj.name) == false
          objects_names << obj.name
          objects << obj
        end
      end
      objects.detect{|a| a.name == name}
    end
  end
end
