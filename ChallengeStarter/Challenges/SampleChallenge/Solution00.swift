//
// 
//  Solution00.swift
//  ChallengeStarter
//
//  Created by you on 2022-11-25.
//
//

import ChallengeBase

extension SampleChallenge {
    class Solution00 : SampleChallenge, Solution {
        // MARK: - Type Aliases
        typealias Input = [Int]
        typealias Output = Int
        
        
        // MARK: - Properties
        var testCases: [TestCase<Input, Output>] = []
        var selectedResourceSets: [String] = []
        var selectedAlgorithms: [Algorithms] = []
        
        
        // MARK: - Initializers
        init(datasets: [String] = [], algorithms: [Algorithms] = []) {
            self.selectedResourceSets = datasets
            self.selectedAlgorithms = algorithms
        }
        
        
        // MARK: - Solution Methods
        // Step 1: Assemble
        func assemble(_ input: String, _ output: String? = nil) -> (Input, Output?) {
            let depths = input.integerList()
            
            let increases = output?.integerList()[0]
            
            return (depths, increases)
        }

        // Step 2: Activate
        func activate(_ input: Input, algorithm: Algorithms) -> Output {
            switch algorithm {
            case .part01:
                return part01(input)
            case .part02:
                return part02(input)
            }
        }
        
        
        // MARK: - Logic Methods
        func part01(_ depths: Input) -> Output {
            // Let's store our previous depth
            var prev: Int = depths[0]
            var increases: Int = 0
            
            // Iterate through given depths
            for depth in depths {
                if prev < depth {
                    // Count whenever depth has increased
                    increases = increases + 1
                }
                
                // Set previous depth to current depth
                prev = depth
            }
            
            
            return increases
        }
        
        func part02(_ depths: Input) -> Output {
            // Let's create an aggregate for each three consecutive depths
            var aggregates: [Int] = []
            
            // Aggregates consist of an initial value and its next two values
            for index in 0...(depths.count - 3) {
                aggregates.append(depths[index] + depths[index + 1] + depths[index + 2])
            }
            
            // Our values should now be calculated on top of the aggregated array
            return part01(aggregates)
        }
    }
}
