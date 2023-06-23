//
//  ContentView.swift
//  Bloger
//
//  Created by Oliver Zheng on 6/19/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel =  BlogServiceModel()
   
    
    
    func groupByCategory(_ items: [Blog]) -> [(Int, [Blog])] {
        let grouped = Dictionary(grouping: items, by: { $0.userId })
            return grouped.sorted(by: { $0.key < $1.key })
        }
    
    var body: some View {
        
        VStack{
            Text("Blogger")
                .font(.system(size:30))
            NavigationView{
                List{
                    
                    ForEach(groupByCategory(viewModel.blogs), id:\.0){ pair in
                        Section(header:
                                    Text("User\(pair.0)'s post")
                            .foregroundColor(.black)
                            .font(.system(size: 20))
                            .bold()){
                                ForEach(pair.1) { item in
                                    NavigationLink(destination: Navigate(content: item)){
                                    Text(item.title)
                                     }
                                }
                            }
                        
                    }
                }
            }
        }
        .onAppear{
            viewModel.fetchBloger()
        }
        
        
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
