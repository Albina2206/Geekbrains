import UIKit

// 1 задание: квадратное уравнение ax^2+bx+c=0

var a:Double=5
var b:Double=2
var c:Double=3
var x1:Double = (-b+sqrt(D))/(2*a)
var x2:Double = (-b-sqrt(D))/(2*a)
var D:Double = (b*b)-4*a*c

if (D<0)
{
print ("нет корней")
} else
if (D==0){

print  (x1)
} else
if (D>0) {

(x1)
(x2)

}

//2 задание: Найти площадь,периметр и гипотенузу треугольника.

var x:Double=3
var y:Double=4
var S:Double = (x*y)/2

print( "площадь треугольника = \(S) ")

var z:Double = sqrt(pow(x,2 ) + pow(y,2))

print ("гипотенуза = \(z)")

var P=x+y+z
print ("периметр прямоугольника = \(P)")

//3 задание: Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.

var deposit:Float = 1000
var percent:Float = 15
percent = percent/100
var year1 = deposit + (deposit * percent)
var year2 = year1 + (year1 * percent)
var year3 = year2 + (year2 * percent)
var year4 = year3 + (year3 * percent)
var year5 = year4 + (year4 * percent)

print("сумма вклада через 5 лет будет \(year5)")



