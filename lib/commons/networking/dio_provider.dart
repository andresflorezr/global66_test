import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:global66_test/commons/networking/dio_client.dart';

final dioClientProvider = Provider<DioClient>((ref) {
  return DioClient();
});
