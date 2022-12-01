#  Challenge Starter (public template)

Template project designed to host algorithm solutions for a variety of coding challenges (think [Advent of Code](https://adventofcode.com), [HackerRank](https://www.hackerrank.com), [Project Euler](https://projecteuler.net), and similar coding challenge websites).


## Main Advantages and Features

* Consolidate all your Coding Challenge-based algorithms under a single Repository
* Easily test your proposed solutions to see if they measure up as solutions
* Concentrate on what matters most: checking out if your proposed algorithms work and just going from one problem to the next!


## Check It Out!
For a live-action Repository and see how this all spans out, check out my [Code Challenges Repository](https://github.com/Kaitachi/CodeChallenges)!


## What's Under the Hood?
You can check out [Challenge Base](https://github.com/Kaitachi/ChallengeBase), the package on which this project relies, for more insights on what's happening under the hood.


## How Will You Get Started?
Once you begin to grasp how to interact with all the different file types there are, you'll get up and running in little to no time. So, here's how you get started:

For this walkthrough, I'll be using the [Advent of Code 2021](https://adventofcode.com/2021) as an example, so make sure to be mildly familiarized with how it works! This codebase already contains some sample code answering both Questions for [Advent of Code 2021 - Day 01](https://adventofcode.com/2021/day/1), so make sure to read those up to get a bit more understanding as we go along each step!

Essentially, within Advent of Code Challenges, each day in the Advent Calendar will pose two different Questions or Problems, with each potentially requiring related algorithms to solve both problems.

NOTE: This codebase has been built on Xcode 14.1, so expect to run any code within Xcode itself.

1. Start by creating a new folder under `Resources` and under `Challenges` to label the new Coding Challenge you'll be undertaking. Make sure to name both of these folders the same!
    * _For our walkthrough, we would then create two folders: one with the path for **[`ChallengeStarter/Challenges/SampleChallenge`](ChallengeStarter/Challenges/SampleChallenge)** and another one with the path for **[`ChallengeStarter/Resources/SampleChallenge`](ChallengeStarter/Resources/SampleChallenge)**._
    * The **`Resources`** folder will contain all input and output data in their dedicated files.
    * The **`Challenges`** folder will contain all the algorithms needed to perform whatever is necessary to calculate some output data from the given input file(s).

2. Once you know what Challenge you'll be performing for, you may go ahead and [create a new Challenge file](https://github.com/Kaitachi/ChallengeTemplates/blob/main/Challenge%20Class.xctemplate/___FILEBASENAME___.swift) under the `Challenges` subfolder you just created. Ideally, you should name this Challenge file with the same name of the folder it is in, as all Solutions will inherit from this class to more easily identify to which Challenge Set a specific Solution belongs to.
    * _For our walkthrough, this file would be **[`ChallengeStarter/Challenges/SampleChallenge/SampleChallenge.swift`](ChallengeStarter/Challenges/SampleChallenge/SampleChallenge.swift)**._
    * After creating this file, you would only need to configure the [`Algorithms` enum](ChallengeStarter/Challenges/SampleChallenge/SampleChallenge.swift#L13-L16), specifying the names and amounts of algorithms that you desire to create for each Solution.
    * In the case of Advent of Code Challenges, since each day has two problems (or parts), I have opted to think of each part as an algorithm of its own. Thus, the `Algorithms` enum can stay as it is defined by the template file.

3. Since Challenge Problems usually contain some sample data along with its expected output, you can add any and all resource files under the `Resources` folder, inside of the subfolder you created in the previous step.
    * _For our walkthrough, these files are located under the **[`ChallengeStarter/Resources/SampleChallenge`](ChallengeStarter/Resources/SampleChallenge)** folder._
    * Sample data (examples discussed as part of a given problem) are considered as `Test Cases`. Each of these `Test Cases` should contain their corresponding `input` and `output` files, with the following naming structure:
        * Input data files must have a `.in` extension.
        * Output data files must have a `.out` extension.
        * Both the Input and Output data files must have the same name (without the extension) in order to be considered as a single `Test Case`.
        * Each `Test Case` must be named as: `SolutionName[.ResourceName][.AlgorithmName].<in|out>`
            * **`SolutionName`** would represent what specific Problem would this sample data belong to. Make it something useful and straightforward for you.
            * **`[.ResourceName]`** is optional, and it essentially represents what scenario you are testing for. Please enter this portion without square brackets.
            * **`[.AlgorithmName]`** is also optional, and it should be the same as any `Algorithm` that was defined in the enum from the previous step.
            * **`<in|out>`** specifies whether the data in the file should be interpreted as input (`in` extension) or expected output (`out` extension) data. Both of these files should exist in order for them to be considered a valid `Test Case`.
    * Actual data (usually larger data files which must be computed to produce a specific solution that is to be used as your response within the website) are considered as `Actual Data`. Unlike `Test Cases`, these files should only contain a single `.in` file (with no corresponding `.out` file).
    
4. Once you have configured and added any `Test Cases` and `Actual Data`, you can go ahead and [create a Solution file](https://github.com/Kaitachi/ChallengeTemplates/blob/main/Solution%20Class.xctemplate/___FILEBASENAME___.swift). This file contains multiple sections that will be broken down below, specifying what needs to change in each of them.
    * _For our walkthrough, this file would be **[`ChallengeStarter/Challenges/SampleChallenge/Solution00.swift`](ChallengeStarter/Challenges/SampleChallenge/Solution00.swift)**._
    * Out of the box, you would typically need to modify the `typealias` variables at the very top of the class and both the `assemble` and `activate` methods.
        * For the [`typealias` variables](ChallengeStarter/Challenges/SampleChallenge/Solution00.swift#L14-L16), think of a data structure that would best suit this specific problem. What would it be? Based on this answer, you can specify the `Input` and `Output` `typealiases` to ease your algorithm logic.
        * Within the [`assemble` method](ChallengeStarter/Challenges/SampleChallenge/Solution00.swift#L32-L40), you would make any necessary changes to it so that the `Test Case` input and output files would be interpreted and transformed onto the data structures that you elaborated on the bullet above.
        * The [`activate` method](ChallengeStarter/Challenges/SampleChallenge/Solution00.swift#L42-L50) only needs changes whenever the `Algorithms` enum (covered in Step #2) changes. All `Algorithms` cases should be covered and mapped accordingly.
        * The [`Logic Methods` section](ChallengeStarter/Challenges/SampleChallenge/Solution00.swift#L53-L85) would, as you have probably guessed by now, contain the specific algorithms you'll be creating to come up with a Solution to the problem poised by the Challenge website. Go on, strive to make a clever Solution!
    
5. Now for probably the most exciting part: executing your code to see if it works! The [`ChallengeStarter/main.swift`](ChallengeStarter/main.swift) file already contains some lines to execute our walkthrough code.
    * Expect to change this with the appropriate `Challenge` and `Solution` names for your own Solutions. 
    * For each `Solution`, you may feed it with...
        * An array containing `resourceSets` to be used, if any. These were defined earlier in Step #3 as `ResourceName`. If no `Test Cases` were provided (or an empty `String` array is provided), validating logic is skipped and executing the program goes directly to executing the `Actual Data`.
        * An array containing the set of `Algorithms` to be used for the current execution. These were defined above in Step #2 and are defined in the Challenge file. If no `Algorithms` were provided (or an empty `Algorithms` array is provided), all defined `Algorithms` are executed subsequently.
    * **NOTE: If at least one `Test Case` fails, execution of `Actual Data` is not performed.**
        
6. By this step, you should have a fair grasp of how to utilize this template project and continue to build your own awesome solutions!
    * Even so, I reckon it might have its own learning curve to understand well what's going on and how to move forward. Don't be discouraged! You can check out my [Code Challenges Repository](https://github.com/Kaitachi/CodeChallenges) to get yourself acquainted with a practical usage for this project and how to get around.

## Want to Get Started Even Faster?
You can download my [Challenge Template Files](https://github.com/Kaitachi/ChallengeTemplates), which contains the set of files that can be installed for Xcode to get a head start on creating all the necessary files.


## Feel Like Contributing?
Contribution is by all means encouraged and welcome! You can take a look at the following Repositories and make your contributions, whether big or small, and keep this project moving forward!

* [Challenge Base Project](https://github.com/Kaitachi/ChallengeBase), the Package behind this whole initiative to streamline Coding Challenges, reducing boilerplate code and logic.
* [Challenge Template Files](https://github.com/Kaitachi/ChallengeTemplates), provides various Swift Template files that can be used along with this Project.
* [Challenge Starter Project](https://github.com/Kaitachi/ChallengeStarter) (this Repo), any improvements to streamline the Challenge setup is greatly welcome.
