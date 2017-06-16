# implement a ::my_attr_accessor macro, which should do exactly the same
#   thing as the real attr_accessor: it should define setter/getter methods.

class AttrAccessorObject
  def self.my_attr_accessor(*names)
    names.each do |name|

      define_method(name) do
        instance_variable_get("@#{name}")
      end

      define_method("#{name}=") do |val|
        instance_variable_set("@#{name}", val)
      end

    end
  end
end
