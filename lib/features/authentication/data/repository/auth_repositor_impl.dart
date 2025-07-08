abstract class AuthRepository {
  Future<void> sendOtp(String phoneNumber);
  Future<void> verifyOtp(String smsCode);
  Future<void> saveUser(String name, String phone, String passowrd);
  Future<void> loginWithUsername(String username, String password);
}
