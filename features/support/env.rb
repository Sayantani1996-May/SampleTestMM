TEST_DATA_DIR = "./features/test_data"


require 'watir-webdriver'
require 'watir-page-helper/commands'

World WatirPageHelper::Commands

WatirPageHelper.create

After do
  WatirPageHelper.browser.cookies.clear
end

if ENV['HEADLESS'] == 'true'
  require 'headless'

  headless = Headless.new
  headless.start

  at_exit do
    headless.destroy
  end
else
  at_exit do
    WatirPageHelper.close
  end
end
