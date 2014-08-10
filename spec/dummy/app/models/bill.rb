class Bill < ActiveRecord::Base
  acts_as_currency :paid,:outstanding
end
