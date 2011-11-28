Factory.define :user do |user|
	user.email	"Jack@jackson.jack"
	user.password "password"
	user.password_confirmation "password"
	user.remember_me true
end

Factory.define :corporation do |corp|
	corp.name "Nike Faggots"
	corp.email "faggot@nike.gay"
	corp.password "password"
	corp.password_confirmation "password"
	corp.remember_me true
end
