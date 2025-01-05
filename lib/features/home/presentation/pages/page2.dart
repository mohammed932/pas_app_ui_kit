import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:pas_app/core/injection/injection.dart';
import 'package:pas_app/core/theme/buttons/app_button.dart';

import '../../../../core/utils/enums.dart';
import '../../../../core/utils/helper_dialogs.dart';
import '../bloc/check_in_out/check_in_out_bloc.dart';

class PageTwo extends StatefulWidget {
  final VoidCallback onNext;
  final VoidCallback onPrevious;
  const PageTwo({super.key, required this.onNext, required this.onPrevious});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CheckInOutBloc>(),
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BlocConsumer<CheckInOutBloc, CheckInOutState>(
                listener: (context, state) {
                  Dialogs.setIsLoading(
                      context, state.attendanceState == RequestState.loading
                      // ||
                      //     state.locationState == RequestState.loading,
                      );
                  if (state.locationState == RequestState.error) {
                    Dialogs.showCustomDialog(
                      context: context,
                      title: "Error",
                      content: state.errorPayload?.description ?? "",
                      onConfirm: () {},
                    );
                  }
                },
                builder: (context, state) {
                  if (state.checkInOutStatus == CheckInOut.checkOut) {
                    return AppButton(
                      text: "checkIn",
                      color: Colors.green,
                      onPressed: () {
                        context
                            .read<CheckInOutBloc>()
                            .add(const CheckInOutEvent.checkIn());
                      },
                    );
                  }
                  return AppButton(
                    text: "checkOut",
                    color: Colors.red,
                    onPressed: () {
                      context
                          .read<CheckInOutBloc>()
                          .add(const CheckInOutEvent.checkOut());
                    },
                  );
                },
              ),
              Gap(20.h),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     ElevatedButton(
              //       onPressed: widget.onNext,
              //       child: const Text("button2"),
              //     ),
              //     ElevatedButton(
              //       onPressed: widget.onPrevious,
              //       child: const Text("back"),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
