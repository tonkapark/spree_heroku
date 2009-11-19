# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class HerokuExtension < Spree::Extension
  version "1.1"
  description "Spree Heroku Extension"
  url "http://github.com/tonkapark/spree_heroku"

  # Please use heroku/config/routes.rb instead for extension routes.

  # def self.require_gems(config)
  #   config.gem "gemname-goes-here", :version => '1.2.3'
  # end
  
  def activate
    # admin.tabs.add "Heroku", "/admin/heroku", :after => "Layouts", :visibility => [:all]
    
    Image.attachment_definitions[:attachment] = {
      :styles => { 
                  :mini => '48x48>', 
                  :small => '100x100>', 
                  :product => '240x240>', 
                  :large => '600x600>' 
                  },
      :default_style => :product,
      :storage => :s3,
      :s3_credentials => "#{HerokuExtension.root}/config/s3.yml",      
      :path => "products/:id/:style/:basename.:extension"
      }    
  end
end