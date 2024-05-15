//
//  MainView.swift
//  InstagramMacOS
//
//  Created by Vladimir Pisarenko on 15.05.2024.
//

import SwiftUI

struct MainView: View {
    
    @State var search = ""
    @State var currenrFeed = "Latest"
    
    var body: some View {
        ScrollView {
            VStack{
                
                HStack{
                    TextField("Search", text: $search)
                        .textFieldStyle(PlainTextFieldStyle())
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                        .background(Color.white.opacity(0.2))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        
                        Label(
                            title: { Text("Add Photos") },
                            icon: { Image(systemName: "plus.square") }
                        )
                        .foregroundStyle(.white)
                        .padding(10)
                        .background(gradient)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    })
                    .buttonStyle(PlainButtonStyle())
                }
                .padding()
                .padding(.top, 20)
                
                Text("Stories")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                
                //Stories...
                
                ScrollView(.horizontal, showsIndicators: false, content: {
                    
                    HStack(spacing: 15) {
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            
                            Image(systemName: "plus")
                                .font(.title2)
                                .foregroundStyle(.white)
                                .frame(width: 55, height: 55)
                                .background(.orange.opacity(0.15))
                                .clipShape(Circle())
                        })
                        .buttonStyle(PlainButtonStyle())
                        
                        ForEach(1...6, id: \.self) { index in
                            
                            Image("p\(index)")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 55, height: 55)
                                .clipShape(Circle())
                                .padding(5)
                                .background(Circle().stroke(gradient, lineWidth: 2))
                                .clipShape(Circle())
                        }
                    }
                    .padding()
                })
                
                HStack(alignment: .top) {
                    Text("Feed")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                       
                    Spacer()
                    
                    ForEach(["Latest","Popular"], id: \.self) { type in
                        
                        Button(action: {
                            withAnimation {
                                currenrFeed = type
                            }
                        }, label: {
                            VStack(spacing: 8) {
                                
                                Text(type)
                                    .foregroundStyle(currenrFeed == type ? .white : .gray)
                                
                                ZStack{
                                    
                                    Circle()
                                        .fill(Color.clear)
                                        .frame(width: 5, height: 5)
                                    
                                    if currenrFeed == type {
                                        Circle()
                                            .fill(Color.white)
                                            .frame(width: 5, height: 5)
                                    }
                                }
                            }
                        })
                        .buttonStyle(PlainButtonStyle())
                    }
                }
                .padding(.horizontal)
                .padding(.top, 8)
                
                //Posts...
                
                LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 15), count: 2), content: {
                    ForEach(1...9, id: \.self) { index in
                        
                        //Postcard View...
                        PostView(image: "post\(index)")
                    }
                })
                .padding()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.main)
    }
}

#Preview {
    ContentView()
}
