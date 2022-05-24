//
//  Athlete.swift
//  FavoriteAthlete
//
//  Created by Duliba Sviatoslav on 24.05.2022.
//

import Foundation

struct Athlete {
    let name: String
    let age: String
    let league: String
    let team: String
    
    var description: String {
        return "\(name) is \(age) years old and plays for the \(team) in the \(league)."
    }
}
