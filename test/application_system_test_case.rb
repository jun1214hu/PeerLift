require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :poltergeist, using: :phantomjs, screen_size: [1400, 1400]
end
