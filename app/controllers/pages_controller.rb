class PagesController < ApplicationController

  def index
  end

  after_filter :set_access_control_headers

    def set_access_control_headers
      headers['Access-Control-Allow-Origin'] = '*'
      headers['Access-Control-Request-Method'] = '*'
    end

end
