class WelcomeController < ApplicationController
  layout :resolve_layout

  def home
  end

  private

  def resolve_layout
    case action_name
    when "home"
      "home_page"
    end
  end
end
