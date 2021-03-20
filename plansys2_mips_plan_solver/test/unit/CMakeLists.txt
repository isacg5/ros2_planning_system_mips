ament_add_gtest(mips_test mips_test.cpp)
target_link_libraries(mips_test ${PROJECT_NAME} dl)
target_compile_definitions(mips_test PUBLIC "PLUGINLIB__DISABLE_BOOST_FUNCTIONS")