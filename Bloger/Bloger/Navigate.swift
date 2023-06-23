//
//  NavigationView.swift
//  Bloger
//
//  Created by Oliver Zheng on 6/21/23.
//

import SwiftUI

struct Navigate: View {
    var content: Blog

    init(content: Blog) {
        self.content = content
    }
    
    var body: some View {
        VStack{
            Text(content.title)
                .padding()
                .font(.system(size:30))
                .bold()
            Text(content.body)
                .padding()
            Spacer()
        }
       
    }
}

struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        Navigate(content: Blog(userId: 1, id: 1, title: "sunt aut facere repellat provident occaecati excepturi optio reprehenderit", body: "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"))
    }
}
