import 'package:client/models/service.dart';

class HiredService {
  // data
  int clientId;
  Service service;
  String start;
  String end;
  String lat;
  String lng;
  String address;
  int nurseId;

  HiredService(
    int clientId,
    Service service,
    String start,
    String lat,
    String lng,
    String address,
    int nurseId,
  ) {
    this.clientId = clientId;
    this.service = service;
    this.start = start;
    // Calcular end //start+length
    this.lat = lat;
    this.lng = lng;
    this.address = address;
    this.nurseId = nurseId;
  }

  Map data() {
    return {
      'clientId': clientId.toString(),
      'serviceId': service.id.toString(),
      'nurseId': nurseId.toString(),
      'start': start,
      'end': end,
      'lat': lat,
      'lng': lng,
      'address': address,
    };
  }
}
