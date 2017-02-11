struct SumOfMultiples {

    static func toLimit(_ limit: Int, inMultiples: [Int]) -> Int {
        var sum = 0
        for number in (1 ..< limit) {
            for factor in inMultiples {
                if (factor != 0 && number % factor == 0) {
                    sum += number
                    break
                }
            }
        }
        return sum
    }
    
}
