module ApplicationHelper

	def login_helper
		if user_signed_in? 
	  	link_to 'Inicio', home_path 
	  else 
			(link_to 'Iniciar Sesión', new_user_session_path) +
			' | ' +
			(link_to 'Crear Cuenta', new_user_registration_path)
	  end 
	end
end
