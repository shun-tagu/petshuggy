class UsersController < ApplicationController
  def show  #Show.html.erbを表示するアクション
  	@user = User.find(params[:id]) #Userモデルからuserを探してきた
  end
end
