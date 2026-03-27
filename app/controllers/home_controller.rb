class HomeController < ApplicationController
  def index
    @release_count = Release.count
  end
end
