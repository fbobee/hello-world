#include <gtest/gtest.h>
#include "../alma.h"

namespace {
class TestAlma : public ::testing::Test { 
public:
  TestAlma(){}
  virtual ~TestAlma(){}
  virtual void SetUp(){
  }
  virtual void TearDown(){
  }
};
} //namespace

TEST_F(TestAlma, alma){
  Alma a;
  EXPECT_EQ(4,a.alma(1));
}

int main (int argc, char **argv) {
  testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}



