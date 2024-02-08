import 'package:movie_booking_app/core/service/caching/caching_service.dart';
import 'package:movie_booking_app/core/util/http/responser.dart';

sealed class TicketDataSource {
  Future<Responser<List<Map<String, dynamic>>?>> getMyShow();
  Future<Responser<bool?>> bookMyShow({
    required Map<String, dynamic> ticket,
  });
}

class TicketDataSourceImpl implements TicketDataSource {
  final CachingService cachingService;
  const TicketDataSourceImpl(this.cachingService);
  @override
  Future<Responser<bool?>> bookMyShow({
    required Map<String, dynamic> ticket,
  }) async {
    try {
      final myShowsRes = await getMyShow();
      if (myShowsRes.isLeft()) {
        throw 'Error occurred in Caching service';
      }
      final myShows = myShowsRes.fold((l) => null, (r) => r) ?? [];
      myShows.add(ticket);
      await cachingService.insertData('my_tickets', myShows);
      return success(true);
    } catch (e) {
      return failed(e.toString());
    }
  }

  @override
  Future<Responser<List<Map<String, dynamic>>?>> getMyShow() async {
    try {
      final data = (await cachingService.getData('my_tickets') as List?)
          ?.map(
            (e) => Map<String, dynamic>.from(
              e as Map,
            ),
          )
          .toList();
      return success(data);
    } catch (e) {
      return failed(e.toString());
    }
  }
}
