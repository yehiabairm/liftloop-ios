import SwiftUI

struct OnboardingView: View {
    @AppStorage("hasCompletedOnboarding") var hasCompletedOnboarding: Bool = false

    var body: some View {
        ZStack {
            // Overall background color
            Color(red: 17/255, green: 26/255, blue: 34/255)
                .edgesIgnoringSafeArea(.all)

            // Background Image
            Image("onboarding-background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            // The Color view below acts as a fallback or can be part of the design if the image has transparency.

            VStack(spacing: 20) {
                Spacer() // Pushes content below towards the center/top

                // Title
                Text("Track your progress")
                    .font(.system(size: 28, weight: .bold))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)

                // Subtitle
                Text("Log your workouts, set goals, and see your progress over time.")
                    .font(.system(size: 16, weight: .regular))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    .padding(.bottom, 30) // Spacing before the lower Spacer kicks in or button appears

                Spacer() // Pushes button to the bottom

                // Get Started Button
                Button(action: {
                    // Action for the button
                    // print("Get Started tapped") // Original action
                    hasCompletedOnboarding = true
                }) {
                    Text("Get Started")
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding(.horizontal) // Match web container padding
                .padding(.bottom, 50) // Padding from the bottom edge
            }
            .padding(.top) // Ensure content doesn't stick to the very top if first spacer is too small
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
