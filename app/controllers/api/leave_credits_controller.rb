class Api::LeaveCreditsController < ApplicationController
    before_action :set_leave_credits, only: [:update, :destroy]

    def index
      leave_credits = LeaveCredit.all

      render json: leave_credits
    end

    def create
      leave_credits = LeaveCredit.create(leave_credit_params)

      render json: leave_credits
    end

    def update
      leave_credits = @leave_credits.update(leave_credit_params)

      render json: leave_credits
    end

    def destroy

    end

    private

    def set_leave_credits
      @leave_credits = LeaveCredit.find(params[:id])
    end

    def leave_credit_params
        params.require(:leave_credit).permit(:id, :credits, :leave_type)
    end
end