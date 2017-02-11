import Foundation

struct Gigasecond {
    
    private var formatter: DateFormatter {
        let fmt = DateFormatter()
        fmt.timeZone = TimeZone(secondsFromGMT: 0)
        fmt.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        return fmt
    }
    
    var gsDate: Date?
    var description: String {
        return formatter.string(from: gsDate!)
    }
    
    init? (from: String) {
        if var date = formatter.date(from: from) {
            date.addTimeInterval(1_000_000_000)
            gsDate = date
        } else {
            return nil
        }
    }
    
}
