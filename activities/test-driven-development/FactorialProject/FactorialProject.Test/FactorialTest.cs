using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace FactorialProject.Test
{
    [TestClass]
    public class FactorialTest
    {
        [TestMethod]
        public void TestComputeFactorial_OnSmallNaturalNumber()
        {
            //Arrange
            int inputNumber = 3;
            int expectedResult = 6;

            //Act
            int result = FactorialClass.ComputeFactorial(inputNumber);

            //Assert
            Assert.AreEqual(expectedResult, result);
        }
    }
}
