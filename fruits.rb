#throwとcatchを使った大域脱出

fruits = ['apple', 'melon', 'orange']
numbers = [1, 2, 3]
catch :done do
  fruits.shuffle.each do |fruit|
    numbers.shuffle.each do |n|
      puts "#{fruit}, #{n}"
      if fruit == 'orange' && n == 3
        #全ての繰り返し処理を脱出する
      　throw :done
      end
    end
  end
end