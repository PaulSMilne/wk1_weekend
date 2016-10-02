def pet_shop_name(array)
    @pet_shop[:name]
end

def total_cash(array)
    @pet_shop[:admin][:total_cash]
end

def add_or_remove_cash_add(array, addition)
    @pet_shop[:admin][:total_cash] + addition
end
