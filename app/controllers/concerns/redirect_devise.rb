module RedirectDevise
	extend ActiveSupport::Concern

	def after_sign_in_path_for(resource)
		home_path
	end
end