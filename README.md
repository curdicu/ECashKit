# ECashKit.Swift

```swift
let seed = Mnemonic.seed(mnemonic: [""], passphrase: "")!

let ECashKit = try ECashKit.Kit(
        seed: seed,
        walletId: "unique_wallet_id",
        syncMode: .full,
        networkType: .mainNet(),
        confirmationsThreshold: 1,
        logger: nil
)
```
## Prerequisites

* Xcode 10.0+
* Swift 5+
* iOS 13+

## Installation

### Swift Package Manager

```swift
dependencies: [
    .package(url: "https://github.com/curdicu/ECashKit.git", .upToNextMajor(from: "1.0.0"))
]
```
