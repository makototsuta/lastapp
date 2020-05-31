class OpinionsController < ApplicationController
  def create

    @experience = Experience.find(params[:experience_id])
    @opinion = @experience.opinions.build(opinion_params)

    respond_to do |format|
      if @opinion.save
        format.js { render :index }
      else
        flash.now[:notice] = '投稿できませんでした。'
        format.html { redirect_to experience_path(@experience) }
      end
    end
  end
  private

  def opinion_params
    params.require(:opinion).permit(:experience_id, :content)
  end
end
