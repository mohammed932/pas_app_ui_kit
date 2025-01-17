part of 'home_tabs.imports.dart';

@RoutePage()
class HomeTabsScreen extends StatefulWidget {
  const HomeTabsScreen({super.key});

  @override
  State<HomeTabsScreen> createState() => _HomeTabsScreenState();
}

class _HomeTabsScreenState extends State<HomeTabsScreen> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      routes: [
        HomeRoute(),
        TasksRoute(),
        RequestsRoute(),
        AttendanceRoute(),
      ],
      builder: (context, child, tabController) {
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabController.index,
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.black,
            type: BottomNavigationBarType.fixed,
            unselectedLabelStyle: PasTextTheme.of(context).small.regular(),
            showUnselectedLabels: true,
            onTap: (index) {
              tabController.index = index;
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.task),
                label: 'Tasks',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.message),
                label: 'Requests',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today),
                label: 'Attendance',
              ),
            ],
          ),
        );
      },
    );
    // return Scaffold(
    //   body: _pages[_currentIndex],
    //   bottomNavigationBar: BottomNavigationBar(
    //     currentIndex: _currentIndex,
    //     onTap: (index) {
    //       setState(() {
    //         _currentIndex = index;
    //       });
    //     },
    //     type: BottomNavigationBarType.fixed, // Ensures all items are shown
    //     selectedItemColor: Colors.green, // Color for the selected tab
    //     unselectedItemColor: Colors.grey, // Color for the unselected tabs
    //     items: const [
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.home),
    //         label: "Home",
    //       ),
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.check_circle_outline),
    //         label: "Tasks",
    //       ),
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.chat_bubble_outline),
    //         label: "Requests",
    //       ),
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.calendar_today_outlined),
    //         label: "Attendance",
    //       ),
    //     ],
    //   ),
    // );
  }
}
