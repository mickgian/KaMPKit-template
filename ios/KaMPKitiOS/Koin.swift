//
//  KoinApplication.swift
//  KaMPStarteriOS
//
//  Created by Russell Wolf on 6/18/20.
//  Copyright © 2020 Touchlab. All rights reserved.
//

import Foundation
import shared

func startKoin() {
    // You could just as easily define all these dependencies in Kotlin,
    // but this helps demonstrate how you might pass platform-specific
    // dependencies in a larger scale project where declaring them in
    // Kotlin is more difficult, or where they're also used in
    // iOS-specific code.

    let userDefaults = UserDefaults(suiteName: "KAMPSTARTER_SETTINGS")!
    let iosAppInfo = IosAppInfo()
    let doOnStartup = { NSLog("Hello from iOS/Swift!") }

    KoinIOSKt.doInitKoinIos(
        userDefaults: userDefaults,
        appInfo: iosAppInfo,
        doOnStartup: doOnStartup
    )
}

class IosAppInfo: AppInfo {
    let appId: String = Bundle.main.bundleIdentifier!
}
