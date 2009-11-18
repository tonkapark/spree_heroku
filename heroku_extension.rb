# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class HerokuExtension < Spree::Extension
  version "1.0"
  description "Spree Heroku Extension"
  url "http://github.com/tonkapark/spree_heroku"

  # Please use heroku/config/routes.rb instead for extension routes.

  # def self.require_gems(config)
  #   config.gem "gemname-goes-here", :version => '1.2.3'
  # end
  
  def activate
    # admin.tabs.add "Heroku", "/admin/heroku", :after => "Layouts", :visibility => [:all]
  end
end