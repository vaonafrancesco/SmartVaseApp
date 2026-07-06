class MockPlant {
  final String name;
  final int soilDryThreshold;
  final int lightThreshold;

  const MockPlant({
    required this.name,
    required this.soilDryThreshold,
    required this.lightThreshold,
  });
}

class PlantMockData {
  static const List<MockPlant> plants = [
    MockPlant(
      name: 'Basilico',
      soilDryThreshold: 550,
      lightThreshold: 500,
    ),
    MockPlant(
      name: 'Rosmarino',
      soilDryThreshold: 300,
      lightThreshold: 550,
    ),
    MockPlant(
      name: 'Salvia',
      soilDryThreshold: 400,
      lightThreshold: 500,
    ),
  ];
}
