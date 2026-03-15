function solution(participant, completion) {
    const counts = {};
    participant.forEach((p) => 
      counts[p] = (counts[p] ?? 0) + 1
    )
    completion.forEach((c) => 
      counts[c] -= 1
    )
    return Object.keys(counts).filter(k => counts[k] > 0);
}

console.log(solution(["leo", "kiki", "eden"], ["eden", "kiki"]));           // "leo"
console.log(solution(["marina", "josipa", "nikola", "vinko", "filipa"], ["josipa", "filipa", "marina", "nikola"])); // "vinko"
console.log(solution(["mislav", "stanko", "mislav", "ana"], ["stanko", "ana", "mislav"])); // "mislav"