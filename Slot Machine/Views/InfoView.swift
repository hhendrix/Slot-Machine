//
//  InfoView.swift
//  Slot Machine
//
//  Created by Harry Lopez on 16/05/22.
//

import SwiftUI

struct InfoView: View {
    // MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            LogoView()
             Spacer()
            
            Form {
                Section(header: Text("About the application"), content: {
                    FormRowView(firstItem: "Application", secondItem: "Slot Machine")// ROWVIEW
                    FormRowView(firstItem: "Platforms", secondItem: "iPhone, ipAd, Mac")
                    FormRowView(firstItem: "Developer", secondItem: "Harry López")// Developer
                    FormRowView(firstItem: "Designer", secondItem: "Harry López")// ROWVIEW
                    FormRowView(firstItem: "Music", secondItem: "Harry López")// ROWVIEW
                    FormRowView(firstItem: "Website", secondItem: "hlenterprises.com")// ROWVIEW
                    FormRowView(firstItem: "Copyright", secondItem: "© 2022 All right reserved")// ROWVIEW
                    FormRowView(firstItem: "Version", secondItem: "1.0.0")// ROWVIEW
                }) // SECTION
            }// FORM
            .font(.system(.body, design: .rounded))
        }// VSTACK
        .padding(.top, 40)
        .overlay(
            Button(action: {
                audioPlayer?.stop()
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark.circle")
                    .font(.title)
            })
            .padding(.top, 20)
            .padding(.trailing, 20)
            .accentColor(.secondary)
            , alignment: .topTrailing
        )
        .onAppear(perform: {
            playSound(sound: "background-music", type: "mp3")
        })
    }
}

struct FormRowView: View {
    var firstItem : String
    var secondItem : String
    var body: some View {
        HStack{
            Text(firstItem)
                .foregroundColor(.gray)
            Spacer()
            Text(secondItem)
        }
    }
}

// MARK: - PREVIEW
struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}


