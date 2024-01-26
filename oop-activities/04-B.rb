#We have a Confection class representing baked desserts. Your job is to create a new subclass of Confection, named Cupcake and Banana Cake. Cupcakes and Banana Cakes need to be baked just like other confections, but cupcakes also need to be frosted afterward. Write a prepare method for your Cupcake and Banana Cake class that prints "Baking at 350 degrees for 25 minutes.", and then prints "Applying frosting" for Cupcake only.

class Confection
  def prepare
    puts "Baking at 350 degrees for 25 minutes."
  end
end

class Cupcake < Confection
  def apply_frosting
    puts "Applying Frosting."
  end
end

class Banana_Cake < Confection

end

my_cupcake = Cupcake.new
my_cupcake.prepare
my_cupcake.apply_frosting

my_banana_cake = Banana_Cake.new
my_banana_cake.prepare

