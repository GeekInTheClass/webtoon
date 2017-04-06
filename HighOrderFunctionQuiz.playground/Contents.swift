// Square of Sum
// 총 합의 제곱 구하기
func squareOfSums(_ num: Int) -> Int {
    var result = 0
    for item in 1...num {
        result += item
    }
    return result * result
}

//let array = [1, 2, 3, 4, 5]
//array.map(<#T##transform: (Int) throws -> T##(Int) throws -> T#>)
//(0...10).map(<#T##transform: (Int) throws -> T##(Int) throws -> T#>)

var sqsum = [(0...5).reduce(0, +)].map({$0 * $0})

assert(225 == sqsum[0])

assert(225 == squareOfSums(5))
assert(3025 == squareOfSums(10))

// Sum of Square
// 각 원소 제곱의 합

func sumOfSquares(_ num: Int) -> Int {
    var result = 0
    for item in 1...num {
        result += item * item
    }
    return result
}
var sumsq = (0...5).map({$0 * $0}).reduce(0, +)

assert(55 == sumsq)
assert(55 == sumOfSquares(5))
assert(385 == sumOfSquares(10))
