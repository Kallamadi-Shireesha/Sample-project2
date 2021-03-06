class MenuItem < ActiveRecord::Base
  validates :menu_id, presence: true
  validates :name, length: { minimum: 2 }
  validates :description, length: { minimum: 10 }
  

  belongs_to :menu, touch: true
  

  # ? Shows Menu Based on menu_id
  def self.menu_by_id(id)
    all.where(menu_id: id)
  end
end
