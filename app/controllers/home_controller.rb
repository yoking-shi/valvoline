class HomeController < ApplicationController
  def index
    Rails.cache.write('test', 'aaaa')
  end
end
