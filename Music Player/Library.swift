//
//  Library.swift
//  Music Player
//
//  Created by Makarov_Maxim on 14.06.2022.
//

import SwiftUI

struct Library: View {
    var body: some View {
        NavigationView {
            VStack {
                GeometryReader{ geometry in
                    HStack(spacing: 20) {
                        Button(action: {
                            print("12")
                        }, label: {
                            Image(systemName: "play.fill")
                                .frame(width: geometry.size.width / 2 - 10, height: 50)
                                .accentColor(Color.init(#colorLiteral(red: 1, green: 0, blue: 0.3764705882, alpha: 1)))
                                .background(Color.init(red: 0, green: 0.5, blue: 0.5)).cornerRadius(10)
                        })
                        Button(action: {
                            print("4444")
                        }, label: {
                            Image(systemName: "arrow.2.circlepath")
                                .frame(width: geometry.size.width / 2 - 10, height: 50)
                                .accentColor(Color.init(#colorLiteral(red: 1, green: 0, blue: 0.3764705882, alpha: 1)))
                                .background(Color.init(red: 0, green: 0.5, blue: 0.5)).cornerRadius(10)
                        })
                    }
                }.padding().frame(height: 50)
                Divider().padding(.leading).padding(.trailing).padding(.top)
                List {
                    LibraryCell()
                }
            }
            
            .navigationTitle("Library")
        }
    }
}
struct LibraryCell: View {
    var body: some View {
        HStack{
            Image("Image").resizable().frame(width: 60, height: 60).cornerRadius(2)
            VStack{
                Text("Track name")
                Text("Track name")

            }
        }
        
    }
}

struct Library_Previews: PreviewProvider {
    static var previews: some View {
        Library()
    }
}
