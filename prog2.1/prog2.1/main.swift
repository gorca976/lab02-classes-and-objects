//
//  main.swift
//  prog2.1
//
//  Created by Calum Gordon on 7/18/18.
//  Copyright © 2018 Calum Gordon. All rights reserved.
//

import Foundation

// Create and initialise a new Fraction object
var u: Fraction

// Initialise the object
u = Fraction(num: 2,den: 3)

// Show the state of the object's internal variables
print("u=\(u.description)")
print("decimal value of u=\(u.decimal)")

// Define and create a new instance of a Fraction object
var x: Fraction = Fraction(num: -5)

print("x=\(x.description)")
print("decimal value of x=\(x.decimal)")

var z = x.add(x)
print(z.description)
