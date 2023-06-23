//import UIKit
//func fibonacci(_ num: Int) -> Int {
//    var dp = [0, 1]
//    if num == 0{
//        return dp[0]
//    }else if num == 1{
//        return dp[1]
//    }else{
//        for i in 2...num{
//            dp.append(dp[i - 1] + dp[i - 2])
//        }
//    }
//    return dp[num]
//}
//class Calculator{
//    func addition(_ v1: Int, _ v2: Int) ->Int{
//        return v1 + v2
//    }
//    func subtraction(_ v1: Int, _ v2: Int) ->Int{
//        return v1 - v2
//    }
//    func multiplication(_ v1: Int, _ v2: Int) ->Int{
//        return v1 * v2
//    }
//    func division(_ v1: Int, _ v2: Int) -> Any{
//        if v2 == 0{
//            return "Oops can't divided by 0."
//        }
//        let res = Double(v1) / Double(v2)
//        return res
//    }
//}
//var temp = Calculator()
//print(temp.subtraction(1, 7))
//


//0 1 1 2 3 5 8
func fibonacchi(_ number: Int, _ count: Int) -> [Int] {

    var c = count
    var dp = [0, 1]
    var res:[Int] = []

    if c < 0 {
        return []
    }
    var cur = dp[0]
    while dp[dp.count - 1] < number {
        dp.append(dp[dp.count - 1] + dp[dp.count - 2])
    }
    if dp[dp.count - 1] != number{

       return res
    }else{
        res.append(number)
        while c > 1 {
            dp.append(dp[dp.count -  1] + dp[dp.count - 2])
            res.append(dp[dp.count - 1])
            c -= 1
        }
        return res
    }
}
print(fibonacchi(4, 4))








