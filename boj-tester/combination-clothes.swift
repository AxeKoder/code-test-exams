//
//  combination-clothes.swift
//  boj-tester
//
//  Created by Daeho Park on 3/15/26.
//

import Foundation

func CombinationClothes() {
    func solution(_ clothes:[[String]]) -> Int {
        var set: [String: Int] = [:]
        clothes.forEach { item in
            set[item[1], default: 0] += 1
        }
        return set.map { $0.value + 1 }.reduce(1, *) - 1
    }


    let result = solution(
        [
            ["yellow_hat", "headgear"],
            ["blue_sunglasses", "eyewear"],
            ["green_turban", "headgear"]
        ]
    )
    print(result)
}



