
for i in 0..10
	user = User.new do |user|
		user.name = "Testador #{i}"
		user.email = "testador#{i}@ecej.com"
		user.password = 'senhateste'
		user.password_confirmation = 'senhateste'
		user.confirmed_at = DateTime.now
		user.confirmation_sent_at = DateTime.now
		user.active = true
		user.completed = true
		user.lot_id = nil
	end
	if user.save
		Rails.logger.info "#{user.name} foi adicionado"
	else
		Rails.logger.info "Não foi possível adicionar #{user.name}. Erros:\n\t #{user.errors.full_messages}"
	end
end
