//
//  DIYCombine.swift
//  DIY-Combine-ZeroToOne
//
//  Created by 黃建程 on 2021/10/18.
//

import Foundation

func diyCombine(with url: URL) {
    // 類似 Builder
    // subscribe: () -> Void
    let subscribe = {
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                // 處理 data...
                print(data)
            }
        }
        task.resume()
    }

    // 類似 Builder 的 Build()
    subscribe()
}
