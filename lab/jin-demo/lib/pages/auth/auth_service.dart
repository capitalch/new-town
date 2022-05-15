abstract class AuthService {
  Future<bool> login();

  Future<bool> logout() async {
    return Future.delayed(Duration(seconds: 2), () => true);
  }
}

class PhoneAuth extends AuthService {
  final String phoneNo;

  PhoneAuth({required this.phoneNo});

  @override
  Future<bool> login() {
    return Future.delayed(Duration(seconds: 2), () => true);
  }
}

class FacebookAuth extends AuthService {
  @override
  Future<bool> login() {
    return Future.delayed(Duration(seconds: 2), () => true);
  }
}

class GmailAuth extends AuthService {
  @override
  Future<bool> login() {
    return Future.delayed(Duration(seconds: 2), () => true);
  }
}

class AppleAuth extends AuthService {
  @override
  Future<bool> login() {
    return Future.delayed(Duration(seconds: 2), () => true);
  }
}

// class TwitterAuth extends AuthService {
//   @override
//   Future<bool> login() {
//     return Future.delayed(Duration(seconds: 2), () => true);
//   }
// }
