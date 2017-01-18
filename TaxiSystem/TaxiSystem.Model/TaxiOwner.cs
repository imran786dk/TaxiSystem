namespace TaxiSystem
{
    public class TaxiOwner : User
    {
        public string cvrNo { get; set; }
        public string company { get; set; }
        public int payCheckStart { get; set; }
        public int payShare { get; set; }

    }
}