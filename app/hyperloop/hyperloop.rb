
require 'opal'
#require 'react/react-source'
require 'hyper-react'
# require 'webpack/client_and_server.js'
require 'reactrb/auto-import'
require 'hyper-operation'
require 'hyper-store'

if React::IsomorphicHelpers.on_opal_client?
  require 'opal-jquery'
  require 'browser'
  require 'browser/interval'
  require 'browser/delay'
  # require 'opal_hot_reloader'
  # OpalHotReloader.listen(25222, true)
end

# require 'hyper-mesh'

require_tree './components'
#require_tree './lib'
# require_tree './models'
require_tree './operations'
require_tree './stores'
