class ContactMailer < ApplicationMailer
	default from: "Web Luigi guerreros <luigi.guerreros@gmail.com>"

	def contact_send(params) @parameters=params mail(to:'luigi.guerreros@gmail.com',subject:@parameters[:subject]) end
end
