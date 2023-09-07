import Foundation
import SwiftUI
import PlaygroundSupport

public struct IntroContentView: View {
    public init() {}
    
    public var body: some View {
        ZStack {
            Image(uiImage: #imageLiteral(resourceName: "Formula 1.jpeg"))
                .frame(width: 1050, height: 1050, alignment: .center)
            Color.black
                .edgesIgnoringSafeArea(.all)
                .opacity(0.8)
            Circle()
                .foregroundColor(.red)
                .frame(width: 25, height: 25, alignment: .center)
                .position(x: 300.0, y: 300.0)
                .shadow(color: .red, radius: 10)
            Circle()
                .foregroundColor(.red)
                .frame(width: 25, height: 25, alignment: .center)
                .position(x: 350.0, y: 300.0)
                .shadow(color: .red, radius: 10)
            Circle()
                .foregroundColor(.red)
                .frame(width: 25, height: 25, alignment: .center)
                .position(x: 400.0, y: 300.0)
                .shadow(color: .red, radius: 10)
            Circle()
                .foregroundColor(.red)
                .frame(width: 25, height: 25, alignment: .center)
                .position(x: 450.0, y: 300.0)
                .shadow(color: .red, radius: 10)
            Circle()
                .foregroundColor(.red)
                .frame(width: 25, height: 25, alignment: .center)
                .position(x: 500.0, y: 300.0)
                .shadow(color: .red, radius: 10)
            VStack {
                Text("THE RACING LINE")
                    .foregroundColor(.white)
                    .font(.system(size: 80, weight: .bold, design: .default))
                    .padding(50)
                    .position(x: 400.0, y: 400.0)
            }
        }
    }
}

