def pet_shop_name(array)
    array[:name]
end

def total_cash(array)
    array[:admin][:total_cash]
end

def add_or_remove_cash(array, amount)
    array[:admin][:total_cash] = total_cash(array) + amount
end