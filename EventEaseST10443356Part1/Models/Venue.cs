using System;
using System.Collections.Generic;

namespace EventEaseST10443356Part1.Models;

public partial class Venue
{
    public int VenueId { get; set; }

    public string VenueName { get; set; } = null!;

    public string VenueLocation { get; set; } = null!;

    public int VenueCapacity { get; set; }
}
