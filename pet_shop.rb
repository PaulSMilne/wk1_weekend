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
    for pet in hash
        if hash[:pets][counter][:breed] == pet_breed
            breed_array << pet_breed
        end
        counter +=1
    end
    return breed_array
end

