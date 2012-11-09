# ---------------------------------
# Paths
# ---------------------------------
set :css_dir   , "public/stylesheets"
set :js_dir    , "public/javascripts"
set :images_dir, "public/images"
set :build_dir , "build/public"

# ---------------------------------
# Livereload
# ---------------------------------
activate :livereload, :apply_js_live => true

# ---------------------------------
# Helpers
# ---------------------------------
helpers do
  def timestamp
    Time.now.to_i
  end

  def server_name
    env['SERVER_NAME'] || 'localhost'
  end

  # method for get stylesheets and javascripts of template
  def path_assets
    arr_classes = page_classes.split( ' ' )

    if arr_classes.length < 2
      arr_classes[ 0 ]
    elsif arr_classes.length == 3
      arr_section = arr_classes[ 2 ].split( '_' )
      arr_section[ 1 ] + '/' + arr_section[ 2 ]
    elsif arr_classes.length == 4
      arr_section = arr_classes[ 3 ].split( '_' )
      arr_section[ 1 ] + '/' + arr_section[ 2 ] + '/' + arr_section[ 3 ]
    end
  end

end

# ---------------------------------
# Build-specific configuration
# ---------------------------------
configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Use relative URLs
  activate :relative_assets

  # Compress PNGs after build
  activate :smusher
end