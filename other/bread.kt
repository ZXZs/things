// inspired by https://habr.com/ru/post/153845/

typealias Recipe = Map<Ingredient, Int>

enum class Ingredient {
    PASS
}

interface Goods;

class Bread: Goods;
class Pasty(val filling: Filling): Goods;
class Cake: Goods;
class Brick: Goods;

class Shop(val catalog: Map<Goods, Int>) {
    fun countAllPrices(): Int {
        return catalog.values.sum()
    }
}

enum class Filling {
    MEAT, CABBAGE
}

class Gas;

class GasOven(val gas: Gas): Oven();

class Furnance {
    fun burnBrick(): Brick {
        return Brick()
    }
}

open class Oven {
    fun bakeBread(recipe: Recipe): Bread {
        return Bread();
    }
    
    fun bakePasty(filling: Filling, recipe: Recipe): Pasty {
        return Pasty(filling);
    }
    
    fun bakeCake(recipe: Recipe): Cake {
        return Cake();
    }
}

fun main() {
    val furnance = Furnance();
    val brick1 = furnance.burnBrick();
    val brick2 = furnance.burnBrick();
    val shop = Shop(mapOf(brick1 to 1000, brick2 to 500));
    println(shop.countAllPrices())
}
