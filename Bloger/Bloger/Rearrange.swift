//
//  Rearrange.swift
//  Bloger
//
//  Created by Oliver Zheng on 6/21/23.
//

import Foundation

class Rearrange: ObservableObject, Identifiable {
    
    func rearrange(_ arr: [Blog]) -> [[Blog]]{
        var afterRange: [[Blog]] = []
        var curIdx = 0
        for i in 0...arr.count - 1{
            if arr[i].userId != curIdx{
                afterRange.append([])
                afterRange[curIdx].append(arr[i])
                curIdx += 1
            } else {
                afterRange[curIdx].append(arr[i])
            }
            
        }
        return afterRange
    }
}
