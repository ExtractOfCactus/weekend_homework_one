def pet_shop_name(name)
  return name[:name]
end

def total_cash(shop)
  return shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, amount)
  return shop[:admin][:total_cash] += amount
end

def pets_sold(shop)
  return shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, amount)
  return shop[:admin][:pets_sold] += amount
end

def stock_count(shop)
  return shop[:pets].length
end

def pets_by_breed(shop, breed)
  pet_arr = []
  for pet in shop[:pets]
    if pet[:breed] == breed
      pet_arr.push(:pets)
    end
  end
  return pet_arr
end

def find_pet_by_name(shop, pet_name)
  for pet in shop[:pets]
    if pet[:name] == pet_name
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(shop, pet_name)
  result = find_pet_by_name(shop, pet_name)
  if result != nil
    shop[:pets].delete(result)
  end
end

def add_pet_to_stock(shop, new_pet)
  shop[:pets] << new_pet
end

def customer_pet_count(cust_pet_hash)
  cust_pet_hash[:pets].length
end

def add_pet_to_customer(cust_pet_hash, new_pet)
  cust_pet_hash[:pets] << (new_pet)
end

def customer_can_afford_pet(cust_pet_hash, new_pet)
  cust_pet_hash[:cash] >= new_pet[:price]? true : false
end
