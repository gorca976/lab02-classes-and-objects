import Foundation

/**
 Represents a number as a fraction of two integers
 
 */
class Fraction {
    
    var num: Int; //Numerator
    var den: Int; //Denominator
    
    // INITIALISERS
    /**
        Default initialiser
        Numerator gets set to 0 and denominator gets set to 1
    */
    init(){
        //Setting numerator to 0 and
        //denominator to 1 is quivalent
        //to setting the fraction to zero
        self.num = 0
        self.den = 1
    }
}
