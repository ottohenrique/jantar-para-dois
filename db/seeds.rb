require 'yaml'

User.create(username: 'johndoe@example.com', password: 'projetoconclusao')

YAML.load(File.read('./db/receitas.yml'))['receipes'].each do |recipe|
  Recipe.create(
    title: recipe['title'],
    ingredients: recipe['ingredients'],
    directions: recipe['directions'],
    image_url: recipe['image_url']
  )
end