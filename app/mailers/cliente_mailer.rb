class ClienteMailer < ActionMailer::Base
  default from: "evandro.macedo@servicenet.com.br"

	def welcome_message
		mail(
			:subject => 'E-mail enviado usando o Postmark',
			:to      => 'evandro.hcm@gmail.com',
			:tag     => 'Tag Postmark'
			)
	end

	def email_bonus(cliente)
		@cliente = cliente
		mail(to: @cliente.email, subject: 'Parabéns! Você ganhou 5 horas grátis.')
	end
end
