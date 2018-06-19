# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


company = Company.create({name:"35inputs",logo:"images/logo.png",headline:"We create webtech from your ideas to your users."})
section1 = Section.create({name:"Servicios",company:company})
section2 = Section.create({name:"Contactanos",company:company})
section3 = Section.create({name:"Portofolio",company:company})
