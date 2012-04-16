CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',       # required
    :aws_access_key_id      => 'AKIAJOZHFEZALLKCKUOQ',       # required
    :aws_secret_access_key  => '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',       # required
    :region                 => 'ap-southeast-1'  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'logbooksk'                     # required
  #config.fog_host       = 'https://assets.example.com'            # optional, defaults to nil
  config.fog_public     = false                                   # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end