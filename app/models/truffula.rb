class Truffula < ActiveRecord::Base
  class VirtualRoot
    def id
      'root'
    end
  end

  belongs_to :parent, class_name: 'Truffula'
  has_many :children, foreign_key: 'parent_id', class_name: 'Truffula'

  def self.children_for_id id
    if id == 'root'
      where(parent_id: nil)
    else
      find(id).children
    end
  end

  def self.root
    VirtualRoot.new
  end
end
