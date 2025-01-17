part of '../home_tabs.imports.dart';

@RoutePage()
class RequestsScreen extends StatefulWidget {
  const RequestsScreen({super.key});

  @override
  State<RequestsScreen> createState() => _RequestsScreenState();
}

class _RequestsScreenState extends State<RequestsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Requests"),
      ),
      body: Container(
        padding: EdgeInsets.all(15.0),
        child: CustomScrollView(
          slivers: [
            MultiSliver(
              pushPinnedChildren: true,
              children: [
                StickyHeader(title: "Updates"),
                StickyList(),
              ],
            ),
            MultiSliver(
              pushPinnedChildren: true,
              children: [
                StickyHeader(title: "Pending Requests"),
                StickyList(),
              ],
            ),
            MultiSliver(
              pushPinnedChildren: true,
              children: [
                StickyHeader(title: "History"),
                StickyList(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
