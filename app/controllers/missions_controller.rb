class MissionsController < ApplicationController
  layout false
  respond_to :json

  def index
    @missions = Mission.all
    @missions.map! do |mission|
      cat_mission = CatMission.new(cat: current_cat, mission: mission)
      ArchPresenter.present(cat_mission)
    end
  end

  def start
    response = StartMissionService.call(cat: current_cat, mission_id: params[:id], user: current_user)
    redirect_to missions_path, flash: response.flash
  end
end