import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hexcolor/hexcolor.dart';


class Artboard67 extends StatefulWidget {
  const Artboard67({Key? key}) : super(key: key);

  @override
  _Artboard67State createState() => _Artboard67State();
}

class _Artboard67State extends State<Artboard67> {
  late CameraPosition _cameraPosition;
  late GoogleMapController _googleMapController;
  Set <Marker>  _marker=<Marker>[].toSet();
  Set <Circle>  _circles=<Circle>[].toSet();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _cameraPosition=CameraPosition(
        target: LatLng(31.530556, 34.452679),
        zoom: 9
    );
  }
  @override
  Widget build(BuildContext context) {
    return GoogleMap(
        initialCameraPosition: _cameraPosition,
        // myLocationButtonEnabled: false,
        // myLocationEnabled: false,
        onTap: (LatLng latLng){
          _addMarker(latLng);
          _addCircle(latLng);
      _googleMapController.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(target: latLng,zoom: 9),
        ),);
    },
    onMapCreated:(GoogleMapController controller){
    _googleMapController=controller;
    },
      markers: _marker,
      circles: _circles,
    );
  }

  void _addCircle(LatLng latLng){

    var circle =Circle(
        circleId: CircleId('circle_${_circles.length}'),
        center: latLng,
      radius: 75,
      fillColor: HexColor('#B4E4D7'),

    );
    setState(() {
      _circles.add(circle);
    });
  }



  void _addMarker(LatLng latLng){
    var marker=Marker(markerId: MarkerId('marker_${_marker.length}'),
    position: latLng,
    infoWindow: InfoWindow(title: 'Marker ${_marker.length}')
    );
    setState(() {
      _marker.add(marker);
    });
  }
}
