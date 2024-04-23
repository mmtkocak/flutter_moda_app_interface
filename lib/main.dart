import 'package:flutter/material.dart';
import 'package:flutter_moda_app/detay.dart';

void main() => runApp(ModaApp());

class ModaApp extends StatelessWidget {
  const ModaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa>  with SingleTickerProviderStateMixin{
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController=TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
   tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(indicatorColor: Colors.transparent,controller:tabController,tabs: const [
          Tab(icon: Icon(Icons.more,color: Colors.grey,size: 22,),),
          Tab(icon: Icon(Icons.play_arrow,color: Colors.grey,size: 22,),),
          Tab(icon: Icon(Icons.navigation,color: Colors.black,size: 22,),),
          Tab(icon: Icon(Icons.supervised_user_circle,color: Colors.grey,size: 22,),),
        ]),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Moda Uygulama Arayüzü",
          style: TextStyle(
              fontFamily: 'Montserrat',
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.camera_alt),
            onPressed: (){},
            color: Colors.grey,
          ),
        ],
      ),

      body: ListView(
        padding: EdgeInsets.only(top:10),
        children: <Widget>[
          //üst taraftaki profil listesi
          Container(
           // color: Colors.blue.shade300,
            height: 140,
            width: double.infinity,
            child: ListView(
              padding: EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                listeElemani('assets/model1.jpeg','assets/chanellogo.jpg'),
                const SizedBox(width: 30,),
                listeElemani('assets/model2.jpeg','assets/louisvuitton.jpg'),
                const SizedBox(width: 30,),
                listeElemani('assets/model3.jpeg','assets/chloelogo.png'),
                const SizedBox(width: 30,),
                listeElemani('assets/model1.jpeg','assets/chanellogo.jpg'),
                const SizedBox(width: 30,),
                listeElemani('assets/model2.jpeg','assets/louisvuitton.jpg'),
                const SizedBox(width: 30,),
                listeElemani('assets/model3.jpeg','assets/chloelogo.png'),
              ],
            ),
          ),

          //card
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 4,
             // color: Colors.blue.shade300,
              child: Container(
                height: 500,
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(image: AssetImage('assets/model1.jpeg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width-160,
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Daisy",
                                style: TextStyle(fontFamily: 'Montserrat',
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 5,),
                              Text(
                                "34 mins ago",
                                style: TextStyle(fontFamily: 'Montserrat',
                                    fontSize: 12,
                                    color: Colors.grey
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10,),
                        const Icon(Icons.more_vert,color: Colors.grey,size: 22,)
                      ],
                    ),
                    const SizedBox(height: 15,),
                    const Text("This official website features a ribbed knit zipper jacket that is"
                        "modern and stylish. It looks very temparament and is recommend to friends",
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Montserrat',
                        color: Colors.grey
                      ),
                    ),
                    const SizedBox(height: 15,),
                    Row(
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context)=> Detay(imgPath:'assets/modelgrid1.jpeg')));
                          },
                          child: Hero(
                            tag: 'assets/modelgrid1.jpeg',
                            child: Container(
                              width: (MediaQuery.of(context).size.width-50)/2,
                              height: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(image: AssetImage("assets/modelgrid1.jpeg",),
                                  fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Column(
                          children: [
                            InkWell(
                              onTap: (){
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context)=> Detay(imgPath:'assets/modelgrid2.jpeg')));
                              },
                              child: Hero(
                                tag: 'assets/modelgrid2.jpeg',
                                child: Container(
                                  width: (MediaQuery.of(context).size.width-100)/2,
                                  height: 95,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: const DecorationImage(image: AssetImage("assets/modelgrid2.jpeg",),
                                      fit: BoxFit.cover,),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10,),
                            InkWell(
                              onTap: (){
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context)=> Detay(imgPath:'assets/modelgrid3.jpeg')));
                              },
                              child: Hero(
                                tag: 'assets/modelgrid3.jpeg',
                                child: Container(
                                  width: (MediaQuery.of(context).size.width-100)/2,
                                  height: 95,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: const DecorationImage(image: AssetImage("assets/modelgrid3.jpeg",),
                                      fit: BoxFit.cover,),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        Container(
                          height: 25,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.brown.withOpacity(0.2)
                          ),
                          child: const Center(
                            child: Text("#Louis voitton",
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 10,
                                  color: Colors.brown
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Container(
                          height: 25,
                          width: 75,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.brown.withOpacity(0.2)
                          ),
                          child: const Center(
                            child: Text("#Chloe",
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 10,
                                  color: Colors.brown
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    const Divider(),
                    const SizedBox(height: 20,),
                    Row(
                      children: [
                        Icon(Icons.reply,color: Colors.brown.withOpacity(0.2), size: 30,),
                        const SizedBox(width: 10,),
                        const Text("1.7K", style: TextStyle(fontFamily: 'Montserrat', fontSize: 16,),),
                        const SizedBox(width: 25,),
                        Icon(Icons.message,color: Colors.brown.withOpacity(0.2), size: 30,),
                        const SizedBox(width: 10,),
                        const Text("325", style: TextStyle(fontFamily: 'Montserrat', fontSize: 16,),),

                        SizedBox(
                          width: MediaQuery.of(context).size.width-250,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.favorite,color: Colors.red, size: 30,),
                               SizedBox(width: 5,),
                               Text("2.3K", style: TextStyle(fontFamily: 'Montserrat', fontSize: 16,),),
                            ],
                          ),
                        ),
                      ],
                    ),


                  ],
                    ),
              ),
            ),
          ),

        ],
      ),
    );
  }

  listeElemani(String imagePath, String logoPath) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                image: DecorationImage(image: AssetImage(imagePath),fit: BoxFit.cover),
              ),
            ),
        Positioned(
          top: 50,
          left: 50,
          child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(image: AssetImage(logoPath),fit: BoxFit.cover),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10,),
        Container(
          height: 30,
          width: 75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.brown
          ),
          child: const Center(
            child: Text("Follow", style: TextStyle(
            fontFamily: 'Montserrat',
              fontSize: 14,
              color: Colors.white
            ),
            ),
          ),
        ),
      ],
    );
  }
}

