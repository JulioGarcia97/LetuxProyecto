module DeviseCustoms
	extend ActiveSupport::Concern

	included do 
		before_filter :custom_params, if: :devise_controller?
	end

	def custom_params
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
	end
end