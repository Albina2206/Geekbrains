import UIKit


enum engine: String {
    case on = "Запущен"
    case off = "заглушен"
    
}
enum actEngine {
    case start
    case turnOff
    
    }

enum Windows: String {
    
    case open = "Открыты"
    case close = "Закрыты"
    
}

enum Body {
    
    case emptyBody (empty: String)
    case fullBody (full: String)
    case Cargo (kg: Double)
    
}

struct Car {
    var brand: String
    var year: Int
    var Obem: Body
    var Engine: engine
    var Windows: Windows
    var obemFullBody: Double
    
    mutating func ActionEngine (action: engine) {
    switch action {
    case .off:
    print(action.rawValue)
        self.Engine = .off
    case .on:
        print(action.rawValue)
        self.Engine = .on
    }
}
    func description() {
        print ("Автомобиль \(brand), \(year) года выпуска. Двигатель \(Engine.rawValue). кузов \(Obem).")
    }
}


struct truck {
    
    var brand: String
    var year: Int
    var Obem: Body
    var Engine: engine
    var Windows: Windows
    var obemFullBody: Double
    
    
    
    mutating func actEngine(action: actEngine){
        
        switch action {
        case .start:
        self.Engine = .off
        case .turnOff:
        self.Engine = .on
        }
    }
    func printEngine () {
        print(Engine.rawValue)
    }
    func description() {
        print ("Автомобиль \(brand), \(year) года выпуска. Двигатель \(Engine.rawValue). кузов \(Obem).")
}
    
}

var carnumb1 = Car (brand: "Subaru", year: 2005, Obem: .emptyBody(empty: "пустой"), Engine:  .on, Windows:  .close, obemFullBody: 35)
var carnumb2 = Car (brand: "Toyota", year: 2015, Obem: .fullBody(full: "Полный кузов"), Engine: .off, Windows: .close, obemFullBody: 60)

var truck1 = truck (brand: "Mersedes", year: 2008, Obem: .emptyBody(empty: "пустой"), Engine:  .on, Windows:  .close, obemFullBody: 600)
var truck2 = truck (brand: "Kamaz", year: 2010, Obem: .Cargo (kg: 500.5), Engine:  .off, Windows:  .open, obemFullBody:800)

carnumb1.brand
carnumb1.ActionEngine(action: .off)
carnumb1.ActionEngine(action: .on)
carnumb1.Obem
carnumb1.Windows
carnumb1.obemFullBody
carnumb1.description()

carnumb2.brand
carnumb2.ActionEngine(action: .on)
carnumb2.Obem
carnumb2.Windows
carnumb2.obemFullBody
carnumb2.description()

truck1.brand
truck1.actEngine(action: .start)
truck1.Obem
truck1.Windows
truck1.obemFullBody
truck1.description()

truck2.brand
truck2.actEngine(action: .turnOff)
truck2.Obem
truck2.Windows
truck2.obemFullBody
truck2.description()


