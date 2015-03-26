class MissionsController < ApplicationController
  layout "logged_in"
  def index
    @missions = Mission.all
    @missions.map! { |mission| CatMission.new(cat: current_cat, mission: mission) }
    logger.debug(@missions)
  end
  def start
  end
end