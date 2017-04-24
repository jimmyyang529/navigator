# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

Article.destroy_all

article_list = [

	{
		"name"=>"越南",
		"name"=>"寮國",
		"name"=>"柬埔寨",
		"name"=>"泰國",
		"name"=>"緬甸",
		"name"=>"馬來西亞",
		"name"=>"新加坡",
		"name"=>"菲律賓",
		"name"=>"汶萊",
		"name"=>"印尼",
		"name"=>"東帝汶"
	}
]

article_list.each do |article|

  Article.create(

  	:name => article["name"]
end