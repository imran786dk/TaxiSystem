using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace TaxiSystem.Test
{
    [TestClass]
    public class TaxiSystemTest
    {
        [TestMethod]
        public void Test_PassWordMail()
        {
            //Arrange
            bool expected = true;
            string password = "123456";
            string email = "imran786dk@gmail.com";

            //Act
            bool actual = EmailHandler.PasswordMail(password, email);

            //Assert
            Assert.AreEqual(expected, actual);

        }

        [TestMethod]
        public void Test_CalculateShift()
        {
            Shift expected = new Shift();

            expected.units = 1000;
            expected.trips = 10;
            expected.mileage = 120;
            expected.occupiedMileage = 60;
            expected.controlMileage = 60;

            Taxi taxiOld = new Taxi();

            taxiOld.units = 1000;
            taxiOld.trips = 10;
            taxiOld.mileage = 120;
            taxiOld.occupiedMileage = 60;
            taxiOld.controlMileage = 60;
            taxiOld.vehicleMileage = 130;

            Taxi taxiNew = new Taxi();

            taxiNew.units = 2000;
            taxiNew.trips = 20;
            taxiNew.mileage = 240;
            taxiNew.occupiedMileage = 120;
            taxiNew.controlMileage = 120;
            taxiNew.vehicleMileage = 260;

            Shift actual = ShiftHandler.CalculateShift(taxiOld, taxiNew);

            Assert.AreEqual(expected.units, actual.units);
            Assert.AreEqual(expected.trips, actual.trips);
            Assert.AreEqual(expected.mileage, actual.mileage);
            Assert.AreEqual(expected.occupiedMileage, actual.occupiedMileage);
            Assert.AreEqual(expected.controlMileage, actual.controlMileage);

        }

        [TestMethod]
        public void Test_RandomPassword()
        {
            int passwordLength = 8;

            string password = PasswordHandler.RandomPassword();

            Assert.AreEqual(passwordLength, password.Length);

        }

        [TestMethod]
        public void Test_CompareNewPassword()
        {
            string passwordNew = "HelloWorld";
            string passwordOld = "HelloWorld";
            bool expected = true;

            bool actual = PasswordHandler.CompareNewPassword(passwordNew,passwordOld);

            Assert.AreEqual(expected, actual);
        }

        [TestMethod]
        public void Test_ValidateNewPassword()
        {
            string password = "HelloWorld";
            bool expected = true;

            bool actual = PasswordHandler.ValidateNewPassword(password);

            Assert.AreEqual(expected, actual);

        }

        [TestMethod]
        public void Test_CalculatePay()
        {
            int units = 37113;
            int withoutMeter = 4000;
            int errorTrips = 500;
            int onAccount = 1000;
            double expected = 19306.50;
            
            double actual = ShiftHandler.CalculatePay(units, withoutMeter, errorTrips, onAccount);

            Assert.AreEqual(expected, actual);

        }

        [TestMethod]
        public void Test_CalculateUnitPerMile()
        {
            int units = 4000;
            int mileage = 400;
            double expected = 10.00;

            double actual = ShiftHandler.CalculateUnitPerMile(units, mileage);

            Assert.AreEqual(expected, actual);

        }

    }
}
