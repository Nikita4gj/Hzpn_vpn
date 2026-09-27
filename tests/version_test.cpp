#include <gtest/gtest.h>

#include "hzpn/version.hpp"

TEST(Version, IsNotEmpty) 
{
    EXPECT_FALSE(hzpn::version().empty());
}
