class Image < Asset
  has_attached_file :attachment, 
                    :styles => { :mini => '48x48>', :small => '100x100>', :product => '240x240>', :large => '600x600>' }, 
                    :default_style => :product,
                    :url => "products/:id/:style/:basename.:extension",
                    :path => "products/:id/:style/:basename.:extension",
                    :storage => "s3",
                    :s3_credentials => "#{RAILS_ROOT}/vendor/extensions/spree-heroku/config/aws_s3.yml",
                    # this is the name of whatever bucket you are using for this spree store
                    :bucket => "spree-images"
end