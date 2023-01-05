require 'dry/system'
require 'dry/system/container'
require 'bootsnap'

class App < Dry::System::Container
  use :env, inferrer: -> { ENV.fetch("RACK_ENV", :development).to_sym }
  use :zeitwerk
  use :bootsnap

  configure do |config|
    config.component_dirs.add "lib"
  end
end
