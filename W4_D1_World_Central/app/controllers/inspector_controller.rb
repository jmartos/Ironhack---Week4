class InspectorController < ApplicationController
  def new
    render "new"
  end

  def create
    @text = params[:text_inspection][:user_text]

    @word_count = @text.split(" ").length

    @reading_time = @word_count/(275/60)

    words = @text.split(" ")
    wf = Hash.new(0)
    words.each { |word| wf[word] += 1 }
    @list_freq = wf.sort_by{|k, v| v}.reverse.first 10
    @list_freq.to_s

    render "results"
  end

end
