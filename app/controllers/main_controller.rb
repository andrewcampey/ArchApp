class MainController < ApplicationController
  def main
	@context = current_user.contexts(true)
  end
end
