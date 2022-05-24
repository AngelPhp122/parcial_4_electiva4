import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:parcial_4_electiva4/app/ui/paginas/home/principalController.dart';

class PrincipalPagina extends StatefulWidget {
  //PrincipalPagina({Key? key}) : super(key: key);

  @override
  State<PrincipalPagina> createState() => _PrincipalPaginaState();
}

class _PrincipalPaginaState extends State<PrincipalPagina> {
  
  final _controller = PrincipalController();
  final _initialCameraPosition =
   const CameraPosition(target: LatLng(13.6845738,-89.2334234));
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MovilSV'),
      ),
      body: Column(
        children: [SizedBox(
          width: 500,
          height: 500,
          child: GoogleMap(
            markers: _controller.markers,
          onMapCreated: _controller.onMapCreated,                   
          initialCameraPosition: _controller.initialCameraPosition,
          //myLocationButtonEnabled: false,
          //scrollGesturesEnabled: true,
          //compassEnabled: true,
          //zoomGesturesEnabled: true,
          //mapType: MapType.hybrid,
          //onTap: _controller.onTap
          )
        )],
        //child: [GoogleMap(initialCameraPosition: _initialCameraPosition)],
      )
    );
  }
}