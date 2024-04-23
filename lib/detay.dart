import 'package:flutter/material.dart';

class Detay extends StatefulWidget {
  var imgPath;

  Detay({this.imgPath});


  @override
  State<Detay> createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: widget.imgPath,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(widget.imgPath),
                    fit: BoxFit.cover,
                  )
              ),
            ),
          ),

          Positioned(
            left: 15,
            right: 15,
            bottom: 15,
            child: Material(
              borderRadius: BorderRadius.circular(10),
              elevation: 4,
              child: Container(
                height: 240,
                width: MediaQuery.of(context).size.width-30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            width: 100,
                            height: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey),
                              image: const DecorationImage(image: AssetImage('assets/dress.jpg'),
                              fit: BoxFit.contain),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("LAMINATED",
                            style: TextStyle(
                              fontSize: 22,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                            ),),
                            const SizedBox(height: 5,),
                            const Text("Louis vuitton",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Montserrat',
                                color: Colors.grey,
                              ),),
                            const SizedBox(height: 10,),
                            SizedBox(
                              height: 75,
                              width: MediaQuery.of(context).size.width-180,
                              child: const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam quis pharetra dolor.",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: 'Montserrat',
                                  color: Colors.grey,
                                ),),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Divider(),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 10, bottom: 2, right: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('\$6500',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 22,
                          ),),
                          FloatingActionButton(
                            child: Icon(Icons.arrow_forward_ios, color: Colors.white),
                            backgroundColor: Colors.brown,
                            onPressed: () {  },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Positioned(
            top: MediaQuery.of(context).size.height/2,
            left: 50,
            child: Container(
              height: 40,
              width: 130,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Center(child: Text("LAMINATED",style: TextStyle(fontFamily: 'Montserrat', color: Colors.white,fontWeight: FontWeight.bold),)),
                  Icon(Icons.arrow_forward_ios,color: Colors.white, size: 18,)
                ],
              ),
            ),

          ),
        ],
      ),
    );
  }
}
