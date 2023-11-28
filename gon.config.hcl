# Source: https://github.com/arduino/tooling-project-assets/blob/main/workflow-templates/assets/general/gon.config.hcl
# See: https://github.com/Bearer/gon#configuration-file
source = ["dist/imgtool_macOS_64bit/imgtool"]
bundle_id = "cc.arduino.imgtool"

sign {
  application_identity = "Developer ID Application: ARDUINO SA (7KT7ZWMCJT)"
  entitlements_file = "entitlements.plist"
}

# Ask Gon for zip output to force notarization process to take place.
# The CI will ignore the zip output, using the signed binary only.
zip {
  output_path = "unused.zip"
}
