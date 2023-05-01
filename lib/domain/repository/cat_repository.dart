abstract class CatRepository {
  Future<List<dynamic>> fetchCats({required int limit});
}
