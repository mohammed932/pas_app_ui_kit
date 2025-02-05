import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:pas_app/core/injection/injection.dart';

import '../../../../core/router/router.dart';
import '../../../../core/theme/buttons/app_button.dart';
import '../../../../core/theme/inputs/regular_text_field.dart';
import '../../../../core/theme/typography/pas_text_theme.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../main.dart';
import '../bloc/login/login_bloc.dart';
import '../widgets/curverd_header.dart';
import '../widgets/otp_pin.dart';
part 'intro.dart';
part 'login/login.dart';
part 'otp.dart';
part 'reset_password/reset_password.dart';
