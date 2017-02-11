struct Squares {

    var naturalNum: Int
    
    var squareOfSums: Int {
        var sum = 0;
        for i in (1...naturalNum) { sum += i }
        return sum * sum
    }
    
    var sumOfSquares: Int {
        var sum = 0
        for i in (1...naturalNum) { sum += i * i }
        return sum
    }
    
    var differenceOfSquares: Int {
        return squareOfSums - sumOfSquares
    }
    
    init (_ num: Int) {
        self.naturalNum = num
    }
    
}
