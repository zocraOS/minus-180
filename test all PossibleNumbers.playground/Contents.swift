import UIKit

let MAX_SCORES = 181
var allPossibleNumbers = [Int]()

//initialize all indices on 0
for every_i in 0..<MAX_SCORES {
    allPossibleNumbers.insert(0, at: every_i)
   // print(every_i)
}
print(": \(allPossibleNumbers.count)")

//alle zahlen von 0 bis 20 einfügen
for i in 0..<21 {
   // print(i)
    allPossibleNumbers[i] = i
}

//doubles and triples einfügen für einen dart(sind praktisch alle geraden und ungeraden ab 20 bis zur 60
for score in 1..<21 {
    addScore(2 * score, allPossibleNumbers)
    addScore(3 * score, allPossibleNumbers)
    
}



func addScore(_ _score: Int, _ possibleScores: [Int]) {
  
    for i in possibleScores {
       print(i)
    }
       
    
    
}
print(allPossibleNumbers)

