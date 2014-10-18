//
//  TEnumerations.swift
//  swiftist
//
//  Created by kaku on 2014/10/18.
//  Copyright (c) 2014年 Mountain. All rights reserved.
//

import Foundation

func doEnumerations() {
    enum CompassPoint {
        case North
        case South
        case East
        case West
    }
    
    enum Planet {
        case Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
    }
    
    var directionToHead = CompassPoint.West
    directionToHead = .East
    
    directionToHead = .South
    switch directionToHead {
    case .North:
        println("Lots of planets have a north")
    case .South:
        println("Watch out for penguins")
    case .East:
        println("Where the sun rises")
    case .West:
        println("Where the skies are blue")
    }
    // 输出 "Watch out for penguins”
    
    let somePlanet = Planet.Earth
    switch somePlanet {
    case .Earth:
        println("Mostly harmless")
    default:
        println("Not a safe place for humans")
    }
    // 输出 "Mostly harmless”
    
    enum Barcode {
        case UPCA(Int, Int, Int)
        case QRCode(String)
    }
    
    var productBarcode = Barcode.UPCA(8, 85909_51226, 3)
    productBarcode = .QRCode("ABCDEFGHIJKLMNOP")
    
    switch productBarcode {
    case .UPCA(let numberSystem, let identifier, let check):
        println("UPC-A with value of \(numberSystem), \(identifier), \(check).")
    case .QRCode(let productCode):
        println("QR code with value of \(productCode).")
    }
    // 输出 "QR code with value of ABCDEFGHIJKLMNOP.”
    
    switch productBarcode {
    case let .UPCA(numberSystem, identifier, check):
        println("UPC-A with value of \(numberSystem), \(identifier), \(check).")
    case let .QRCode(productCode):
        println("QR code with value of \(productCode).")
    }
    // 输出 "QR code with value of ABCDEFGHIJKLMNOP."
    
    enum ASCIIControlCharacter: Character {
        case Tab = "\t"
        case LineFeed = "\n"
        case CarriageReturn = "\r"
    }
    
    enum Planet2: Int {
        case Mercury = 1, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
    }
    
    let earthsOrder = Planet2.Earth.toRaw()
    // earthsOrder is 3
    
    let possiblePlanet = Planet2.fromRaw(7)
    // possiblePlanet is of type Planet? and equals Planet.Uranus
    
    let positionToFind = 9
    if let somePlanet = Planet2.fromRaw(positionToFind) {
        switch somePlanet {
        case .Earth:
            println("Mostly harmless")
        default:
            println("Not a safe place for humans")
        }
    } else {
        println("There isn't a planet at position \(positionToFind)")
    }
    // 输出 "There isn't a planet at position 9
}