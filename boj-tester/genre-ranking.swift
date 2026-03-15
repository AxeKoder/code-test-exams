//
//  genre-ranking.swift
//  boj-tester
//
//  Created by Daeho Park on 3/15/26.
//

import Foundation

func GenreRanking() {
    func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
        var totalPlays: [String: Int] = [:]
        genres.enumerated().forEach { i, genre in
            totalPlays[genre, default: 0] += plays[i]
        }
        
        
        return totalPlays
            .sorted(by: { $0.value > $1.value })
            .flatMap { genre, _ in
                genres.indices
                    .filter { genres[$0] == genre }
                    .sorted(by: { plays[$0] != plays[$1] ? plays[$0] > plays[$1] : $0 < $1 })
                    .prefix(2)
            }
    }


    let result = solution(["classic", "pop", "classic", "classic", "pop"], [500, 600, 150, 800, 2500])
    print(result)
}
