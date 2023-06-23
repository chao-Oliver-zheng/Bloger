//
//  BlogerService.swift
//  Bloger
//
//  Created by Oliver Zheng on 6/19/23.
//

import Foundation
import Combine

class BlogerService {
    
    var cancellables = Set<AnyCancellable>()
    let  baseUrl = "https://jsonplaceholder.typicode.com/posts"
    
    func fetchBloger() -> Future<[Blog], Error> {
        
        return Future{ [weak self] promise in
            guard let self = self, let url = URL(string: baseUrl) else { return }
            URLSession.shared.dataTaskPublisher(for: url)
                .map{ $0.data }
                .decode(type: [Blog].self, decoder: JSONDecoder())
                .receive(on: RunLoop.main)
                .sink { responseError in
                    switch responseError {
                    case .failure(let err):
                        promise(.failure(err))
                    case .finished:
                        break
                    }
                    
                } receiveValue: { response in
                    promise(.success(response))
                }
                .store(in: &self.cancellables)
        }
    }
}
