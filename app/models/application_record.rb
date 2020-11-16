class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  include Discard::Model

  def destroy
    self.discard
  end
end
