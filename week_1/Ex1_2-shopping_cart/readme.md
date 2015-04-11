# Week 1 - Exercise 2
## The Shopping Cart
```ruby
class ShoppingCart
    attr_accessor :item_list, :season, :sunday
    def initialize(season = nil, sunday = false)
        @item_list = Hash.new
        @season = season
        @sunday = sunday
    end
  # I've kept the original catalogue, which is actually the same than the spring one
   @@catalogue = Hash[
       :apple => ["apple", 10],
       :orange => ["orange", 5],
       :grape => ["grape", 15],
       :banana => ["banana", 20],
       :watermelon => ["watermelon", 50]
       ]
    @@catalogue_spring = Hash[
       :apple => ["apple", 10],
       :orange => ["orange", 5],
       :grape => ["grape", 15],
       :banana => ["banana", 20],
       :watermelon => ["watermelon", 50]
       ]
    @@catalogue_summer = Hash[
       :apple => ["apple", 10],
       :orange => ["orange", 2],
       :grape => ["grape", 15],
       :banana => ["banana", 20],
       :watermelon => ["watermelon", 50]
       ]
    @@catalogue_autumn = Hash[
       :apple => ["apple", 15],
       :orange => ["orange", 5],
       :grape => ["grape", 15],
       :banana => ["banana", 20],
       :watermelon => ["watermelon", 50]
       ]
    @@catalogue_winter = Hash[
       :apple => ["apple", 12],
       :orange => ["orange", 5],
       :grape => ["grape", 15],
       :banana => ["banana", 21],
       :watermelon => ["watermelon", 50]
       ]
   
   def catalogue
       case @season
       when "spring"
       @@catalogue_spring
       when "summer"
       @@catalogue_summer
       when "autumn"
       @@catalogue_autumn
       when "winter"
       @@catalogue_winter
        else
            @@catalogue
        end
   end
   
   def add(item, units = 1)
       if @item_list.include?(item)
          @item_list[item] += units
        else
            @item_list.store(item, units)
        end
    end
    
    def price(item)
        case item
        when :apple
        return  ((@item_list[item]/2).to_i + @item_list[item]%2 )* catalogue[item][1] # 2x1 Offer
        when :orange
        return  ((@item_list[item]/3).to_i*2 + @item_list[item]%2 )* catalogue[item][1] # 3x2 Offer
        when :grape
        return @item_list[item] * catalogue[item][1]
        when :banana
        return @item_list[item] * catalogue[item][1]
        when :watermelon
        if @sunday
            return ((@item_list[item] * catalogue[item][1])/2)
        else
            return @item_list[item] * catalogue[item][1]
        end
        end
    end
    
    def item_name(item) # To add the plural if necessary
        if item_list[item] > 1
            catalogue[item][0] + "s"
        else
            catalogue[item][0]
        end
    end
    
    def show
       @item_list.keys.each {|i|
       puts "#{item_list[i]} #{item_name(i)}: #{price(i)}$"
       }
        if @item_list[:grape] >= 4
            puts "For buying #{@item_list[:grape]} grapes you get #{@item_list[:grape]/4.to_i} for free!"
            # Banana per each 4 grapes
        end
    end
end
```
