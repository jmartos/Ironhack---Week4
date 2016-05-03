class ConcertsController < ApplicationController

  def index
    @concerts = Concert.order(date: :asc)
    @concerts_today = @concerts.where('date BETWEEN ? AND ?', DateTime.now.beginning_of_day, DateTime.now.end_of_day).all.order(date: :asc)
    @concerts_next_month = @concerts.where('date BETWEEN ? AND ?', DateTime.now.beginning_of_day, (Date.today + 30.days)).all.order(date: :asc)
  end

  def new
    @concert = Concert.new
  end

  def create
    @concert = Concert.new concert_params
    if @concert.save
      redirect_to concerts_path
    else 
      render "new"
    end
  end

  def show
    @concert = Concert.find_by(id: params[:id])
    unless @concert
      render "no_concert_found"
    end
  end

  def all
    @concerts = Concert.order(date: :desc)
  end

  private
  def concert_params
    params.require(:concert).permit(:artist,:venue,:city,:date,:price,:description)
  end
end


