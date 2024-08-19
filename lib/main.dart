import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Add back button action
          },
        ),
        title: Text(
          'الصفحة الرئيسية',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings, color: Colors.black),
            onPressed: () {
              // Add settings button action
            },
          ),
        ],
        centerTitle: true,
      ),
      body: Column(
        children: [
          ListTile(
            tileColor: Colors.grey[300],
            leading: Icon(Icons.article_outlined),
            title: Text('الحالة'),
            subtitle: Text('مدينة جدة'),
            trailing: Icon(Icons.arrow_back),
            onTap: () {
              // Add navigation to 'الحالة' page
            },
          ),
          SizedBox(height: 10),
          ListTile(
            tileColor: Colors.grey[300],
            leading: Icon(Icons.calendar_today_outlined),
            title: Text('جدول الصيانة'),
            subtitle: Text('مدينة فصول'),
            trailing: Icon(Icons.arrow_back),
            onTap: () {
              // Add navigation to 'جدول الصيانة' page
            },
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.all(10),
            color: Colors.red[100],
            child: ListTile(
              leading: Icon(Icons.warning_amber_outlined, color: Colors.yellow),
              title: Text(
                'تنبيه',
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Text('مدينة التنبيهات'),
              trailing: Icon(Icons.arrow_back),
              onTap: () {
                // Add navigation to 'تنبيه' page
              },
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: '',
          ),
        ],
        onTap: (index) {
          // Handle bottom navigation item tap
        },
      ),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: Icon(Icons.language),
                onPressed: () {
                  // Handle language change
                },
              ),
            ),
            Spacer(),
            Icon(
              Icons.lock_outline,
              size: 100,
              color: Colors.black,
            ),
            SizedBox(height: 20),
            Text(
              'تسجيل الدخول',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'اسم المستخدم :',
                hintText: 'أدخل اسم المستخدم هنا',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'الرمز السري:',
                hintText: 'أدخل الرمز السري هنا',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                suffixIcon: Icon(Icons.visibility_off),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Checkbox(
                  value: true, // Change this to false if unchecked by default
                  onChanged: (bool? value) {
                    // Handle checkbox state change
                  },
                ),
                Text('تذكرني'),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle login button press
              },
              child: Text('تسجيل'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'ليس لديك حساب؟ سجل الان!',
              style: TextStyle(fontSize: 14),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
