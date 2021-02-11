# Swift-Sodium 


Only the files for the swift package have been kept. 

- The struct named `Sodium` has been renamed `SodiumSwift` to fix the generated `.swiftinterface`.
- We use `@_implementationOnly import Clibsodium` ti hide `Clibsodium`.
- `SecretStream.PullStream` and `SecretStream.PushStream` are not private to hide `Clibsodium`. If those classes are needed later publicly, they can be wrapped.
