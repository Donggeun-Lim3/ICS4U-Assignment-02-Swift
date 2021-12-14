/*
This program gets string containgin numbers from user,
converts to many occurrences of the character to the right of the digit
and show the converted string.
author  Donggeun Lim
version 1.0
since   2021-12-08
*/

var convertedString: String = ""

// Input
print("Enter a string containing numbers to blow up (ex. a3tx2z): ",
      terminator: "")
let stringWithNumber = String(readLine()!)

// Process
for strIndex in 0...stringWithNumber.count - 1 {
    if Array(stringWithNumber)[strIndex].isWholeNumber {
        if strIndex != stringWithNumber.count - 1 {
            let charCount: Int = Array(stringWithNumber)[strIndex
                                                          ].wholeNumberValue ?? 0
            for _ in 0...charCount - 1 {
                convertedString.append(Array(stringWithNumber)[strIndex + 1])
            }
        }
    } else if strIndex == 0 {
        convertedString.append(Array(stringWithNumber)[strIndex])
    } else if !Array(stringWithNumber)[strIndex - 1].isWholeNumber {
        convertedString.append(Array(stringWithNumber)[strIndex])
    }
}

// Output
print("The blow up string is  \(convertedString).")

print("\nDone.")
