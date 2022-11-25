//
//  main.swift
//  ChallengeStarter
//
//  Created by you on 2022-11-25.
//

import Foundation

let resourceSets = ["example"]

// MARK: - Direct Declaration
// Invoke using direct declarations
var day01 = SampleChallenge.Solution00(datasets: resourceSets, algorithms: [.part01, .part02])
day01.execute()
