import UIKit


var aYear =  1200

func isLeap(year: Int) {
    if year%4 == 0 && year%100 != 0 {
      print("YES")
  } else if year%4 == 0 && year%100 == 0 && year%400 == 0 {
      print("YES")
  } else {
      print("NO")
  }
}

isLeap(year: aYear);
