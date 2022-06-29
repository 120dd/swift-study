import UIKit


var studentsAndScores = ["Amy": 2, "James": 10, "Helen": 1]

func highestScore(scores: [String: Int]) {
  print(studentsAndScores.values.max()!)
}

highestScore(scores:studentsAndScores)
