class <%= plural_class_name %>Controller < ApplicationController

  before_filter :load_client
  before_filter :check_load_style
 
  <%= controller_methods :actions %>
end
