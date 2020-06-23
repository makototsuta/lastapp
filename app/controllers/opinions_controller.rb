class OpinionsController < ApplicationController
  before_action :set_experience, only: [:create, :edit, :update]
  def create
    @opinion = @experience.opinions.build(opinion_params)
    respond_to do |format|
      if @opinion.save
        format.js { render :index }
      else
        format.html { redirect_to experience_path(@experience), notice: '投稿できませんでした...' }
      end
    end
  end
  def edit
    @opinion = @experience.opinions.find(params[:id])
    respond_to do |format|
      flash.now[:notice] = 'コメントの編集中'
      format.js { render :edit }
    end
  end
  def update
    @opinion = @experience.opinions.find(params[:id])
      respond_to do |format|
        if @opinion.update(opinion_params)
          flash.now[:notice] = 'コメントが編集されました'
          format.js { render :index }
        else
          flash.now[:notice] = 'コメントの編集に失敗しました'
          format.js { render :edit_error }
        end
      end
  end
  # 追加
  def destroy
    @opinion = Opinion.find(params[:id])
    @opinion.destroy
    respond_to do |format|
      flash.now[:notice] = 'コメントが削除されました'
      format.js { render :index }
    end
  end
  # ここまで
  private
  def opinion_params
    params.require(:opinion).permit(:experience_id, :content)
  end
  def set_experience
    @experience = Experience.find(params[:experience_id])
  end
end
