forester = Provider.create(name: 'Лесник', address: 'Лес', phone_number: '+375111111111')
hunter = Provider.create(name: 'Охотник', address: 'Лес', phone_number: '+375222222222')
fisher = Provider.create(name: 'Рыбак', address: 'Опушка у реки', phone_number: '+375333333333')
baker = Provider.create(name: 'Пекарь', address: 'Печка *зачёркнуто* Пекарня', phone_number: '+375444444444')

sanders = Author.create(name: 'Полковник', surname: 'Сандерс', country: 'США')
mc_donald = Author.create(name: 'Мак', surname: 'Макдоналд', country: 'США')
ramsi = Author.create(name: 'Гордон', surname: 'Рамзи', country: 'Великобритания')

pies = Group.create(name: 'Пироги')
not_pies = Group.create(name: 'Не пироги')

berry_burger = Dish.create(name: 'Ягодный бургер', group: not_pies)
fish_sandwich = Dish.create(name: 'Рыбный бутерброд', group: not_pies)
wolf_pie = Dish.create(name: 'Волчий пирог', group: pies)

berry_burger_recipe = Recipe.create(
  name: 'Рецепт ягодного бургера',
  description: 'Кладём ягоды между булочек.',
  author: mc_donald,
  dish: berry_burger
)
fish_sandwich_recipe = Recipe.create(
  name: 'Рецепт рыбного бутерброда',
  description: 'Кладём рыбу на батон.',
  author: ramsi,
  dish: fish_sandwich
)
wolf_pie_recipe = Recipe.create(
  name: 'Рецепт волчьего пирога',
  description: 'Варим волка. Что там дальше делают чтобы получился пирог?',
  author: sanders,
  dish: wolf_pie
)
wolf_pie_recipe_2 = Recipe.create(
  name: 'Рецепт волчьего пирога №2',
  description: 'Если волк приготовит пирог, его тоже можно назвать волчьим.',
  author: mc_donald,
  dish: wolf_pie
)

berries = Ingredient.create(
  name: 'Ягоды',
  provider: forester,
  dish: berry_burger
)
bun = Ingredient.create(
  name: 'Булочка',
  provider: baker,
  dish: berry_burger
)
loaf = Ingredient.create(
  name: 'Батон',
  provider: baker,
  dish: fish_sandwich
)
fish = Ingredient.create(
  name: 'Рыба',
  provider: fisher,
  dish: fish_sandwich
)
wolf = Ingredient.create(
  name: 'Волк',
  provider: hunter,
  dish: wolf_pie
)
flour = Ingredient.create(
  name: 'Мука и другие штуки для пирога',
  provider: baker,
  dish: wolf_pie
)

RecipeItem.create(
  preparation_method: 'Помыть',
  gram_per_kilogram_of_dish: 500,
  colories_per_gram: 9000,
  ingredient: berries,
  recipe: berry_burger_recipe
)
RecipeItem.create(
  preparation_method: 'Разрезать пополам',
  gram_per_kilogram_of_dish: 500,
  colories_per_gram: 1337,
  ingredient: bun,
  recipe: berry_burger_recipe
)
RecipeItem.create(
  preparation_method: 'Нарезать если не нарезан, если нарезан не резать',
  gram_per_kilogram_of_dish: 300,
  colories_per_gram: 8000,
  ingredient: loaf,
  recipe: fish_sandwich_recipe
)
RecipeItem.create(
  preparation_method: 'Почистить и пожарить',
  gram_per_kilogram_of_dish: 700,
  colories_per_gram: 1000,
  ingredient: fish,
  recipe: fish_sandwich_recipe
)
RecipeItem.create(
  preparation_method: 'Ощипать и сварить',
  gram_per_kilogram_of_dish: 999,
  colories_per_gram: 1000,
  ingredient: wolf,
  recipe: wolf_pie_recipe
)
RecipeItem.create(
  preparation_method: 'Сделать всё что делают со штуками для пирога',
  gram_per_kilogram_of_dish: 1,
  colories_per_gram: 228,
  ingredient: flour,
  recipe: wolf_pie_recipe
)
RecipeItem.create(
  preparation_method: 'Попросить приготовить пирог',
  gram_per_kilogram_of_dish: 0,
  colories_per_gram: 0,
  ingredient: wolf,
  recipe: wolf_pie_recipe_2
)

PriceList.create(date: Date.today, price: 10, provider: forester, ingredient: berries)
PriceList.create(date: Date.today, price: 5, provider: baker, ingredient: bun)
PriceList.create(date: Date.today, price: 5, provider: baker, ingredient: loaf)
PriceList.create(date: Date.today, price: 2, provider: baker, ingredient: flour)
PriceList.create(date: Date.today, price: 10, provider: fisher, ingredient: fish)
PriceList.create(date: Date.today, price: 1000, provider: hunter, ingredient: wolf)
PriceList.create(date: Date.yesterday, price: 2000, provider: hunter, ingredient: wolf)
PriceList.create(date: Date.today - 2.days, price: 100, provider: hunter, ingredient: wolf)
PriceList.create(date: Date.today - 5.days, price: 771, provider: hunter, ingredient: wolf)
