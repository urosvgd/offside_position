void main() {}

bool offSidePosition(List<List<int>> teams) {
  List<int> team1 = teams[0];
  List<int> team2 = teams[1];
  team1.sort();
  team2.sort();

  if (team2[0] < team1[0] || team2[0] < team1[1]) {
    return true;
  }

  if (team1[team1.length - 1] > team2[team2.length - 1] ||
      team1[team1.length - 1] > team2[team2.length - 2]) {
    return true;
  }
  return false;
}
