import UIKit

/*
 You're writing code to control your town's traffic lights. You need a function to handle each change from green, to yellow, to red, and then to green again.

 Complete the function that takes a string as an argument representing the current state of the light and returns a string representing the state the light should change to.

 For example, update_light('green') should return 'yellow'.
 */

enum Lights: String {
    case green
    case yellow
    case red

    static func getLight(_ fromString: String) -> Lights? {
        switch fromString {
        case Lights.green.rawValue: return .green
        case Lights.yellow.rawValue: return .yellow
        case Lights.red.rawValue: return .red
        default: return nil

        }
    }

    static func getNextLight(_ originLight: Lights) -> Lights {
        switch originLight {
        case .green: return .yellow
        case .yellow: return .red
        case .red: return .green
        }
    }
}

func changeLight(_ fromColor: String) -> String {
    guard let startLight = Lights.getLight(fromColor) else { return "Broken traffic light" }
    let nextLight = Lights.getNextLight(startLight)
    return nextLight.rawValue
}

let light1 = "green"
let light2 = changeLight(light1)
let light3 = changeLight(light2)
let light4 = changeLight(light3)

let light5 = "purple"
let light6 = changeLight(light5)
