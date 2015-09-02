require 'pry'
require 'httparty'

class AdventuresController < ApplicationController

  # before_action :authenticate, only: [:save]

  # def search
  #   # binding.pry
  # end

  def index
    # shows specific user's adventures
    # if session[:user_id] && params[:id].to_i == session[:user_id]
      # i can't grab the params[:id] before the page is actually rendered
      # so how do i check to make sure they're on the correct :id path?
    if session[:user_id]
      @adventures = Adventure.where(user_id:session[:user_id])
    else

      flash[:error] = "Where are you going?"
      redirect_to login_path
    end
  end
  def new
    # @adventure = Adventure.new

    @stereotypes = Stereotype.all
    
  end
# ehhhh, this method may be unnecessary
  

  def create
    if session[:user_id]
      adventure = Adventure.create(session[:new_adventure])
      session.delete(:new_adventure)
      redirect_to user_adventures_path(session[:user_id])
    else
      flash[:error] = "Gotta log in first if you wanna save"
      redirect_to login_path
      
    end
  end


# Had to make a form with a get method to adventures/results so we could pass the input to the results method
  def results
    @stereotype = Stereotype.find(params[:stereotype][:id])
    # grab random restaurant
    @restaurant = @stereotype.restaurants.sample
    # grab random bar
    @bar = @stereotype.bars.sample
    # grab random weekend activity
    @weekend = @stereotype.weekends.sample
    
    # yelp api requests
    puts Time.now.to_s + " about to hit yelp for restaurant"
    parameters = { term: @restaurant.restaurant_name, limit: 1 }
    @restaurant_data = Yelp.client.search('New York', parameters)
    
    puts Time.now.to_s + " about to hit yelp for bar"
    parameters = { term: @bar.bar_name, limit: 1 }
    @bar_data = Yelp.client.search('New York', parameters)
    # END OF yelp api requests

    puts Time.now.to_s + " about to save yelp to db"
    b = Bar.find(@bar.id)
    b.update(review: @bar_data.businesses.first.snippet_text, display_address: @bar_data.businesses.first.location.display_address, url: @bar_data.businesses.first.url)
    a = Restaurant.find(@restaurant.id)
    a.update(review: @restaurant_data.businesses.first.snippet_text, display_address: @restaurant_data.businesses.first.location.display_address, url: @restaurant_data.businesses.first.url)
    
    if @stereotype.stereotype_name == "hipster"
      my_instagram_url = 'https://api.instagram.com/v1/tags/brooklynhipster/media/recent?client_id='+ENV["instagram_api"]
    elsif @stereotype.stereotype_name == "brogrammer"
      my_instagram_url = 'https://api.instagram.com/v1/tags/'+@stereotype.stereotype_name+'/media/recent?client_id='+ENV["instagram_api"]
    elsif @stereotype.stereotype_name == "tourist"
      my_instagram_url = 'https://api.instagram.com/v1/tags/awkwardtourist/media/recent?client_id='+ENV["instagram_api"]
    elsif @stereotype.stereotype_name == "iBanker"
      my_instagram_url = 'https://api.instagram.com/v1/tags/investmentbanking/media/recent?client_id='+ENV["instagram_api"]  
    end
    puts Time.now.to_s + " about to go to instagram: " + my_instagram_url
################### DONT MESS WITH PC'S CODE  ##############################
    @res = HTTParty.get(my_instagram_url)['data'].sample(3)
    
    @new_adventure = Adventure.new(user_id:session[:user_id],restaurant_id:@restaurant.id,bar_id:@bar.id,weekend_id:@weekend.id)
    session[:new_adventure] = @new_adventure
    # render json: session[:new_adventure]
##########################################################################
    puts Time.now.to_s + " after instagrma"

  end

  def save
    Adventure.create({user_id: params[:user_id], restaurant_id: params[:restaurant_id], bar_id: params[:bar_id], weekend_id: params[:weekend_id]})
  end

  def fake_results
    
  end


end

