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
      name: 'Basil',
      soilDryThreshold: 550,
      lightThreshold: 500,
    ),
    MockPlant(
      name: 'rosemary',
      soilDryThreshold: 300,
      lightThreshold: 550,
    ),
    MockPlant(
      name: 'Sage',
      soilDryThreshold: 400,
      lightThreshold: 500,
    ),
  ];
}
