# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


recipes = Recipe.create([
	{ title: "Spinach and Cheese Omelet", content: "Got a hankering for some perfect cooked omelets? Check out this recipe...", category: "Breakfast" },
	{ title: "7 Quick Recipes Using Hard-Boiled Eggs", content: "Think hard-boiled eggs are boring? Think again — from grab-n-go...", category: "Breakfast" },
	{ title: "Banana Berry Baked Oatmeal", content: "Get the best out your morning meal by mixing together antioxidant-rich...", category: "Breakfast" },
	{ title: "High-Protein Chicken Salad", content: "If you have leftover rotisserie chicken or cooked chicken breast, make...", category: "Lunch" },
	{ title: "Lemon Garlic Chicken", content: "These moist, juicy chicken cutlets from Food Fanatic simmer in a...", category: "Lunch" },
	{ title: "Ham & Vegetable Egg Bake", content: "This ham and vegetable egg bake is a delicious way to fit a complete...", category: "Lunch" },
	{ title: "Instant Pot Creamy Mushroom and Kale Pasta", content: "Reminiscent of creamy beef stroganoff without the beef., this Instant Pot...", category: "Dinner" },
	{ title: "25 Low-Carb Dinners Under 15 Grams of Carbs", content: "If you’re following a low-carb diet, it’s important to prioritize...", category: "Dinner" },
	{ title: "30-Minute Thai Coconut Chicken Curry", content: "Mildly spicy and full of vegetables, this easy green chicken curry is the...", category: "Dinner" },
])

recipes.each do |recipe| 
	recipe.image.attach(
		io: File.open("./public/images/recipes-images/recipe-image-00#{recipe.id}.jpg"),
		filename: "recipe-image-00#{recipe.id}.jpg",
		content_type: 'application/jpg'
	) 
end	

blogs = Blog.create([
	{ title: "5 Reasons You Tire Quickly on Walks", content: "Increasing your step count with a daily walk is one of the easiest ways to start an exercise habit and improve your overall health. As with any fitness routine, it takes time to progress before...", category: "Walking"},
	{ title: "Your Fail-Safe Walking Formula For Weight Loss", content: "When it comes to movement, even small amounts of walking can have big benefits. Just five minutes can help you counteract the adverse effects of too much sitting, while 10 minutes a day...", category: "Walking"},
	{ title: "Is the Morning the Best Time to Walk?", content: "We can all agree there are numerous mental and physical benefits of walking. Whether it’s a structured walking program or simply adding 10 minutes wherever you can, walking can help improve your...", category: "Walking"},
	{ title: "What to Do When Your Initial Running Excitement Wears Off", content: "Over the past few months, runners everywhere have been lacing up — some for the very first time. According to MapMyRun, 2020 runs tracked in the app are up 144% over last year. With gym...", category: "Running"},
	{ title: "6 Ways Runners Can Benefit From Hiking", content: "If your running is feeling a little stale lately, or you’re having trouble motivating for yet another track workout, it might be time to consider switching things up. Many runners can benefit from...", category: "Running"},
	{ title: "8 Runners on Why Fall is Their Favorite Running Season", content: "Fall has long been the favorite season for runners across the globe. But what is it about autumn that’s so special for newbies and pros alike? The weather is part of it, but it comes...", category: "Running"},
	{ title: "10 Best Bike Helmets Under $100 in 2020", content: "While high-end helmets keep getting better, trickle-down technology means you’ll get more bang for your buck on entry-level models, too. From MIPS impact technology to great fitting retention...", category: "Cycling"},
	{ title: "10 Confusing Things About Cycling (and Their Explanations)", content: "Whether you’re just getting started or have been doing this for a while, cycling can be overwhelmingly technical and downright confusing. Beyond knowing how to take on corners and descents and...", category: "Cycling"},
	{ title: "10 Cycling Organizations That Support Diversity", content: "Whether it’s improving health, lowering the risk of disease, reducing stress, or providing a cost-effective means of transportation in urban environments, there are many benefits to a cycling...", category: "Cycling"},
])

blogs.each do |blog| 
	blog.image.attach(
		io: File.open("./public/images/blog-images/blog-image-00#{blog.id}.jpg"),
		filename: "blog-image-00#{blog.id}.jpg",
		content_type: 'application/jpg'
	) 
end	