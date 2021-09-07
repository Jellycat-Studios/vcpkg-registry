vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO salty-max/jelly-engine
  REF v0.0.2
  SHA512 71963ba55b5518a2a66b84649e529589c62708cac87e6252873abdc4d1c5006b3b06e472504f69c8c9fb5048bf24d70561d2b6c13e50bb2835389857aff31948
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