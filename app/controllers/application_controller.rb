class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  require 'open-uri'

  def generate_html
    doc = Nokogiri::HTML(open("https://www.cifraclub.com.br/legiao-urbana/pais-filhos/simplificada.html"))
    render :text => doc
  end
end
