class MissionsController < ApplicationController
  layout "logged_in"

  def index
    @missions = Mission.all
    @missions.map! do |mission| 
      cat_mission = CatMission.new(cat: current_cat, mission: mission)
      ArchPresenter.present(cat_mission)
    end
  end

  def start
    response = StartMissionService.call(cat: current_cat, mission_id: params[:id], user: current_user, on_error: :response_object)
    redirect_to missions_path, flash: response.flash
  end
end