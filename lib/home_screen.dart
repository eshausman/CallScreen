import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(builder: (context){
          return IconButton(onPressed: () => Scaffold.of(context).openDrawer(),
           icon: Icon(
            Icons.dehaze,
            color: Colors.pink,
           ),
           );
        },
        ),
        title: Text("Logo", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
      actions: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.pink, width: 2)
          ),
          margin: EdgeInsets.all(8.0),
          padding: EdgeInsets.all(8.0),
          child: Row(children: [
          Icon(Icons.wallet, color: Colors.purple.shade800,),
          Text(' \$100.00', style: TextStyle(color: Colors.purple.shade800, ),),
        ],),),
        SizedBox(width: 10,)
      ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          child: Column(children: [
            Row(children: [
              Text('Available for Calls', style: TextStyle(fontSize: size.width*0.04, fontWeight: FontWeight.bold),),
              Spacer(),
              Text('See all', style: TextStyle(color: Colors.pink, fontWeight: FontWeight.w600),),
            ],),
            SizedBox(height: 20,),
           SingleChildScrollView(
            scrollDirection: Axis.horizontal,
             child: Row(children: [
              CustomContainer(),
              CustomContainer(),
              CustomContainer()
             ],),
           ),
           SizedBox(height: 10,),
           Row(children: [
              Text('Available for Calls', style: TextStyle(fontSize: size.width*0.04, fontWeight: FontWeight.bold),),
              Spacer(),
              Text('See all', style: TextStyle(color: Colors.pink, fontWeight: FontWeight.w600),),
            ],),
            SizedBox(height: 10,),
           SingleChildScrollView(
            scrollDirection: Axis.horizontal,
             child: Row(children: [
              CustomContainer(),
              CustomContainer(),
              CustomContainer()
             ],),
           ),
           SizedBox(height: 15,),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 13.0, bottom: 13.0, left: 20.0, right: 20.0),
              child: Text("Chat with astrologer", style: TextStyle(color: Colors.white, fontSize: 12),),
            ),
          ),
          SizedBox(width: 15,),
          Container(
            decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 13.0, bottom: 13.0, left: 20.0, right: 20.0),
              child: Text("Call with astrologer", style: TextStyle(color: Colors.white, fontSize: 12),),
            ),
          )
        ],)
          ],),
        ),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              height: 145,
              width: 115,
            decoration: BoxDecoration(color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
            BoxShadow(
            color: Color.fromARGB(255, 241, 241, 241).withOpacity(0.5),
            spreadRadius: 7,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
      ),
    ],),
      child: Column(children: [
        SizedBox(height: 10,),
        CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage('person.jpg'),
        ),
        SizedBox(height: 10,),
        Text('Taro Queen', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 08),),
        Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Text('Exp: 12 Years', style: TextStyle(fontSize: 05),),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0, bottom: 2.5),
          child: Row(children: [
            Icon(Icons.translate, color: Colors.yellow[600], size: 08,),
          SizedBox(width: 5,),
          Text('English, Hindi, Gujarathi', style: TextStyle(fontSize: 05),)
          ],),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0, left: 8.0, bottom: 5.0),
          child: Row(children: [
            Icon(Icons.currency_rupee_rounded, color: Colors.yellow[700], size: 08,),
          SizedBox(width: 5,),
          Text('35/min', style: TextStyle(fontSize: 05),)
          ],),
        ),
        Row(children: [
          Padding(
            padding: const EdgeInsets.only(right: 3.0, left: 8.0,),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple[100],
                borderRadius:BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 6.0, left: 6.0, top: 2.5, bottom: 2.5),
                child: Text('Tarot', style: TextStyle(fontSize: 05),),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 3.0, left: 3.0,),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple[100],
                borderRadius:BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 6.0, left: 6.0, top: 2.5, bottom: 2.5),
                child: Text('Neurologist', style: TextStyle(fontSize: 05),),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0, left: 3.0,),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple[100],
                borderRadius:BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 6.0, left: 6.0, top: 2.5, bottom: 2.5),
                child: Text('Tarot', style: TextStyle(fontSize: 05),),
              ),
            ),
          )
        ],),
        
      ],),
    );
  }
}