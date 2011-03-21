class ReferenceGeneratorController < ApplicationController
  def luhn
    @reference = Luhnacy.generate(15)
  end

end
