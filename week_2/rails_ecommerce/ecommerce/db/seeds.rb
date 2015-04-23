# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# LAPTOPS
# Laptop.create(brand:"", model:"", processor_brand:"",RAM:,price:, image:"")
Laptop.create(brand: "HP", model: "HP SlateBook 10-h000ss x2 Portátil convertible 10,1\"", processor_brand:"NVIDIA Tegra T40S 4-Plus-1 Quad", RAM: 2, price:199, image:"http://multimedia.fnac.com/multimedia/ES/images_produits/ES/Grand%20Scan%20produits%20techniques/1/9/9/0887758716991.gif")
Laptop.create(brand: "Asus", model: "Asus UX301LA-DE002H", processor_brand:"Intel Core i7-4558", RAM: 8, price: 2096.09, image: "http://static.fnac-static.com/multimedia/Images/ES/MC/fc/e8/22/2287868/1507-1.jpg")
Laptop.create(brand: "Toshiba", model: "Satellite S50-B-14Z", processor_brand:"Intel Core™ i7-5500U",RAM: 8 ,price: 799, image:"http://multimedia.fnac.com/multimedia/ES/images_produits/ES/Zoom%20Produit%20technique/7/4/1/4051528173147.jpg")
Laptop.create(brand: "VAIO SVF14N1J2E", model:"Sony", processor_brand:"Intel Core i3-4005U",RAM: 4 ,price: 972.30, image:"http://static.fnac-static.com/multimedia/Images/ES/MC/b3/24/1e/1975475/1507-1.jpg")


#BACKPACKS
# Backpack.create(name:"", capacity:, pockets:, waterproof:, image:"")