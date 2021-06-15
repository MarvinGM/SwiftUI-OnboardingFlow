//
//  ContentView.swift
//  SwiftUI OnboardingFlow
//
//  Created by Amben on 6/15/21.
//

import ConcentricOnboarding
import SwiftUI

struct ContentView: View {
    var body: some View {
        ConcentricOnboardingView(
            pages: [
                AnyView(OnboardingPage(title: "Send Messages",
                                       message: "Chat with all of your friends and send messages in groups!",
                                       imageName: "message")
                ),
                AnyView(OnboardingPage(title: "Notifications",
                                       message: "Enable Push Notifications to stay up to date with friends.",
                                       imageName: "bell")
                ),
                AnyView(OnboardingPage(title: "Profile",
                                       message: "Customize your profile page to show others what you are into!",
                                       imageName: "person.circle")
                )
            ],
            bgColors: [.pink, .blue, .orange],
            duration: 2.0
        )
    }
}

struct OnboardingPage: View {
    
    var gradient = Gradient(colors: [.blue, .pink, .purple])
    
    var title: String
    var message: String
    var imageName: String
    
    var body: some View {
        VStack {
            Spacer()
            
            Text(title)
                .font(.system(size: 40))
                .bold()
                .foregroundColor(.white)

            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200, alignment: .center)
            
            Text(message)
                .font(.system(size: 28, weight: .light, design: .default))
                .padding()
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
            
            Spacer()
            Spacer()

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
