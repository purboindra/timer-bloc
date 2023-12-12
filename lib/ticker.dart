class Ticker {
  const Ticker();

  Stream<int> ticker({required int ticks}) {
    return Stream.periodic(
      const Duration(seconds: 1),
      (computationCount) => ticks - computationCount - 1,
    ).take(ticks);
  }
}
