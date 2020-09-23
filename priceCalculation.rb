supliers = {
    'dc' => {
        'shipingcost' => 60,
        'shipingTime' => 5,
        'brands' => {
            'SwissKrono' => {
                'category1' => 500,
                'category2' => 510,
                'category3' => 520
            }
        }
    },
    'berest' => {
        'shipingcost' => 100,
        'shipingTime' => 10,
        'brands' => {
            'SwissKrono' => {
                'category1' => 500,
                'category2' => 510,
                'category3' => 520
            }
        }
    }
} #добавити остальні продукти(категорії дсп) та постачальників зі своїми продуктами
surcharge = {'SwissKrono' => 25}
productList = []
supliers.each do |key, value|
    value['brands'].each do |key, value|
        value.each do |key, value|
            productList.push(key)
        end
    end
end
productList.uniq! # == productList = productList.uniq
puts('choose product')
productList.each_with_index do |element, i|
    puts("#{element} #{i + 1}")
end
num = gets().chomp().to_i()
choosenProduct = productList[num - 1]
p(choosenProduct)