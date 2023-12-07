class ApplicationController < ActionController::API

  def index
    if params[:color].present? && params[:color].length == 6
      @r = params[:color][0..1].to_i(16)
      @g = params[:color][2..3].to_i(16)
      @b = params[:color][4..5].to_i(16)
      @message = "{\"R\": #{@r}, \"G\": #{@g}, \"B\": #{@b}, \"msg\": \"Successful conversion!\", \"status\": 200}"
    else
      @message = '{"R": 0, "G": 0, "B": 0, "msg": "Did you pass a proper hex color code?", "status": 405}'
    end
    render plain: @message
  end
end
