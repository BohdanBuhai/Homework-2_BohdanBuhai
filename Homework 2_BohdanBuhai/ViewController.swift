//
//  ViewController.swift
//  Homework 2_BohdanBuhai
//
//  Created by Bohdan on 5/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let inctanseSailor = Sailor(nameSailor: "Bohdan")
        inctanseSailor.introduceMyself()
        
        addSailors()
        addUnits()
        
        inctanseTavern.enterTavern(hero: jone)
        
        let example1 = 2.pow(to: 3)
        let example2 = 2.pow(to: 4)
        let example3 = 2.pow(to: 5)
        
        print("\(example1), \(example2), \(example3)")
        let inctanseShip = Ship(nameShip: "Ukrasne", arreySaillors: arreySailor)
        inctanseShip.introduceAll()
        
    }
    
    // MARK: Task 3
    func addSailors() {
        arreySailor.append(sailor1)
        arreySailor.append(sailor2)
        arreySailor.append(sailor3)
        arreySailor.append(sailor4)
        arreySailor.append(sailor5)
    }
}
// MARK: Task 1

class Sailor {
    let nameSailor: String
    
    init(nameSailor: String) {
        self.nameSailor = nameSailor
        
    }
    
    func introduceMyself() {
        print("Мене звати \(nameSailor)")
    }
}
// MARK: Task 2

class Ship {
    let nameShip: String
    var arreySaillors: [Sailor]
    
    init(nameShip: String, arreySaillors: [Sailor]) {
        self.nameShip = nameShip
        self.arreySaillors = arreySaillors
    }
    
    func introduceAll() {
        arreySaillors.forEach { $0.introduceMyself()}
        print("Ми з корабля \(nameShip)")
    }
}
// MARK: Task 3

var arreySailor = [Sailor]()
let sailor1 = Sailor(nameSailor: "Bob")
let sailor2 = Sailor(nameSailor: "Jec")
let sailor3 = Sailor(nameSailor: "Alys")
let sailor4 = Sailor(nameSailor: "Sem")
let sailor5 = Sailor(nameSailor: "Jon")

func addSailors() {
    arreySailor.append(sailor1)
    arreySailor.append(sailor2)
    arreySailor.append(sailor3)
    arreySailor.append(sailor4)
    arreySailor.append(sailor5)
}

// MARK: Task 4

final class Titanic: Ship {
    
    override func introduceAll() {
        super.introduceAll()
        
        arreySaillors.forEach { $0.introduceMyself()}
        print("We are from the ship \(nameShip)")
    }
}

final class TitanicSailor: Sailor {
    
    override func introduceMyself() {
        print("My name is \(self.nameSailor)")
    }
}
//MARK: task 5

class Calculator {
    func adding(v1: Int, v2: Int) -> Int {
        v1 + v2
    }
    
    func subtraction(v1: Int, v2: Int) -> Int {
        v1 - v2
    }
    
    func multiply(v1: Int, v2: Int) -> Int {
        v1 * v2
    }
    
    func dividing(v1: Int, v2: Int) -> Int {
        v1 / v2
    }
}

class CalculatorPro: Calculator {
    
    func culculatePercentage(percent velue: Int, _ v2: Int) -> Int {
        (velue * v2) / 100
    }
    
    func upToPower(v1: Int, inPow v2: Int) -> Decimal {
        let velue = (pow(Decimal(v1), v2))
        return velue
    }
}
// MARK: Task 6

final class SuperProCalc: CalculatorPro {
    
    func calculateDepozit(priz cum: Int, percent perc: Int, time month: Int) {
        print(cum)
        let percentSum = culculatePercentage(percent: perc, cum)
        var cuont = month
        var newSum = cum - percentSum
        
        while cuont != 0 {
            newSum -= percentSum
            print(newSum)
            cuont -= 1
        }
    }
}
// MARK: Task 7

protocol Movable {
    
    func run()
}

protocol Fightable {
    
    func fight()
}

protocol Hero: Movable, Fightable {
    var name: String { get }
}
// MARK: Task 8

struct Farmer: Movable {
    func run() {
        print("Farmer. Uoy need to run")
    }
}

struct Cleener: Movable {
    func run() {
        print("Cleener. Uoy need to run")
    }
}

struct Butcher: Fightable {
    func fight() {
        print("Butcher. Uoy need to fight")
    }
}

struct Warrior: Fightable {
    func fight() {
        print("Warrior. Uoy need to fight")
    }
}
struct Hero1: Hero {
    var name: String
    
    func run() {
        print("\(name) Uoy need to run")
    }
    
    func fight() {
        print("\(name) Uoy need to fight")
    }
}

struct Hero2: Hero {
    var name: String
    
    func run() {
        print("\(name) Uoy need to run")
    }
    
    func fight() {
        print("\(name) Uoy need to ")
    }
}
// MARK: Task 9

final class Tavern {
    
    var movers: [Movable] = []
    var fighters: [Fightable] = []
    
    func enterTavern(hero: Hero) {
        hero.fight()
        movers.forEach { $0.run()}
        fighters.forEach { $0.fight() }
    }
}
//MARK: Task 10
let bob = Farmer()
let alice = Cleener()
let jeck = Butcher()
let sem = Warrior()
let jone = Hero1(name: "Jone")
let anne = Hero2(name: "Anne")

let inctanseTavern = Tavern()

func addUnits() {
    inctanseTavern.movers.append(bob)
    inctanseTavern.movers.append(alice)
    inctanseTavern.fighters.append(jeck)
    inctanseTavern.fighters.append(sem)
}

// MARK: Task 12
extension Int {
    func pow(to: Int) -> Int {
        var resalt = 1
        for _ in 0..<to {
            resalt *= self
        }
        return resalt
    }
}



