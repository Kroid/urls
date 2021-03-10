class ShortUrlsController < ApplicationController
  def create
    short_url = ShortUrl.create!(create_params)
    render json: {
      short: short_url.short
    }
  end

  def show
    short_url.increment!(:visits_count)
    render json: {
      long: short_url.long
    }
  end

  def stats
    render json: {
      visits_count: short_url.visits_count
    }
  end

  private

  def create_params
    params.permit(:long)
  end

  def short_url
    @short_url ||= ShortUrl.find_by!(short: params[:id])
  end
end
