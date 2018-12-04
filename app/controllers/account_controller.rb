class AccountController < ApplicationController
  before_action :authenticate_user!
  before_action :find_account, only: [:index, :edit, :update, :destroy]
  before_action :update_level, only: [:index]
	
	def index
	end

  def edit
    if current_user.id == @user.id
      render 'edit'
    else
      redirect_to action: "index", username: params[:username]
    end
  end

  def update
    if @user.update(account_params)
      flash[:success] = "This record has been updated successfully"
      redirect_to action: "index", username: current_user.username
    else
      flash[:danger] = "Error! Please check again"
      render 'index'
    end
  end

  private
   	def account_params
     	params.require(:user).permit(:name, :phone, :team, :password, :password_confirmation)
   	end

    def find_account
      @user = User.find_by(username: params[:username])
    end

    def update_level
      @user = User.find_by(username: params[:username])

      if @user.log.present? || @user.examination.present?
        @point = Examination.where(user_id: current_user.id).sum(:score) + @user.log.count

        if @point > 0
          @level = 1
        end

        if @point > 100
          @level = 2
        end

        if @point > 1000
          @level = 3
        end

        @user.update(level: @level)
      end
    end
end