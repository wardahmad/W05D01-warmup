class Shop
    attr_accessor :stock

    def random
        ran_char = ('A'..'Z').to_a.sample
        ran_num = (100..999).to_a.sample
        p "#{ran_char}#{ran_num}"

    end

    def add_product(name,price,stock = 1)
        @name = name
        @price = price
        @stock = stock
        p "name:#{@name} price:#{@price}  stock:#{@stock}"
    end

    def sale(num)

    end

    def stock=(number)
        @stock = number
    end

    def purchase

    end

    def show_products

    end
end


test = Shop.new
test.stock(333)


#################################################################

class Product
    attr_reader :name
    attr_accessor :price
    attr_accessor :stock
​
def initialize (name,price,stock=1)
@name=name
@price=price
@stock=stock
end
end
​
class Shop
    attr_accessor :products
def initialize (shop_name)
    @name=shop_name
    @products=[]
    @persentage=0
​
id = ('a'..'z').to_a.sample
no = rand(101..110)
 @shop_id= '#{id}#{no}'
​
end
def add_product (name,price,stock)
    products.push(Product.new(name,price,stock))
end
​
​
def sale(persentage)
    puts "Hooray! We have a #{persentage} sale!"
    discount=(persentage).to_f/100
    puts discount
    for product in products
        discount_value=product.price* discount
        product.price=product.price-discount_value
        puts "#{product.name} is now #{product.price}"
        
    end
end
​
​
def show_products
    puts "\nOur Products:"
    for product in products
        puts "-------"
        puts "Product Name: #{product.name}\nPrice: #{product.price}\nStock: #{product.stock}"
    end
end
def purchase (name,amount)
    for product in products
        if (product.name.downcase==name.downcase)
            if (amount<=product.stock)
                product.stock-=amount
                puts "#{product.name} purchased!"
                puts "New stock is now #{product.stock}"
            else
                puts "Warning: Out of stock."
            end
        end
    end
end
​
def stock(product_name)
    for product in products
        if (product_name.downcase=product.name.downcase)
            puts product.stock
        end
    end
​
end
def remove_product (product_name)
    for product in products
​
    if (product.name.downcase==product_name.downcase)
        p_index=products.index(product)
        products.delete_at(p_index)
    end
end
​
end
​
end #of class Shop.
​
​
shop = Shop.new("Supermarket")
shop.add_product("Apples", 10, 5)
shop.add_product("Bananas", 6, 2)
shop.show_products 
shop.sale(50)
shop.purchase("Bananas",1)
shop.remove_product("Bananas")
shop.show_products 
​
​# by Sara Alahmadi
​
​
#shop.add_product("Apples", 10)