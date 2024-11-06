import Foundation

/*
 Example
 s = "12:01:00PM"
 Return '12:01:00'.

 s = "12:01:00AM"
 Return '00:01:00'.
 */
func timeConversion(s: String) -> String {
    let inDateFormat = "h:mm:ssa"
    let outDateFormat = "HH:mm:ss"
    let identifier = "en_US_POSIX"
    let inFormatter = DateFormatter()
    inFormatter.locale = Locale(identifier: identifier)
    inFormatter.dateFormat = inDateFormat
    
    let outFormatter = DateFormatter()
    outFormatter.locale = Locale(identifier: identifier)
    outFormatter.dateFormat = outDateFormat
    
    let date = inFormatter.date(from: s) ?? Date()
    return outFormatter.string(from: date)
}

print(timeConversion(s: "12:01:00PM"))
print(timeConversion(s: "12:01:00AM"))
