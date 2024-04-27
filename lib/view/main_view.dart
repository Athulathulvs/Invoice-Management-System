

import 'package:myapp/view/side_nav.dart';

import '../imports.dart';
import '../widgets/text/textbuilder.dart';
import 'home/home.dart';
import 'invoice_admin/invoice/invoice.dart';

class MainView extends StatefulWidget {
  final int initRoute;

  const MainView({Key? key, required this.initRoute}) : super(key: key);
  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _currentIndex = 0;

  List<Widget> tabs = [Home(), Invoice(), Payment(), Profile()];
  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initRoute;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: TextBuilder(
          text: 'Invoice Management UI',
          color: Colors.black,
        ),
      ),
      drawer: Drawer(child: SideNav()),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black26,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.toc), label: 'Invoice'),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance), label: 'Payment'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
