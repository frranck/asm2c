import PackageDescription

let package = Package(
 name: "asm2c",
    dependencies: [
        .Package(url: "https://github.com/crossroadlabs/Regex.git", Version(1, 0, 0, prereleaseIdentifiers: ["alpha", "1"])),
        .Package(url: "https://github.com/frranck/Expression", Version(0,3,0))])
