require 'pry'

def find_item_by_name_in_collection(name, collection)
  counter = 0
  while counter < collection.length do 
    if name == collection[counter][:item]
       return collection[counter]
    else
       nil
    end
    counter += 1
  end
end

def consolidate_cart(cart)  
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  counter = 0
  new_cart = []

  while counter < cart.length do
    next_item = find_item_by_name_in_collection(cart[counter][:item], new_cart)
    if next_item
      next_item[:count] +=1
    else
      next_item = {
        item: cart[counter][:item],
        price: cart[counter][:price],
        clearance: cart[counter][:clearance],
        count: 1
      }
      new_cart << next_item
    end
    counter += 1
  end
  new_cart
end

  