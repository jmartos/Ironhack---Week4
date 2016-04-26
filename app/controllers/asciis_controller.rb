class AsciisController < ApplicationController
  def new
    render "new"
  end

   def create

    @text = params[:text_for_asciis][:user_text]
    @artii = Artii::Base.new :font => 'slant'
    @artii.asciify(@text).split("\n")

    render "results"
  end

end
