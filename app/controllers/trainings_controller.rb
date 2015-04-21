class TrainingsController < ApplicationController
  layout false
  respond_to :json

  def index
    @trainings = Training.all
    @trainings.map! do |training|
      cat_training = CatTraining.new(cat: current_cat, training: training)
      cat_training = ArchPresenter.present(cat_training)
    end
  end

  def start
    response = StartTrainingService.call(cat: current_cat, training_id: params[:id], user: current_user)
    redirect_to trainings_path, flash: response.flash
  end
end