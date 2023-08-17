# == Schema Information
#
# Table name: movies
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  client_id  :bigint
#
class Movie < ApplicationRecord
  include ActiveModel::Validations
  #relaciones
  belongs_to :client, optional: true
  #validaciones
  validates :name, presence: true

  def to_s
    self.name
  end

  def self.invalido_movie(nameEncontrado)
    #si movie no existe que returna nil
    if Movie.exists?(name: nameEncontrado )

      return nil  
    end
  end
end
