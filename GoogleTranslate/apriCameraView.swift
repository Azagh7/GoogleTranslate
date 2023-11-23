import SwiftUI
import AVFoundation
import Vision

struct apriCameraView: View {
    @State private var isCameraActive: Bool = false
    @State private var recognizedText: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                        CameraView(recognizedText: $recognizedText)
                   
                    ZStack{
                        Color.white
                            .edgesIgnoringSafeArea(.all)
                        Text(recognizedText)
                            .foregroundColor(.black)
                    }
                }
            }
        }
    }
