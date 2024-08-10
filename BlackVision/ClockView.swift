import SwiftUI
import RealityKit

struct ClockView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var animationIsActive = false
    @State private var rotating = false

    var body: some View {
        NavigationStack {
            VStack {
                Text("Your clock")
                    .font(.title)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.ultraThinMaterial)
                    
                    VStack {
                        HStack {
                            VStack(alignment: .leading) {
                                Text("Wake up, Sam!")
                                    .font(.system(size: 40))
                                    .foregroundStyle(Color.white.opacity(0.6))
                                
                                Text("It's 7:30 AM")
                                    .font(.system(size: 40))
                                    .foregroundStyle(Color.white.opacity(1.0))
                            }
                            Spacer()
                            Image(systemName: "alarm.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 60)
                                .symbolEffect (
                                    .pulse,
                                    isActive: animationIsActive
                                )
                                .rotationEffect(.degrees(rotating ? 0 : -30))
                                .onAppear {
                                    withAnimation(.linear.repeatForever(autoreverses: true)){
                                        rotating.toggle()
                                    }
                                }
                        }
                        Spacer()
                        
                        VStack{
                            Button(action: {
                                dismiss()
                            }) {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 20)
                                        .fill(Color.clear)
                                    Text("ok, I'm waking-up")
                                        .font(.system(size: 30).bold())
                                }
                                .frame(height: 150)
                                .foregroundColor(.white)
                            }
                        }
                    }
                    .padding(50)
                }
                .padding(30)
                
                Spacer()
            }
            .padding(30)
            .onAppear {
                animationIsActive = true
            }
        }
    }
}

#Preview {
    ClockView()
}

