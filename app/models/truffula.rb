class Truffula < ActiveRecord::Base
  belongs_to :parent, class_name: 'Truffula'
  has_many :children, foreign_key: 'parent_id', class_name: 'Truffula'

  def self.root
    where(parent_id: nil).first
  end
end
