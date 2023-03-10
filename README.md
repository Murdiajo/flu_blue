
![flutterblue](https://user-images.githubusercontent.com/63837987/224366523-2c34264f-2c93-466e-859a-8213bf7107e8.png)



# Flu_Bluetooth
Flutter bluetooth 2023 

# Introducción
FlutterBlue es un complemento de bluetooth para Flutter , un nuevo SDK de aplicaciones para ayudar a los desarrolladores a crear aplicaciones multiplataforma modernas.

# Bluetooth LE multiplataforma
FlutterBlue tiene como objetivo ofrecer lo mejor de ambas plataformas (iOS y Android).
Con la instancia de FlutterBlue, puede buscar y conectarse a dispositivos cercanos ( BluetoothDevice ). Una vez conectado a un dispositivo, el objeto BluetoothDevice puede descubrir servicios ( BluetoothService ), características ( BluetoothCharacteristic ) y descriptores ( BluetoothDescriptor ). Luego, el objeto BluetoothDevice se usa para interactuar directamente con características y descriptores.

#  flutter_blue: ^0.8.0 

-- USANDO ESTA ULTIMA VERSION TENEMOS QUE HACER VARIOS ARREGLOS PARA SU COMPATIBILIDAD

1.- Si inicias la depuracion o corres el proyecto, te va salir un error:

	BUILD FAILED in 14s
	┌─ Flutter Fix ─────────────────────────────────────────────────────────────────────────────────┐
	│ The plugin flutter_blue requires a higher Android SDK version.                                │
	│ Fix this issue by adding the following to the file                                            │
	│ D:\FLUTTER2\Bluetooth_2\bluetooth_mmv2\FLUTTER_BLUETOOTH\flu_blue\android\app\build.gradle:   │
	│ android {                                                                                     │
	│   defaultConfig {                                                                             │
	│     minSdkVersion 19                                                                          │
	│   }                                                                                           │
	│ }                                                                                             │
	│                                                                                               │
	│ Note that your app won't be available to users running Android SDKs below 19.                 │
	│ Alternatively, try to find a version of this plugin that supports these lower versions of the │
	│ Android SDK.                                                                                  │
	│ For more information, see:                                                                    │
	│ https://docs.flutter.dev/deployment/android#reviewing-the-gradle-build-configuration          │
	└───────────────────────────────────────────────────────────────────────────────────────────────┘

	Exception: Gradle task assembleDebug failed with exit code 1
	Exited (sigterm)

# 2.- Te dirijes a 

  android\app\build.gradle

-- La falla te sale en "GrandleException"
----------------------------------------------------------------
	def flutterRoot = localProperties.getProperty('flutter.sdk')
	if (flutterRoot == null) {
    throw new GradleException("Flutter SDK not found. Define location with flutter.sdk in the local.properties file.")
	}

---------------------------------------------------------------

-- Lo reemplazas por "FileNotFoundException"

	def flutterRoot = localProperties.getProperty('flutter.sdk')
	if (flutterRoot == null) {
    	throw new FileNotFoundException("Flutter SDK not found. Define location with flutter.sdk in the local.properties file.")
	}

-------------------------------------------------------------

# 3.- ahora buscas "defaultConfig" dentro de "build.gradle"

----------------------------------------------------------------------------------------------------------------------------
	defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId "com.example.flutter_application_mmv2"
        // You can update the following values to match your application needs.
        // For more information, see: https://docs.flutter.dev/deployment/android#reviewing-the-gradle-build-configuration.
        minSdkVersion flutter.minSdkVersion
        targetSdkVersion flutter.targetSdkVersion
        versionCode flutterVersionCode.toInteger()
        versionName flutterVersionName


-- Cambias el "minSdkVersion" y "targetSdkVersion"
	
	minSdkVersion 19
	targetSdkVersion 30
----------------------------------------------------------------------------------------------------------------------------
	defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId "com.example.flutter_application_mmv2"
        // You can update the following values to match your application needs.
        // For more information, see: https://docs.flutter.dev/deployment/android#reviewing-the-gradle-build-configuration.
        minSdkVersion 19
        targetSdkVersion 30
        versionCode flutterVersionCode.toInteger()
        versionName flutterVersionName
----------------------------------------------------------------------------------------------------------------------------

# 4.- Estoy usando (Flutter (Channel stable, 3.7.7))

	ingresas a pubspec.yaml y agregas 
	
	flutter_blue: ^0.8.0
	
