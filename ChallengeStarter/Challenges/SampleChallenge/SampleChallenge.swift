//
//  
//  SampleChallenge.swift
//  ChallengeStarter
//
//  Created by you on 2022-11-25.
//
//

import ChallengeBase

// MARK: - Challenge Algorithms
enum SampleChallenge_Algorithms : String, CaseIterable {
    case part01
    case part02
}


// MARK: - Challenge Class
class SampleChallenge : Challenge {
    // MARK: - Type Aliases
    typealias Algorithms = SampleChallenge_Algorithms
        
    
    // MARK: - Computed Properties
    var baseResourcePath: String {
        get {
            return #file
                .replacing(#"/Challenges/"#, with: "/Resources/")
                .replacing("/\(self.name).swift", with: "")
        }
    }
    
    var name: String {
        get { return String(String(describing: self).split(separator: ".")[1]) }
    }
}
