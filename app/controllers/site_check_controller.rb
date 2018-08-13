class SiteCheckController < ApplicationController
  def index
  	@last_check = State.last
  	@status_check = State.order(created_at: :desc).limit(10)
  end
end
