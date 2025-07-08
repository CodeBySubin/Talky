plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
    id("com.google.gms.google-services") 
}

android {
    namespace = "com.example.finflux"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = "27.0.12077973"

    packagingOptions {
    pickFirst("lib/arm64-v8a/libaosl.so")
    pickFirst("lib/armeabi-v7a/libaosl.so")
    pickFirst("lib/x86/libaosl.so")
    pickFirst("lib/x86_64/libaosl.so")
}
    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId = "com.example.finflux"
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        minSdk = 23
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

buildTypes {
    getByName("release") {
        signingConfig = signingConfigs.getByName("debug")
        isMinifyEnabled = true
        isShrinkResources = true
        proguardFiles(
            getDefaultProguardFile("proguard-android-optimize.txt"),
            "proguard-rules.pro"
        )
    }
}

}
dependencies {
    implementation("com.google.firebase:firebase-auth:22.3.0")
}


flutter {
    source = "../.."
}
