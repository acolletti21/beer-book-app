class Api::V2::PairingsController < ApplicationController
  def index
    @pairings = Pairing.all
  end

  def create
    @pairing = Pairing.create(
                              title: params[:title],
                              author: params[:author],
                              genre: params[:genre],
                              beer_name: params[:beer_name],
                              alcohol: params[:alcohol]
                              )
    render :show
  end

  def show
    @pairing = Pairing.find(params[:id])
  end

  def update
    @pairing = Pairing.find(params[:id])
    @pairing.update(
                    title: params[:title],
                    author: params[:author],
                    genre: params[:genre],
                    beer_name: params[:beer_name],
                    alcohol: params[:alcohol]
                    )
  render :show
  end

  def destroy
    @pairing = Pairing.find(params[:id])
    @pairing.destroy
    render json: {message: "Successfully deleted pairing"}
    #render nothing: true # this works too
  end

end