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
        public void Test_GetTaxi()
        {
            int id = 5;
            string expected = "1-1264";
            
            Taxi actual = TaxiHandler.GetTaxi(id);

            Assert.AreEqual(expected, actual.permissionNo);

        }

        [TestMethod]
        public void Test_GetTaxiDriverById()
        {
            int id = 14;
            string expected = "Hans";

            TaxiDriver actual = TaxiDriverHandler.GetTaxiDriverById(id);

            Assert.AreEqual(expected, actual.fName);

        }

        [TestMethod]
        public void Test_CheckTaxi()
        {
            bool expected = true;
            string permissionNo = "1-0163";

            bool actual = DbHelper.CheckTaxi(permissionNo);

            Assert.AreEqual(expected, actual);

        }
    }
}
