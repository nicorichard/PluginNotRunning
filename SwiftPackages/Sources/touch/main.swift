import Foundation

if CommandLine.arguments.count < 2 {
    print("No path argument provided.")
    fatalError()
}

let path: String = CommandLine.arguments[1]
let fileManager = FileManager.default

print("Creating file at \(path)")

fileManager.createFile(atPath: path, contents: nil)

print("Created file at \(path)")

if fileManager.fileExists(atPath: path) {
    print("Success: File exists at \(path)")
} else {
    print("Error: File does not exist at \(path)")
}
