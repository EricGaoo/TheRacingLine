import Foundation
import SwiftUI
import PlaygroundSupport

public struct Turn2ContentView: View {
    
    public init() {}

@State private var showLine1 = false
@State private var showLine2 = false
@State private var showLine3 = false
@State private var showAnswer = false
@State private var showWrong = false
    
    public var body: some View {
        ZStack {
            Color(red: 67/255, green: 168/255, blue: 42/255)
                .edgesIgnoringSafeArea(.all)
            Image(uiImage: #imageLiteral(resourceName: "Turn3.track.png"))
                .resizable()
                .scaledToFit()
                .frame(width: 1050, height: 1050)
                .position(x: 355, y: 340)
            HStack {
                Text("Apex")
                    .fontWeight(.semibold)
                    .foregroundColor(Color(red: 143/255, green: 223/255, blue: 80/255))
                    .opacity(0.5)
                    .position(x: 250, y: 330)
                Text("Apex")
                    .fontWeight(.semibold)
                    .foregroundColor(Color(red: 143/255, green: 223/255, blue: 80/255))
                    .opacity(0.5)
                    .position(x: -60, y: 330)
            }
            if showLine1 {
                Image(uiImage: #imageLiteral(resourceName: "Turn3.LineRace.png"))
                    .resizable()
                    .scaledToFit()
                    .frame(width: 885, height: 885, alignment: .center)
                    .position(x: 355, y: 355)
                    .transition(.asymmetric(insertion: .opacity, removal: .scale))
            }
            if showLine2 {
                Image(uiImage: #imageLiteral(resourceName: "Turn3..LineOut.png"))
                .resizable()
                .scaledToFit()
                .frame(width: 885, height: 885, alignment: .center)
                .position(x: 355, y: 355)
                .transition(.asymmetric(insertion: .opacity, removal: .scale))
            }
            if showLine3 {
                Image(uiImage: #imageLiteral(resourceName: "Turn3.LineIn.png"))
                .resizable()
                .scaledToFit()
                .frame(width: 885, height: 885, alignment: .center)
                .position(x: 355, y: 355)
                .transition(.asymmetric(insertion: .opacity, removal: .scale))
            }
            if showAnswer {
                Image(uiImage: #imageLiteral(resourceName: "Turn3.LineRaceG.png"))
                .resizable()
                .scaledToFit()
                .frame(width: 885, height: 885, alignment: .center)
                .position(x: 355, y: 355)
                Text("Correct!").fontWeight(.bold).font(.largeTitle).foregroundColor(.yellow).position(x: 400, y: 400).onAppear {
                    Timer.scheduledTimer(withTimeInterval: 1, repeats: false) { timer in
                        withAnimation(.easeInOut(duration: 1)) {
                            self.showAnswer.toggle()
                        }
                    }
                }
                
            }
            if showWrong {
                Text("Incorrect!").fontWeight(.bold).font(.largeTitle).foregroundColor(.red).position(x: 400, y: 400).onAppear {
                    Timer.scheduledTimer(withTimeInterval: 1, repeats: false) { timer in
                        withAnimation(.easeInOut(duration: 0.5)) {
                            self.showWrong.toggle()
                        }
                    }
                }

                }
            Rectangle()
                .frame(width: 670, height: 170)
                .foregroundColor(Color(red: 79/255, green: 103/255, blue: 38/255))
                .opacity(0.9)
                .cornerRadius(30)
                .position(x: 388, y: 600)
                .padding(15)
            VStack {
                Text("TURN 2")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .font(.largeTitle)
                    .position(x: 388, y: 75)
                HStack {
                        Text("Line 1")
                            .frame(width: 180, height: 100)
                            .foregroundColor(.black)
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(radius: 15)
                            .position(x: 200, y: 90)
                            .onTapGesture {
                                withAnimation {
                                self.showLine1.toggle()
                                }
                            }
                            .onLongPressGesture(minimumDuration: 0.3) {
                                withAnimation {
                                    self.showAnswer.toggle()
                                }
                            }
                    
                    Text("Line 2")
                        .frame(width: 180, height: 100)
                        .foregroundColor(.black)
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 15)
                        .position(x: 50, y: 90)
                        .onTapGesture {
                            withAnimation {
                                
                            self.showLine2.toggle()
                            }
                        }
                        .onLongPressGesture(minimumDuration: 0.3) {
                            withAnimation {
                            self.showWrong.toggle()
                            }
                        }
                
                    Text("Line 3")
                        .frame(width: 180, height: 100)
                        .foregroundColor(.black)
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 15)
                        .position(x: -100, y: 90)
                        .onTapGesture {
                            withAnimation {
                            self.showLine3.toggle()
                            }
                        }
                        .onLongPressGesture(minimumDuration: 0.3) {
                            withAnimation {
                            self.showWrong.toggle()
                            }
                        }
                }
                
        }
            }

        }
    }
