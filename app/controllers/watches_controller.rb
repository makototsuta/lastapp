class WatchesController < ApplicationController

  def create
    @experience = Experience.find(params[:experience_id])
    @alreadywatch = Watch.find_by(ip: request.remote_ip, experience_id: params[:experience_id])
    if @alreadywatch
       redirect_back(fallback_location: root_path)
       flash[:notice] = "すでにプッシュ済みです"
    else
       @watch = Watch.create(experience_id: params[:experience_id], ip: request.remote_ip)
       redirect_back(fallback_location: root_path)
    end
  end
end
