import SwiftUI

struct ContentView: View {
    @State private var notes = "   Enter Text"
    var body: some View {

        NavigationStack{
            TextEditor(text: $notes)
                .foregroundColor(.gray)
                .scrollContentBackground(.hidden)
                .background(.white)
                .frame(height: 400)
                .accessibilityLabel("Text editor")
                .accessibilityHint("Write the text you want to translate")
                
            
            ZStack{
                Color(.gray)
                    .edgesIgnoringSafeArea(.all)
                    .opacity(0.2)
                VStack(spacing:32){
                    HStack(spacing:24){
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.white)
                                .frame(width: 140, height: 60)
                            Picker(selection: /*@START_MENU_TOKEN@*/.constant(1)/*@END_MENU_TOKEN@*/, label: /*@START_MENU_TOKEN@*/Text("Picker")/*@END_MENU_TOKEN@*/) {
                                Text("English").tag(1)
                                Text("Italian").tag(2)
                                Text("Spanish").tag(3)
                                Text("German").tag(4)
                                Text("Chinese").tag(5)
                                Text("Japanese").tag(6)
                            }
                            .accessibilityLabel("Language picker")
                            .accessibilityHint("Select starting language")
                            .accessibilitySortPriority(3)
                            
                        }
                        Image(systemName: "arrow.left.arrow.right")
                            .accessibilityLabel("Language switch")
                            .accessibilityHint("Swith starting and target language")
                            .accessibilitySortPriority(1)
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.white)
                                .frame(width: 140, height: 60)
                            Picker(selection: .constant(2), label: /*@START_MENU_TOKEN@*/Text("Picker")/*@END_MENU_TOKEN@*/) {
                                Text("English").tag(1)
                                Text("Italian").tag(2)
                                Text("Spanish").tag(3)
                                Text("German").tag(4)
                                Text("Chinese").tag(5)
                                Text("Japanese").tag(6)
                            }
                            .accessibilityLabel("Language picker")
                            .accessibilityHint("Select target language")
                            .accessibilitySortPriority(2)
                        }
                    }
                    HStack(spacing: 40){
                        NavigationLink{apriCameraView()}
                    label:{
                            ZStack{
                                Circle()
                                    .fill(.cyan)
                                    .frame(width: 60, height: 60)
                                Image(systemName: "person.2.fill")
                                    .imageScale(.medium)
                                    .foregroundStyle(.black)
                            }
                        }
                    .accessibilityLabel("Conversation")
                    .accessibilityHint("Live conversation translation")
                        
                        
                        NavigationLink{apriCameraView()}
                    label:{
                            ZStack{
                                Circle()
                                    .fill(.blue)
                                    .frame(width: 100, height: 100)
                                Image(systemName: "waveform")
                                    .font(.title)
                                    .imageScale(.medium)
                                    .foregroundStyle(.black)
                            }
                        }
                        .accessibilityLabel("Speech to text")
                        .accessibilityHint("Say what you want to translate")
                        
                        
                        
                        NavigationLink{apriCameraView()}
                    label:{
                            ZStack{
                                Circle()
                                    .fill(.cyan)
                                    .frame(width: 60, height: 60)
                                Image(systemName: "camera")
                                    .imageScale(.medium)
                                    .foregroundStyle(.black)
                            }
                        }
                    .accessibilityLabel("Camera")
                    .accessibilityHint("Translate the text the camera captures")
                  
                        
                    }
                }
            }
            .navigationBarTitle("Google Translate")
            
        }
        
    }
}

#Preview {
    ContentView()
}
