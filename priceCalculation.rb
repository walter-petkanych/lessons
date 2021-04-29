supliers = {
    'dc' => {
        'shipingcost' => 60,
        'shipingTime' => 5,
        'brands' => {
            'SwissKrono' => {
                'SwissKronoСategory1' => 500,
                'SwissKronoСategory2' => 520,
                'SwissKronoСategory3' => 540,
                'SwissKronoСategory4' => 560,
                'SwissKronoСategory5' => 580,
                'SwissKronoСategory6' => 600,
                'SwissKronoСategory7' => 620,
                'SwissKronoСategory8' => 640,
                'SwissKronoСategory9' => 660,
                'SwissKronoСategory10' => 680
            },
            'Egger' => {
                'EggerСategory1' => 800,
                'EggerСategory2' => 820,
                'EggerСategory3' => 840,
                'EggerСategory4' => 860,
                'EggerСategory5' => 880,
                'EggerСategory6' => 800,
                'EggerСategory7' => 820,
                'EggerСategory8' => 840,
                'EggerСategory9' => 860,
                'EggerСategory10' => 880,
                'EggerСategory11' => 900
            }
        }
    },
    'tomek' => {
        'shipingcost' => 80,
        'shipingTime' => 5,
        'brands' => {
            'SwissKrono' => {
                'SwissKronoСategory1' => 505,
                'SwissKronoСategory2' => 525,
                'SwissKronoСategory3' => 545,
                'SwissKronoСategory4' => 565,
                'SwissKronoСategory5' => 585,
                'SwissKronoСategory6' => 605,
                'SwissKronoСategory7' => 625,
                'SwissKronoСategory8' => 645,
                'SwissKronoСategory9' => 665,
                'SwissKronoСategory10' => 685
            },
            'Egger' => {
                'EggerСategory1' => 820,
                'EggerСategory2' => 840,
                'EggerСategory3' => 860,
                'EggerСategory4' => 880,
                'EggerСategory5' => 900,
                'EggerСategory6' => 920,
                'EggerСategory7' => 940,
                'EggerСategory8' => 960,
                'EggerСategory9' => 980,
                'EggerСategory10' => 1000,
                'EggerСategory11' => 1020
            }
        }
    },
    'berest' => {
        'shipingcost' => 100,
        'shipingTime' => 10,
        'brands' => {
            'SwissKrono' => {
                'SwissKronoСategory1' => 490,
                'SwissKronoСategory2' => 510,
                'SwissKronoСategory3' => 530,
                'SwissKronoСategory4' => 550,
                'SwissKronoСategory5' => 570,
                'SwissKronoСategory6' => 590,
                'SwissKronoСategory7' => 610,
                'SwissKronoСategory8' => 630,
                'SwissKronoСategory9' => 650,
                'SwissKronoСategory10' => 670
            }
        }
    },
    'viar' => {
        'shipingcost' => 120,
        'shipingTime' => 10,
        'brands' => {
            'SwissKrono' => {
                'SwissKronoСategory1' => 500,
                'SwissKronoСategory2' => 520,
                'SwissKronoСategory3' => 540,
                'SwissKronoСategory4' => 560,
                'SwissKronoСategory5' => 580,
                'SwissKronoСategory6' => 600,
                'SwissKronoСategory7' => 620,
                'SwissKronoСategory8' => 640,
                'SwissKronoСategory9' => 660,
                'SwissKronoСategory10' => 680
            },
            'Egger' => {
                'EggerСategory1' => 820,
                'EggerСategory2' => 840,
                'EggerСategory3' => 860,
                'EggerСategory4' => 880,
                'EggerСategory5' => 900,
                'EggerСategory6' => 920,
                'EggerСategory7' => 940,
                'EggerСategory8' => 960,
                'EggerСategory9' => 980,
                'EggerСategory10' => 1000,
                'EggerСategory11' => 1020
            }
        }
    }
} #добавити остальні продукти(категорії дсп) та постачальників зі своїми продуктами
surcharge = {'SwissKrono' => 25, 'Egger' => 40} #ще один хеш з інформацією яка націнка на якого виробника
productList = [] #пустий масив
supliers.each do |key, value| # проходимось по хєшу отримуєм ключ(категорія) та значення(ціна)
    value['brands'].each do |key, value| #
        value.each do |key, value|
            productList.push(key) # записуємо в масив ключі(категорії)
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
answer = 
p('sssss')
p(choosenProduct)
p(choosenProduct)
#supliers.each do |key, value| # проходимось по хєшу отримуєм ключ(категорія) та значення(ціна)
#    value[choosenProduct].each do |key, value| #
#        p(choosenProduct)
#        value.each do |key, value|
#            productList.push(value) # записуємо в масив значення(ціни)
#        end
#    end
#end