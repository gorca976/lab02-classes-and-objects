import Foundation

/**
 Represents a number as a fraction of two integers
 
 */
class Fraction {
    
    var num: Int; //Numerator
    var den: Int; //Denominator
    
    // COMPUTED PROPERTIES
    
    /**
     Converts fraction to a Float value
     
     - returns: Float Decimal value of the fraction
     */
    var decimal: Float {
        get {
            // num and den are of type Int, therefore,
            // they need to be explicitly converted to Floats
            return Float(self.num)/Float(self.den);
        }
    }
    
    /**
     Converts object to a string description
     
     - returns: String String representation of a fraction
     */
    var description: String {
        return "\(self.num)/\(self.den)"
    }
    // INITIALISERS
    /**
        Default initialiser
        Numerator gets set to 0 and denominator gets set to 1
    */
    convenience init(){
        self.init(num: 0, den: 1);
    }
    init(num : Int, den : Int){
        assert(den != 0, "Denominator cannot be zero")
        self.num = num
        self.den = den
        
    }
    /**
     Convenience initialiser
     
     Numerator is set to some value, denominator
     is set to 1.
     
     - parameter num: Fraction's numerator
     */
    convenience init(num : Int) {
        self.init(num: num, den: 1);
    }
    
    // METHODS
    
    /**
     Adds a fraction to self.
     
     - parameter f: Fraction to add to self
     
     - returns: Fraction The result of adding f to self.
     */
    func add(_ f: Fraction) -> Fraction {
        return Fraction(num: self.num*f.den + self.den*f.num,
                        den: self.den*f.den)
    }
    
    /**
     Subtracts fraction from self.
     
     - parameter f: Fraction to subtract from self
     
     - returns: Fraction The result of subtracting f from self.
     */
    func subtract(_ f: Fraction) -> Fraction {
        return Fraction(num: self.num*f.den - self.den*f.num,
                        den: self.den*f.den)
    }
    
    /**
     Multiplies self by a fraction.
     
     - parameter f: Fraction to multiply self by
     
     - returns: Fraction The result of multiplying self by f.
     */
    func multiply(_ f: Fraction) -> Fraction {
        return Fraction(num: self.num*f.num, den: self.den*f.den)
    }
    
    /**
     Divides self by a fraction.
     
     - parameter f: Fraction to divide self by
     
     - returns: Fraction The result of dividing self by f.
     */
    func divide(_ f: Fraction) -> Fraction {
        return Fraction(num: self.num*f.den, den: self.den*f.num)
    }
}
