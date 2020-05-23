class OpinionsController < ApplicationController
  def create

    @experience = Experience.find(params[:experience_id])
    @opinion = @experience.opinions.build(opinion_params)

    respond_to do |format|
      if @opinion.save
        format.js { render :index }
      else
        format.html { redirect_to experience_path(@experience), notice: '投稿できませんでした...' }
      end
    end
  end
  private

  def opinion_params
    params.require(:opinion).permit(:experience_id, :content)
  end
end
