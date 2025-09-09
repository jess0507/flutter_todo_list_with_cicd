import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';


class DataService {
  Stream<String> get dataStream {
    return Stream.value('Real Data');
  }
}

class MockDataService extends Mock implements DataService {}

void main() {
  // 創建 Mock 物件的實例
  late MockDataService mockDataService;

  setUpAll(() {
    mockDataService = MockDataService();
    when(() => mockDataService.dataStream).thenAnswer((_) => Stream.value('Real Data'));
  });

  test('TestDataService emits data', () {
    final resultStream = mockDataService.dataStream;

    const testData = 'Real Data';
    expect(resultStream, emits(testData));
  });
}
