
import Foundation

class MorseCodeConversion {
    
    let alphabetToCode:Dictionary<String, String > = [
        
        "A": "•-",
        
        "B": "-•••",
        
        "C": "-•-•",
        
        "D": "-••",
        
        "E": "•",
        
        "F": "••-•",
        
        "G": "--•",
        
        "H": "••••",
        
        "I": "••",
        
        "J": "•---",
        
        "K": "-•-",
        
        "L": "•-••",
        
        "M": "--",
        
        "N": "-•",
        
        "O": "---",
        
        "P": "•--•",
        
        "Q": "--•-",
        
        "R": "•-•",
        
        "S": "•••",
        
        "T": "-",
        
        "U": "••-",
        
        "V": "•••-",
        
        "W": "-••-",
        
        "X": "•------",
        
        "Y": "-•--",
        
        "Z": "--••"
        
    ]
    

    let codeToAlphabet: Dictionary<String, String> = [
        "•-" : "A",
        
        "-•••" : "B",
        
        "-•-•" : "C",
        
        "-••" : "D",
        
        "•" : "E",
        
        "••-•" : "F",
        
        "--•" : "G",
        
        "••••": "H",
        
        "••" : "I",
        
        "•---" : "J",
        
        "-•-": "K",
        
        "•-••": "L",
        
        "--" : "M",
        
        "-•" : "N",
        
        "---" : "O",
        
        "•--•": "P",
        
        "--•-" : "Q",
        
        "•-•" : "R",
        
        "•••" : "S",
        
        "-" : "T",
        
        "••-" : "U",
        
        "•••-" : "V",
        
        "-••-" : "W",
        
        "•------" : "X",
        
        "-•--" : "Y",
        
        "--••" : "Z"]
    
    // input is a normal string like
    func convertToMorseCode ( alphaString : String ) -> String {
        var morseCode : String = ""
        for character in alphaString {
            if let code = alphabetToCode[String(character)] {
                morseCode += code + "|"
            }
        }
        return morseCode;
    }
    
    // input is morse code seperated by |
    func convertToAlphabet ( morseCode : String ) -> String {
        var alphaString : String = ""
        var myArray = morseCode.componentsSeparatedByString("|")
        for alpha in myArray {
            println(codeToAlphabet[alpha])
            if let alphabet = codeToAlphabet[alpha] {
                alphaString += alphabet
            }
           
        }
        return alphaString
        
    }
    
}

var mcc : MorseCodeConversion  =  MorseCodeConversion()
mcc.convertToMorseCode("GOOD")

mcc.convertToAlphabet( "-•••|•-|-••")

