module ApplicationHelper
	def controller?(controller)
		controller.include?(params[:controller]) #引数が現在のコントローラーと一致したらtrueを返す
	end

	def action?(action)
		action.include?(params[:action]) #引数が現在のアクションに含まれていたらtrueを返す
	end

end