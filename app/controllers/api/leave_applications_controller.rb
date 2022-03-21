class Api::LeaveApplicationsController < ApplicationController
    before_action :set_application, only: [:update, :delete]

    def index
      leave_application = LeaveApplication.all

      render json: leave_application
    end

    def create
      leave_application = LeaveApplication.new(leave_application_params)

      if leave_application.save
        render json: leave_application
      else
        render json: leave_application.errors
      end
    end

    def update
      leave_application = @leave_application.update(leave_application_params)

      if leave_application
        render json: "Successfully Updated shit"
      end
    end

    def destroy
      
      if @leave_application.delete
        render json: "Successfully Deleted shit"
      end
    end

    private

    def set_application
     @leave_application = LeaveApplication.find(params[:id])
    end

    def leave_application_params
      params.require(:leave_application).permit(:id, :days, :status, :start_date, :end_date)
    end
end