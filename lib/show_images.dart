import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget showImage(String url){
  return Image.network(
    url,
    fit: BoxFit.cover,
    loadingBuilder:(BuildContext context, Widget child,ImageChunkEvent loadingProgress) {
      if (loadingProgress == null) return child;
      return Center(
        child: CircularProgressIndicator(
          value: loadingProgress.expectedTotalBytes != null ?
          loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes
              : null,
        ),
      );
    },
  );
}

class OneImage extends StatelessWidget {
  final List<String> images;
  OneImage({this.images});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // return Image.network(
    //   this.images[0],
    // );
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width ,
      // child: Expanded(
      child: showImage(this.images[0]),
      // ),
    );
  }
}

class TwoImage extends StatelessWidget {
  final List<String> images;
  TwoImage({this.images});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width * 0.495,
          height: MediaQuery.of(context).size.width * 0.9,
          // child: Expanded(
          child: showImage(this.images[0]),
          // ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.01,
        ),
        Container(
          width: MediaQuery.of(context).size.width *0.495,
          height: MediaQuery.of(context).size.width * 0.9,
          // child: Expanded(
          child: showImage(this.images[1]),
          // ),
        ),
      ],
    );
  }
}

class ThreeImage extends StatelessWidget {
  final List<String> images;
  ThreeImage({this.images});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width*0.495,
              height: MediaQuery.of(context).size.width *0.5,
              // child: Expanded(
              child: showImage(this.images[0]),
              // ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.01,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.495,
              height: MediaQuery.of(context).size.width * 0.5,
              // child: Expanded(
              child: showImage(this.images[1]),
              // ),
            )
            // Container(
            //   width: MediaQuery.of(context).size.width * 0.495,
            //   height: 200,
            //   alignment: Alignment.center,
            //   decoration: new BoxDecoration(
            //       image: DecorationImage(
            //           image: NetworkImage(this.images[1]), fit: BoxFit.fill)),
            // ),
          ],
        ),
        SizedBox(
          height: 2,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width * 0.7,
          // child: Expanded(
          child: showImage(this.images[2]),
          // ),
        ),
      ],
    );
  }
}

class FourImage extends StatelessWidget {
  final List<String> images;
  FourImage({this.images});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width * 0.5,
          // child: Expanded(
          child: showImage(this.images[0]),
          // ),
        ),
        SizedBox(
          height: 2,
        ),
        Row(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * 49/150,
              height: MediaQuery.of(context).size.width *0.4,
              // child: Expanded(
              child: showImage(this.images[1]),

              // ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.01,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 49/150,
              height: MediaQuery.of(context).size.width * 0.4,
              // child: Expanded(
              child: showImage(this.images[2]),
              // ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.01,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 49/150,
              height: MediaQuery.of(context).size.width *0.4,
              // child: Expanded(
              child:showImage(this.images[3]),
              // ),
            ),
          ],
        )
      ],
    );
  }
}
