using System;
using System.Collections.Generic;

namespace EventEaseST10443356Part1.Models;

public partial class Event
{
    public int EventId { get; set; }

    public string EventName { get; set; } = null!;

    public object StartDate { get; set; } = null!;

    public object EndDate { get; set; } = null!;
}
