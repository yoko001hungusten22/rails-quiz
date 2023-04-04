# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Category.find_or_create_by(category_name:"ALL")
Category.find_or_create_by(category_name:"試験")
Category.find_or_create_by(category_name:"ビジネス")
Category.find_or_create_by(category_name:"生活")
Category.find_or_create_by(category_name:"学問")
Category.find_or_create_by(category_name:"プログラミング")
Category.find_or_create_by(category_name:"ヘルスケア")
Category.find_or_create_by(category_name:"スポーツ")
Category.find_or_create_by(category_name:"ゲーム")
Category.find_or_create_by(category_name:"恋愛")
Category.find_or_create_by(category_name:"その他")

Study.find_or_create_by(question: "地球の色は？",answer: "青色",category_id: Category.first.id)