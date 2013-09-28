require 'html_assets/version'

module HtmlAssets
  autoload(:Config, 'html_assets/config')
  autoload(:TiltHtml, 'html_assets/tilt_html')

  if defined?(Rails) && defined?(::Rails::Engine)
    require 'html_assets/engine'
  else
    require 'sprockets'
    Sprockets.register_engine '.html', TiltHtml
  end
end
