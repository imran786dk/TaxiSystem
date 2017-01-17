namespace TaxiSystem
{
    public class TaxiOwner : User
    {
        public string cvrNo { get; set; }
        public string company { get; set; }
        public int PayCheckStart { get; set; }
        public int PayShare { get; set; }

    }
}