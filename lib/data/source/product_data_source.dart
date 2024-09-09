import 'package:dio/dio.dart';
import 'package:ecommerce/data/product.dart';

abstract class IProductRepository {
  Future<List<ProductEntity>> getAll(int sort);
  Future<List<ProductEntity>> search(String searchTerm);
}

class ProductRemoteDataSource implements IProductRepository {
  late final Dio httpClient;
  @override
  Future<List<ProductEntity>> getAll(int sort) async{
    final response = await httpClient.get('product/list?sort=$sort');
    validateResponse(response);
  }

  @override
  Future<List<ProductEntity>> search(String searchTerm) {
    // TODO: implement search
    throw UnimplementedError();
  }

  validateResponse(Response response){
    if(response.statusCode!=200){
      
    }
  }
}
