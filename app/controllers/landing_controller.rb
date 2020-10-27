class LandingController < ApplicationController
  layout false, only: [:index]

  def index
    @reports = Report.all
  end
end
