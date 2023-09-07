import Foundation
import SwiftUI
import PlaygroundSupport

public struct EndContentView: View {
    public init() {}
    public var body: some View {
        ZStack {
            Image(uiImage: #imageLiteral(resourceName: "eb2c94e194bd11168d309c5553ab244e.jpg"))
                .frame(width: 1050, height: 1050, alignment: .center)
            Color.black
                .edgesIgnoringSafeArea(.all)
                .opacity(0.8)
            VStack {
                Text("THANK YOU")
                    .foregroundColor(.white)
                    .font(.system(size: 80, weight: .bold, design: .default))
                    .padding(50)
                    .position(x: 400.0, y: 400.0)
            }
        }
    }
}
