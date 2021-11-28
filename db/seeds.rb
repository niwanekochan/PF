# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 User.create!(last_name: "管理",
              fitst_name: "者",
              last_name_kana: "カンリ",
              first_name_kana: "シャ",
              email: "admin@admin",
              password: "admin1",
              password_confirmation: "admin1",
              is_admin: true)