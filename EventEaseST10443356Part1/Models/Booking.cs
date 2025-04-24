using System;
using System.Collections.Generic;

namespace EventEaseST10443356Part1.Models;

public partial class Booking
{
    public int BookingId { get; set; }

    public int VenueId { get; set; }

    public int EventId { get; set; }

    public object BookedDate { get; set; } = null!;
}
