def pet_shop_name(hash)
    hash[:name]
end

def total_cash(hash)
    hash[:admin][:total_cash]
end

def add_or_remove_cash(hash, amount)
    hash[:admin][:total_cash] = total_cash(hash) + amount
end

def pets_sold(hash)
    hash[:admin][:pets_sold]
end

def increase_pets_sold(hash, amount)
    hash[:admin][:pets_sold] = pets_sold(hash) + amount
end

def stock_count(hash)
    counter=0
    for pet in hash[:pets]
        counter += 1
    end
    counter
end

def pets_by_breed(hash, pet_breed)
    breed_array = []
    counter = 0
    for pet in hash[:pets]
        if hash[:pets][counter][:breed] == pet_breed
            breed_array << hash[:pets][counter]
        end
        counter += 1
    end
    return breed_array
end

def find_pet_by_name(hash, pet_name) 
    match = nil
    for pet in hash[:pets]
        if pet[:name] == pet_name
            match = pet
        end
    end
    return match
end

def remove_pet_by_name(hash, pet_name)
    for pet in hash[:pets]
        hash[:pets].delete_if { |pet| pet[:name] == pet_name}
    end
end

def add_pet_to_stock(hash, new_pet)
    hash[:pets] << new_pet
end

