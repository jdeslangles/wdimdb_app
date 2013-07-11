class SearchController < ApplicationController
  def index
    @q = Movie.search(params[:q])
    @movies = @q.result(distinct: true) # 'distinct' will only get one instance of each article if they match my search
    if @q.result.empty?
      flash[:error] = "No matches for #{params[:q]["title_cont"]} - sorry :("
    end
  end

  def search
    index
    render :index
  end





end
