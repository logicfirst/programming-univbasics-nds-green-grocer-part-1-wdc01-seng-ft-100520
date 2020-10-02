require 'pry'

def find_item_by_name_in_collection(name, collection)
  count = 0
  while count < collection.length do 
    if collection[count][:item] == name
      return collection[count]
    end
    count += 1
  end
end

def consolidate_cart(cart)
  counter = 0
  new_cart = []

  while counter < cart.length do
    new_item = find_item_by_name_in_collection(cart[counter][:item], new_cart)
    if new_item 
      new_item[:count] += 1
    else
      new_item = {
        :item => cart[counter][:item],
        :price => cart[counter][:price],
        :clearance => cart[counter][:clearance],
        :count => 1
      }
      new_cart << new_item
    end
    counter += 1
  end
  new_cart
end





  