class LiveController < ApplicationController
  def page
    # render_component
    # render inline: "<%= react_component '::Page', @rails_react_variables, { prerender: true} %>", layout: 'application'
  end
end
