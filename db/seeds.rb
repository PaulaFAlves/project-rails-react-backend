# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Propriedade.create(nome: 'Fazenda do João', especie: '1', cultivar: '1', area: 200, unidade:'m2')
Propriedade.create(nome: 'Cooperativa da Maria', especie: '1', cultivar: '1', area: 200, unidade:'m2')
Propriedade.create(nome: 'Sítio do Joaquim', especie: '1', cultivar: '1', area: 200, unidade:'m2')

Especie.create(nome: 'Alface')
Especie.create(nome: 'Berinjela')

Cultivare.create(nome: 'Palmas', especie_id: '1')
Cultivare.create(nome: 'Prado', especie_id: '1')
Cultivare.create(nome: 'Brava', especie_id: '1')
Cultivare.create(nome: 'Morella', especie_id: '2')
Cultivare.create(nome: 'Niobe', especie_id: '2')
Cultivare.create(nome: 'Bilbo', especie_id: '2')