import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class Shoes extends StatefulWidget {
  final String image;
  final String tag;

  const Shoes({super.key, required this.image, required this.tag});

  @override
  _ShoesState createState() => _ShoesState();
}

class _ShoesState extends State<Shoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Hero(
            tag: widget.tag,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.image), fit: BoxFit.cover),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400,
                      blurRadius: 10,
                      offset: const Offset(0, 10),
                    )
                  ]),
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            child: const Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          width: 35,
                          height: 35,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: const Center(
                            child: Icon(
                              Icons.favorite_border,
                              size: 20,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    width: MediaQuery.of(context).size.width,
                    height: 500,
                    child: FlipInX(
                        duration: const Duration(milliseconds: 1000),
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.bottomRight,
                                  colors: [
                                    Colors.black.withOpacity(.9),
                                    Colors.black.withOpacity(.0),
                                  ])),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              FlipInX(
                                  duration: const Duration(milliseconds: 1300),
                                  child: const Text(
                                    "Sneakers",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 50,
                                        fontWeight: FontWeight.bold),
                                  )),
                              const SizedBox(
                                height: 25,
                              ),
                              FlipInX(
                                  duration: const Duration(milliseconds: 1400),
                                  child: const Text(
                                    "Size",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  )),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: <Widget>[
                                  FlipInX(
                                      duration: const Duration(milliseconds: 1450),
                                      child: Container(
                                        width: 40,
                                        height: 40,
                                        margin: const EdgeInsets.only(right: 20),
                                        child: const Center(
                                            child: Text(
                                              '40',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                      )),
                                  FlipInX(
                                      duration: const Duration(milliseconds: 1450),
                                      child: Container(
                                        width: 40,
                                        height: 40,
                                        margin: const EdgeInsets.only(right: 20),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                            BorderRadius.circular(10)),
                                        child: const Center(
                                            child: Text(
                                              '42',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )),
                                      )),
                                  FlipInX(
                                      duration: const Duration(milliseconds: 1460),
                                      child: Container(
                                        width: 40,
                                        height: 40,
                                        margin: const EdgeInsets.only(right: 20),
                                        child: const Center(
                                            child: Text(
                                              '44',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                      )),
                                  FlipInX(
                                      duration: const Duration(milliseconds: 1470),
                                      child: Container(
                                        width: 40,
                                        height: 40,
                                        margin: const EdgeInsets.only(right: 20),
                                        child: const Center(
                                            child: Text(
                                              '46',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                      )),
                                ],
                              ),
                              const SizedBox(
                                height: 60,
                              ),
                              ZoomIn(
                                  duration: const Duration(milliseconds: 1500),
                                  child: Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15)),
                                    child: const Center(
                                        child: Text(
                                          'Buy Now',
                                          style: TextStyle(fontWeight: FontWeight.bold),
                                        )),
                                  )),
                              const SizedBox(
                                height: 30,
                              ),
                            ],
                          ),
                        )),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
