# Tableless Model to validate number
class Number
  include ActiveModel::Validations
  attr_accessor :number

  validates :number, numericality: { only_integer: true }

  def initialize(number)
    @number = number
  end
end