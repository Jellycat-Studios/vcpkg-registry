vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO salty-max/jelly-engine
  REF v0.0.1
  SHA512 521159813f85094db02622c75735ec97944ef2150752b2e9f758719e70d9931b029c2a36f9bb551a7c664cd0cb8f10e9e1abc08a27f8ffb2feb7304172fa9ad6
  HEAD_REF master
)

vcpkg_configure_cmake(
  SOURCE_PATH "${SOURCE_PATH}"
  PREFER_NINJA
)
vcpkg_install_cmake()
vcpkg_fixup_cmake_targets()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR/debug/include}")

file(
  INSTALL "${SOURCE_PATH}/LICENSE"
  DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
  RENAME copyright
)