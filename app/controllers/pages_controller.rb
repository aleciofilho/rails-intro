class PagesController < ApplicationController
  
  def home

  end
  
  def about_us
    
  end

  def contact
    @members = %w[ alecio vitor dudu ]

    if params[:member].present?
      @members = @members.select do |member|
        member == params[:member]
      end 
    end
  end

end
