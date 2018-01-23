ActiveAdmin.register User do

	permit_params :name, :email, :password, :password_confirmation
	
	form do |f|
		f.inputs do
			f.input :name
			f.input :email
			f.input :password
			f.input :password_confirmation
		end
		f.actions
	end

	index do
		column :id
		column :name
		column :email
		column :current_sign_in_at
		column :last_sign_in_at
		column :current_sign_in_ip
		column :last_sign_in_ip
		actions
	end
end
