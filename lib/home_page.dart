import 'package:animated_shoes_app/shoes.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: null,
        title: const Text(
          "Nike",
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
        // brightness: Brightness.light,
        actions: <Widget>[
/*          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none,
              color: Colors.black,
            ),
          ),*/
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
          ),
          const SizedBox(width: 10,),

        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
             /* Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    AspectRatio(
                      aspectRatio: 2.4 / 1,
                      child: FadeInUp(
                          duration: const Duration(milliseconds: 1000),
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(20)),
                            child: const Center(
                              child: Text(
                                "All",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          )),
                    ),
                    AspectRatio(
                      aspectRatio: 2.2 / 1,
                      child: FadeInUp(
                          duration: const Duration(milliseconds: 1100),
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: const Center(
                              child: Text(
                                "Sneakers",
                                style: TextStyle(fontSize: 17),
                              ),
                            ),
                          )),
                    ),
                    AspectRatio(
                      aspectRatio: 2.2 / 1,
                      child: FadeInUp(
                          duration: const Duration(milliseconds: 1200),
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: const Center(
                              child: Text(
                                "Football",
                                style: TextStyle(fontSize: 17),
                              ),
                            ),
                          )),
                    ),
                    AspectRatio(
                      aspectRatio: 2.2 / 1,
                      child: FadeInUp(
                          duration: const Duration(milliseconds: 1300),
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: const Center(
                              child: Text(
                                "Soccer",
                                style: TextStyle(fontSize: 17),
                              ),
                            ),
                          )),
                    ),
                    AspectRatio(
                      aspectRatio: 2.2 / 1,
                      child: FadeInUp(
                          duration: const Duration(milliseconds: 1400),
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: const Center(
                              child: Text(
                                "Golf",
                                style: TextStyle(fontSize: 17),
                              ),
                            ),
                          )),
                    ),
                  ],
                ),
              ),*/
              const SizedBox(
                height: 20,
              ),
              BounceInUp(
                  duration: const Duration(milliseconds: 1500),
                  child: makeItem(
                      image: 'assets/one.jpg', tag: 'red', context: context)),
              BounceInUp(
                  duration: const Duration(milliseconds: 1600),
                  child: makeItem(
                      image: 'assets/two.jpg', tag: 'blue', context: context)),
              BounceInUp(
                  duration: const Duration(milliseconds: 1700),
                  child: makeItem(
                      image: 'assets/three.jpg',
                      tag: 'white',
                      context: context)),
              BounceInUp(
                  duration: const Duration(milliseconds: 1700),
                  child: makeItem(
                      image: 'assets/five.jpg',
                      tag: 'white',
                      context: context)),
              BounceInUp(
                  duration: const Duration(milliseconds: 1700),
                  child: makeItem(
                      image: 'assets/six.jpg',
                      tag: 'white',
                      context: context)),
            ],
          ),
        ),
      ),
    );
  }

  Widget makeItem({image, tag, context}) {
    return Hero(
      tag: tag,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Shoes(
                    image: image,
                    tag: tag,
                  )));
        },
        child: Container(
          height: 250,
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image:
              DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 10,
                    offset: const Offset(0, 10))
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FadeInUp(
                            duration: const Duration(milliseconds: 1000),
                            child: const Text(
                              "Sneakers",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        BounceInUp(
                            duration: const Duration(milliseconds: 1100),
                            child: const Text(
                              "Nike",
                              style:
                              TextStyle(color: Colors.white, fontSize: 20),
                            )),
                      ],
                    ),
                  ),
                  BounceInUp(
                      duration: const Duration(milliseconds: 1200),
                      child: Container(
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
                      ))
                ],
              ),
              BounceInUp(
                  duration: const Duration(milliseconds: 1200),
                  child: const Text(
                    "100\$",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
