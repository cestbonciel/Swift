import UIKit

let possibleString: String? = "An optional string."
let forcedString: String = possibleString! // Requires explicit unwrapping

let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString // Unwrapped automatically

let optionalString = assumedString

if assumedString != nil {
    print(assumedString!)
}
