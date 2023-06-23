//
//  BlogServiiceModel.swift
//  Bloger
//
//  Created by Oliver Zheng on 6/20/23.
//

import Foundation
import Combine


class BlogServiceModel: ObservableObject {
    
    @Published var blogs: [Blog] = []
    private var cancellables = Set<AnyCancellable>()
    var service = BlogerService()
    
    func fetchBloger() {
        service.fetchBloger()
            .sink { completion in
                switch completion {
                case .finished:
                    break
                case .failure(let err):
                    print("Error during fetching Movie = \(err.localizedDescription)")
                }
            } receiveValue: {[weak self] blogs in
                self?.blogs = blogs
            }
            .store(in: &cancellables)
            }
    }
    
    

