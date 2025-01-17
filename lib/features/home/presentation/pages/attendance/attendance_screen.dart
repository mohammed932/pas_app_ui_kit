part of '../home_tabs.imports.dart';

@RoutePage()
class AttendanceScreen extends StatefulWidget {
  const AttendanceScreen({super.key});

  @override
  State<AttendanceScreen> createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  _openModal() {
    Dialogs.bottomSheetModel(
      context,
      title: "Add Request Leave",
      content: LeaveRequestModalContent(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("attendance"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.r),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AttendenceStatusCard(),
                AttendenceStatusCard(),
                AttendenceStatusCard(),
              ],
            ),
            Gap(20.h),
            SectionTitle.titleOnly(
              title: "Attendance History",
            ),
            Gap(10.h),
            ChoiceChipGroup(
              onSelected: (String value) {},
              options: [
                ChipModel(label: "All", value: "all"),
                ChipModel(label: "Absent", value: "absent"),
                ChipModel(label: "Leaves", value: "leaves"),
                ChipModel(label: "Permissions", value: "permissions"),
              ],
            ),
            Gap(10.h),
            CustomCard(
              child: ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 3,
                separatorBuilder: (context, index) {
                  return Divider(
                    thickness: 0.5,
                  );
                },
                itemBuilder: (context, index) {
                  return AttendanceCard(
                    title: "Mar 18, 2024",
                    attendenceInfo: AttendenceInfo(
                      startDate: "23 Jan 2024",
                      duration: "3 Days",
                      endDate: "23 Jan 2024",
                    ),
                    attendenceStatus: AttendenceStatus(
                      label: "Late",
                      color: PasColors.system.error200,
                    ),
                    attendenceRequest: AttendenceRequest(
                      label: "",
                      onTap: _openModal,
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LeaveRequestModalContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Leave Requests",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text("Choose a reason for your request"),
        SizedBox(height: 16),
        ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: [
            RequestTile(
              icon: Assets.resources.icons.pill,
              title: "Annual leave",
              subtitle: "15 Day",
            ),
            RequestTile(
              icon: Assets.resources.icons.pill,
              title: "Casual Leave",
              subtitle: "6 Day",
            ),
            RequestTile(
              icon: Assets.resources.icons.pill,
              title: "Sick Leave",
              subtitle: "30 Day",
            ),
          ],
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close modal
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text("Confirm"),
          ),
        ),
      ],
    );
  }
}
