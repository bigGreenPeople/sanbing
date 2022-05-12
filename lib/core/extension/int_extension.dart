import 'package:sanbing/ui/shared/size_fit.dart';

extension IntFit on int {
  double get px {
    return FjSizeFit.setPx(toDouble());
  }

  double get rpx {
    return FjSizeFit.setRpx(toDouble());
  }
}