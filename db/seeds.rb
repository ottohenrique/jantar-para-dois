require 'yaml'

[User, Recipe, Market].each(&:delete_all)

User.create(username: 'otto.henrique', password: '12345')

YAML.load(File.read('./db/receitas.yml'))['receipes'].each do |recipe|
  Recipe.create(
    title: recipe['title'],
    ingredients: recipe['ingredients'],
    directions: recipe['directions'],
    image_url: recipe['image_url']
  )
end

[
  ['Mercadinho dona Lúcia'],
  ['Villa Real'],
  ['Pão de Açúcar'],
  ['Feira de bairro']
].each do |market|
  Market.create(name: market[0])
end