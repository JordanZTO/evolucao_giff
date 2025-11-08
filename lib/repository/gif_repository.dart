import '../services/giphy_service.dart';

class GifRepository {
  final GiphyService _service = GiphyService();

Future<Map<String, dynamic>?> getRandomGif({
  String tag = '',
  String rating = 'g',
  required String randomId,
}) async {
  try {
    return await _service.getRandomGif(
      tag: tag,
      rating: rating,
      randomId: randomId,
    );
  } catch (e) {
    rethrow;
  }
}


  Future<String?> getRandomId() async {
    try {
      return await _service.getRandomId();
    } catch (e) {
      rethrow;
    }
  }
}
