//
//  DictionaryMethods.swift
//  DictionaryMethods
//
//  Created by Jim Campagno on 12/28/16.
//  Copyright © 2016 Jim Campagno. All rights reserved.
//

import Foundation

class DictionaryMethods {
    
    // Questions #1, #2, #3, #6 and #7
    var starWarsHeroes = ["Luke Skywalker", "Princess Leia", "Han Solo", "Rey"]
    var starWarsVillains = ["Darth Vader", "Emperor Palpatine"]
    var starWarsDroids = ["R2-D2", "C-3P0", "IG-88", "BB-8"]
    var starWarsGangsters = ["Watto", "Jabba the Hutt"]
    var starWarsCharacters = [String : [String]]()
    
    // Question #4
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren")
    }
    
    // Question #5
    func remove(droid: String) -> Bool {
        let droidIndex = starWarsDroids.index(of: droid)
        if let droidIndex = droidIndex {
            starWarsDroids.remove(at: droidIndex)
            return true
        } else {
            return false
        }
    }
    
    // Question #6
    func createStarWarsCharacters() {
        starWarsCharacters["Heroes"] = starWarsHeroes
        starWarsCharacters["Villains"] = starWarsVillains
        starWarsCharacters["Droids"] = starWarsDroids
    }
    
    // Question #7
    func createStarWarsGangsters() {
        starWarsCharacters["Gangsters"] = starWarsGangsters
    }
    
    // Question #8
    func description(characters: [String : [String]]) -> String {
        var finalCharactersString = "--Star Wars Characters--"
        for (category, charactersList) in characters {
            let header = category.uppercased()
            finalCharactersString = finalCharactersString + "/n\(header)"
            
            for (index, character) in charactersList.enumerated() {
                finalCharactersString = finalCharactersString + "\n\(index + 1). \(character)"
            }
        }
        return finalCharactersString
    }
    
    // Question #9
    func addHearts() {
        for category in starWarsCharacters {
            let characterNames = starWarsCharacters[category.key]
            if var characterNames = characterNames {
                for (index, name) in characterNames.enumerated() {
                    let nameWithHearts = name.replacingOccurrences(of: "o", with: "❤️")
                    characterNames[index] = nameWithHearts
                }
                starWarsCharacters[category.key] = characterNames
            }
        }
    }
}
