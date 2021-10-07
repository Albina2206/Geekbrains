import UIKit
// 1 задание: Функция,которая определяет четное и нечетное число.

func EvenOddNumbers (number: Int)  {
   
    if (number % 2 == 0) {
        print (" четное число")
    } else {
        print("нечетное число")
    }
}
   
EvenOddNumbers(number:15)
EvenOddNumbers(number:50)



 // 2 задание: Функция,которая определяет, делится ли число без остатка на 3.

func DividingBy3 (number:Int){
    if number % 3 == 0 {
        print("число делится на 3")
    } else {
        print("чилос не делится на 3")
    }
}

DividingBy3(number:9)
DividingBy3(number:17)


// 3 задание: возрастающий массив из 100 числел.


var Line: Array<Int> = []
for i in 1...100{
    Line.append(i)
}
print(Line)



// 4 задание: Удалить из  этого массива все четные числа и все числа,которые не делятся на 3.


for element in Line {
   
  if  (element % 2) == 0 || (element % 3) == 0 {
    Line.remove (at: Line.firstIndex(of: element)!)
    }
}
print(Line)


// 5 задание: Функция,которая добавляет в массив новое число Фибоначчи и добавить при помощи нее 50 элементов.


func fibonacсi(numb: Int) -> [Float] {
    var fibArray: [Float] = [1,2]
for i in 0...numb {
    fibArray.append(fibArray[i] + fibArray[i+1])
}
return fibArray
}
print(fibonacсi(numb: 50))


// 6: Заполнить массив из 100 элементов различными простыми числами

var Array = [Int](2...600)
for divider in Array {
    for element in Array {
        if element % divider == 0 && element != divider
        {
            Array.remove(at: Array.firstIndex(of: element)!)
        }
    }
        if Array.count > 100 {
            Array.removeLast()
        
    }
}
print(Array.count)
    



