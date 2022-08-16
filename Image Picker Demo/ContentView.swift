//
//  ContentView.swift
//  Image Picker Demo
//
//  Created by k2 tam on 16/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var isPickerShowing = false
    @State var selectedImage: UIImage?
    
    var body: some View {
        VStack{
            if selectedImage != nil{
                Image(uiImage: selectedImage!)
                    .resizable()
                    .frame(width: 200, height: 200)
                
            }
            
            Button {
                //Show image picker
                isPickerShowing = true
            } label: {
                Text("Select a photo")
            }
            .sheet(isPresented: $isPickerShowing) {
                //Image Picker
                ImagePicker(selectedImage: $selectedImage, isPickerShowing: $isPickerShowing)
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
