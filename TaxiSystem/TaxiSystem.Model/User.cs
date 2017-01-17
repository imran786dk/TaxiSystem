namespace TaxiSystem
{
    public class User
    {
        public int userId { get; set; }
        public string fName { get; set; }
        public string lName { get; set; }
        public string street { get; set; }
        public int zipCode { get; set; }
        public string city { get; set; }
        public string country { get; set; }
        public string tel { get; set; }
        public string email { get; set; }
        public int typeId { get; set; }
        public string password { get; set; }
        public string salt { get; set; }
        public string createDate { get; set; }
        public int statusId { get; set; }

    }
}