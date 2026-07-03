import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.blue[800],

      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        elevation: 0,
        title: const Text("ONE TOMAS"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(15),

        child: Column(

          children: [

            TextField(

              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Search",

                prefixIcon: const Icon(Icons.search),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide.none,
                ),

              ),

            ),

            const SizedBox(height: 20),

            buildCard(
              "Medication Reminders",
              Icons.medication,
            ),

            buildCard(
              "Appointment Scheduling",
              Icons.calendar_today,
            ),

            buildCard(
              "Pension Scheduling",
              Icons.people,
            ),

          ],

        ),
      ),
    );
  }

  Widget buildCard(String title, IconData icon){

    return Card(

      margin: const EdgeInsets.only(bottom: 15),

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),

      child: ListTile(

        leading: Icon(
          icon,
          color: Colors.blue,
        ),

        title: Text(title),

        trailing: ElevatedButton(
          onPressed: (){},
          child: const Text("SHOW"),
        ),

      ),

    );

  }

}