// Web-compatible file picker implementation
// This avoids importing the Linux-specific code that includes dbus

export 'package:file_picker/src/file_picker.dart';
export 'package:file_picker/src/platform_file.dart';
export 'package:file_picker/src/file_picker_result.dart';
export 'package:file_picker/src/file_picker_io.dart';
// Explicitly exclude Linux and Windows implementations that cause dbus dependency
// export 'package:file_picker/src/linux/file_picker_linux.dart'; // EXCLUDED - causes dbus
// export 'package:file_picker/src/file_picker_macos.dart'; // EXCLUDED - may cause issues
// Use stub for Windows to avoid FFI dependency
export 'package:file_picker/src/windows/file_picker_windows_stub.dart';
