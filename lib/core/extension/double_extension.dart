import 'package:sanbing/ui/shared/size_fit.dart';

extension DoubleFit on double {
  double get px {
    return FjSizeFit.setPx(this);
  }

  double get rpx {
    return FjSizeFit.setRpx(this);
  }
}
