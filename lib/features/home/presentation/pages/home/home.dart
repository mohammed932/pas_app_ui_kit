part of '../home_tabs.imports.dart';

// @RoutePage()
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.h),
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 HomeAppBar(),
//                 Gap(20.h),
//                 CheckInOutWidget(),
//                 Gap(24.h),
//                 ElevatedButton(
//                   onPressed: () {
//                     context.router.push(const CustomModalRoute());
//                   },
//                   child: Text("ok"),
//                 ),
//                 NotificationCard(
//                   text: "You have 3 lost hours",
//                   leadingIcon: Assets.resources.icons.speaker,
//                   onTap: () {},
//                 ),
//                 Gap(30.h),
//                 QuickActions(),
//                 Gap(30.h),
//                 SectionTitle.withAction(
//                   title: "Pending Requests ",
//                   actionTitle: "Manage",
//                   onTap: () {},
//                 ),
//                 Gap(10.h),
//                 CustomCard(
//                   child: ListView.separated(
//                     shrinkWrap: true,
//                     physics: NeverScrollableScrollPhysics(),
//                     itemCount: 8,
//                     separatorBuilder: (context, index) {
//                       return Divider();
//                     },
//                     itemBuilder: (context, index) {
//                       return AttendanceCard(
//                         title: "Annual Leave",
//                         attendenceInfo: AttendenceInfo(
//                             startDate: "23 Jan 2024",
//                             duration: "3 Days",
//                             endDate: "23 Jan 2024"),
//                         attendenceStatus: AttendenceStatus(
//                           label: "Pending",
//                           color: PasColors.system.notification,
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//                 Gap(30.h),
//                 SectionTitle.withAction(
//                   title: "My Schedule",
//                   actionTitle: "Manage",
//                   onTap: () {},
//                 ),
//                 Gap(10.h),
//                 SizedBox(
//                   height: 120.h,
//                   child: ListView.separated(
//                     itemCount: 5,
//                     scrollDirection: Axis.horizontal,
//                     shrinkWrap: true,
//                     separatorBuilder: (context, index) {
//                       return Gap(5.w);
//                     },
//                     itemBuilder: (context, index) {
//                       return Container(
//                         width: MediaQuery.of(context).size.width * 0.85,
//                         child: ScheduleEventCard(
//                           eventName: 'Monday Wake-Up',
//                           time: '11:00 AM',
//                           statusText: 'Online',
//                           dateBackgroundColor: Colors.blue,
//                           timeBackgroundColor: Colors.blue[50]!,
//                           statusIcon: Icons.videocam,
//                           statusTextColor: Colors.blue,
//                           onTap: () {
//                             print('Event Card Tapped!');
//                           },
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//                 Gap(30.h),
//                 SectionTitle.withAction(
//                   title: "Upcoming Events",
//                   actionTitle: "View all",
//                   onTap: () {},
//                 ),
//                 Gap(10.h),
//                 SizedBox(
//                   height: 265.h,
//                   child: ListView.separated(
//                     itemCount: 5,
//                     scrollDirection: Axis.horizontal,
//                     shrinkWrap: true,
//                     separatorBuilder: (context, index) {
//                       return Gap(10.w);
//                     },
//                     itemBuilder: (context, index) {
//                       return Container(
//                         width: MediaQuery.of(context).size.width * 0.85,
//                         child: UpComingEventCard(
//                           imageUrl:
//                               'https://www.cvent.com/sites/default/files/styles/focus_scale_and_crop_800x450/public/image/2023-11/Business_Travel_Trends_Bleisure_Event-Cvent_CONNECT_2023.jpg?h=a1e1a043&itok=VYeG7ZHX',
//                           title: 'Monday Wake-Up Hour',
//                           subtitle: 'Important meeting',
//                           date: '02 Nov, 2024',
//                           time: '04:00 - 05:00 PM',
//                           statusText: 'Online',
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//                 Gap(30.h),
//                 SectionTitle.withAction(
//                   title: "Announcements",
//                   actionTitle: "View all",
//                   onTap: () {},
//                 ),
//                 Gap(10.h),
//                 SizedBox(
//                   height: 210.h,
//                   child: ListView.separated(
//                     itemCount: 5,
//                     scrollDirection: Axis.horizontal,
//                     shrinkWrap: true,
//                     separatorBuilder: (context, index) {
//                       return Gap(10.w);
//                     },
//                     itemBuilder: (context, index) {
//                       return Container(
//                         width: MediaQuery.of(context).size.width * 0.85,
//                         child: AnnouncementCard(),
//                       );
//                     },
//                   ),
//                 ),
//                 Gap(50.h),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
@RoutePage()
class HomeScreen extends BaseStateless {
  const HomeScreen({super.key});

  @override
  Widget buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeAppBar(),
          Gap(20.h),
          CheckInOutWidget(),
          Gap(24.h),
          ElevatedButton(
            onPressed: () {
              context.router.push(const CustomModalRoute());
            },
            child: Text("ok"),
          ),
          NotificationCard(
            text: "You have 3 lost hours",
            leadingIcon: Assets.resources.icons.speaker,
            onTap: () {},
          ),
          Gap(30.h),
          QuickActions(),
          Gap(30.h),
          SectionTitle.withAction(
            title: "Pending Requests ",
            actionTitle: "Manage",
            onTap: () {},
          ),
          Gap(10.h),
          CustomCard(
            child: ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 8,
              separatorBuilder: (context, index) {
                return Divider();
              },
              itemBuilder: (context, index) {
                return AttendanceCard(
                  title: "Annual Leave",
                  attendenceInfo: AttendenceInfo(
                      startDate: "23 Jan 2024",
                      duration: "3 Days",
                      endDate: "23 Jan 2024"),
                  attendenceStatus: AttendenceStatus(
                    label: "Pending",
                    color: PasColors.system.notification,
                  ),
                );
              },
            ),
          ),
          Gap(30.h),
          SectionTitle.withAction(
            title: "My Schedule",
            actionTitle: "Manage",
            onTap: () {},
          ),
          Gap(10.h),
          SizedBox(
            height: 120.h,
            child: ListView.separated(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return Gap(5.w);
              },
              itemBuilder: (context, index) {
                return Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: ScheduleEventCard(
                    eventName: 'Monday Wake-Up',
                    time: '11:00 AM',
                    statusText: 'Online',
                    dateBackgroundColor: Colors.blue,
                    timeBackgroundColor: Colors.blue[50]!,
                    statusIcon: Icons.videocam,
                    statusTextColor: Colors.blue,
                    onTap: () {
                      print('Event Card Tapped!');
                    },
                  ),
                );
              },
            ),
          ),
          Gap(30.h),
          SectionTitle.withAction(
            title: "Upcoming Events",
            actionTitle: "View all",
            onTap: () {},
          ),
          Gap(10.h),
          SizedBox(
            height: 265.h,
            child: ListView.separated(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return Gap(10.w);
              },
              itemBuilder: (context, index) {
                return Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: UpComingEventCard(
                    imageUrl:
                        'https://www.cvent.com/sites/default/files/styles/focus_scale_and_crop_800x450/public/image/2023-11/Business_Travel_Trends_Bleisure_Event-Cvent_CONNECT_2023.jpg?h=a1e1a043&itok=VYeG7ZHX',
                    title: 'Monday Wake-Up Hour',
                    subtitle: 'Important meeting',
                    date: '02 Nov, 2024',
                    time: '04:00 - 05:00 PM',
                    statusText: 'Online',
                  ),
                );
              },
            ),
          ),
          Gap(30.h),
          SectionTitle.withAction(
            title: "Announcements",
            actionTitle: "View all",
            onTap: () {},
          ),
          Gap(10.h),
          SizedBox(
            height: 210.h,
            child: ListView.separated(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return Gap(10.w);
              },
              itemBuilder: (context, index) {
                return Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: AnnouncementCard(),
                );
              },
            ),
          ),
          Gap(50.h),
        ],
      ),
    );
  }
}
