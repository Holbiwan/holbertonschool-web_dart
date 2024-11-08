int calculateScore(Map<String, int> team) {
  return team.entries.fold(0, (points, entry) {
    switch (entry.key) {
      case 'Free throws':
        return points + entry.value;
      case '2 pointers':
        return points + entry.value * 2;
      case '3 pointers':
        return points + entry.value * 3;
      default:
        return points;
    }
  });
}

int determineWinner(Map<String, int> teamA, Map<String, int> teamB) {
  int scoreA = calculateScore(teamA);
  int scoreB = calculateScore(teamB);
  return scoreA.compareTo(scoreB);
}
