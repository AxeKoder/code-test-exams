function solution(genres, plays) {
    const totalPlays = {};
    genres.forEach((genre, i) => {
        totalPlays[genre] = (totalPlays[genre] ?? 0) + plays[i];
    });

    return Object.entries(totalPlays)
        .sort((a, b) => b[1] - a[1])
        .flatMap(([genre]) =>
            genres.reduce((indices, g, i) => (g === genre ? [...indices, i] : indices), [])
                .sort((a, b) => plays[a] !== plays[b] ? plays[b] - plays[a] : a - b)
                .slice(0, 2)
        );
}

const result = solution(["classic", "pop", "classic", "classic", "pop"], [500, 600, 150, 800, 2500]);
console.log(result); // [4, 1, 3, 0]
