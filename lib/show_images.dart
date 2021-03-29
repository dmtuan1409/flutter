import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OneImage extends StatelessWidget {
  final List<String> images;
  OneImage({this.images});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Image.network(
      this.images[0],
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
          height: 200,
          alignment: Alignment.center,
          decoration: new BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      this.images[0],
                  ),
                  fit: BoxFit.fill
              )
            ),
          ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.01,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.495,
          height: 200,
          alignment: Alignment.center,
          decoration: new BoxDecoration(

              image: new DecorationImage(
                  image: NetworkImage(this.images[0]),
                  fit: BoxFit.fill
              )
          ),
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
              width: MediaQuery.of(context).size.width * 0.495,
              height: 200,
              alignment: Alignment.center,
              decoration: new BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(this.images[0]),
                      fit: BoxFit.fill)
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.01,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.495,
              height: 200,
              alignment: Alignment.center,
              decoration: new BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(this.images[1]), fit: BoxFit.fill)),
            ),
          ],
        ),
        SizedBox(
          height: 2,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 200,
          alignment: Alignment.center,
          decoration: new BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(this.images[2]), fit: BoxFit.fill)),
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
          height: 250,
          alignment: Alignment.center,
          decoration: new BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(this.images[0]), fit: BoxFit.fill)),
        ),
        SizedBox(
          height: 2,
        ),
        Row(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * 49 / 150,
              height: 150,
              alignment: Alignment.center,
              decoration: new BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(this.images[1]), fit: BoxFit.fill)),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.01,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 49 / 150,
              height: 150,
              alignment: Alignment.center,
              decoration: new BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(this.images[2]), fit: BoxFit.fill)),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.01,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 49 / 150,
              height: 150,
              alignment: Alignment.center,
              decoration: new BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(this.images[3]), fit: BoxFit.fill)),
            ),
          ],
        )
      ],
    );
  }
}
