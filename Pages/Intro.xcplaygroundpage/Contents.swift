//: # The Racing Line
//: Welcome to the Racing Line! This is a program designed to teach you how to get to your destination like a TRUE racing driver.
//: # What is it?
//: In motorsport, the racing line is the path through a corner which takes the least time. By taking the racing line, drivers are able to take the ideal, fastest way through a corner to win the race!
//:
//: So get strapped in, get ready, ITS LIGHTS OUT AND AWAY WE GO!!!
//:
//: _Whenever I see something that challenges me, I take it on. - Niki Lauda_
//:
//: - Note: Please resize the Live View and expand the window to get the full experience.
//:
//: [Let's go!](@next)

import Foundation
import SwiftUI
import PlaygroundSupport

let viewcontroller = UIHostingController(rootView: IntroContentView())
viewcontroller.preferredContentSize = CGSize(width: 150, height: 150)

PlaygroundPage.current.setLiveView(IntroContentView())

