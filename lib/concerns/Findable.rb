module Findable

  def find_by_name(name)
    @@all.detect{|o| o.name == name}
  end
end
