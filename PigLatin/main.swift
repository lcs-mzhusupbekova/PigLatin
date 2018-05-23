//
//  main.swift
//  PigLatin
//

import Foundation

// INPUT
// Global variable, tracks how many words we can expect to have to translate to Pig Latin
var countOfExpectedWordsToTranslate = 3

// Write a loop to actually collect the expected count of words to be translated from user
// e.g.: write the rest of the INPUT section
while true {
    print("How many words will be provided?")
    
    guard let givenInput = readLine() else {
        // If someone enters nil input, just skip to the next line
        continue
    }
    
    guard let givenInteger = Int(givenInput) else {
        continue
    }
    
    if givenInteger < 0 || givenInteger > 10 {
        continue
    }
    countOfExpectedWordsToTranslate = givenInteger
    break
}

// PROCESS & OUTPUT
// Implement the primary logic of the problem here
// Some output may be given here if you desire

// Collect the words to be translated
for counter in 1...countOfExpectedWordsToTranslate {
    
    // Ask user for the word to be translated
    print("Enter word #\(counter):")
    
    // Create a variable that has the translated word
    var translatedWord = ""
    
    // Get the input (use guard-let to guarantee it is not nil)
    // and then print it out
    guard let givenInput = readLine() else {
        // If someone enters nil input, just skip to the next line
        continue
    }
    
    // Replace this logic with the correct logic
    var vowelFound = false
    var suffix = ""
    var prefix = ""
    for letter in givenInput {
        // print(letter)
        if vowelFound == false {
            switch letter {
            case "A","U", "I", "E", "O":
                vowelFound = true
            default:
                vowelFound = false
            }
            
            
        }
        
        if vowelFound == true {
            suffix += String(letter)
        }
        if vowelFound == false {
            prefix += String(letter)
        }
        
        translatedWord = suffix + prefix + "AY"
        
        
    }
    print(translatedWord)
    
}
