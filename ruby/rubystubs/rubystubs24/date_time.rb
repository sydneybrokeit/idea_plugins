=begin
 This is a machine generated stub using stdlib-doc for <b>class DateTime</b>
 Sources used:  Ruby 2.4.0-preview1
 Created by IntelliJ Ruby Stubs Generator.
=end

# == DateTime
# 
# A subclass of Date that easily handles date, hour, minute, second and
# offset.
# 
# DateTime does not consider any leap seconds, does not track
# any summer time rules.
# 
# DateTime object is created with DateTime::new, DateTime::jd,
# DateTime::ordinal, DateTime::commercial, DateTime::parse,
# DateTime::strptime, DateTime::now, Time#to_datetime or etc.
# 
#     require 'date'
# 
#     DateTime.new(2001,2,3,4,5,6)
#                         #=> #<DateTime: 2001-02-03T04:05:06+00:00 ...>
# 
# The last element of day, hour, minute or second can be
# fractional number. The fractional number's precision is assumed
# at most nanosecond.
# 
#     DateTime.new(2001,2,3.5)
#                         #=> #<DateTime: 2001-02-03T12:00:00+00:00 ...>
# 
# An optional argument the offset indicates the difference
# between the local time and UTC. For example, <tt>Rational(3,24)</tt>
# represents ahead of 3 hours of UTC, <tt>Rational(-5,24)</tt> represents
# behind of 5 hours of UTC. The offset should be -1 to +1, and
# its precision is assumed at most second. The default value is
# zero(equals to UTC).
# 
#     DateTime.new(2001,2,3,4,5,6,Rational(3,24))
#                         #=> #<DateTime: 2001-02-03T04:05:06+03:00 ...>
# 
# also accepts string form.
# 
#     DateTime.new(2001,2,3,4,5,6,'+03:00')
#                         #=> #<DateTime: 2001-02-03T04:05:06+03:00 ...>
# 
# An optional argument the day of calendar reform (start) denotes
# a Julian day number, which should be 2298874 to 2426355 or
# -/+oo.  The default value is +Date::ITALY+ (2299161=1582-10-15).
# 
# DateTime object has various methods. See each reference.
# 
#     d = DateTime.parse('3rd Feb 2001 04:05:06+03:30')
#                         #=> #<DateTime: 2001-02-03T04:05:06+03:30 ...>
#     d.hour              #=> 4
#     d.min               #=> 5
#     d.sec               #=> 6
#     d.offset            #=> (7/48)
#     d.zone              #=> "+03:30"
#     d += Rational('1.5')
#                         #=> #<DateTime: 2001-02-04%16:05:06+03:30 ...>
#     d = d.new_offset('+09:00')
#                         #=> #<DateTime: 2001-02-04%21:35:06+09:00 ...>
#     d.strftime('%I:%M:%S %p')
#                         #=> "09:35:06 PM"
#     d > DateTime.new(1999)
#                         #=> true
# 
# === When should you use DateTime and when should you use Time?
# 
# It's a common misconception that
# {William Shakespeare}[http://en.wikipedia.org/wiki/William_Shakespeare]
# and
# {Miguel de Cervantes}[http://en.wikipedia.org/wiki/Miguel_de_Cervantes]
# died on the same day in history -
# so much so that UNESCO named April 23 as
# {World Book Day because of this fact}[http://en.wikipedia.org/wiki/World_Book_Day].
# However because England hadn't yet adopted
# {Gregorian Calendar Reform}[http://en.wikipedia.org/wiki/Gregorian_calendar#Gregorian_reform]
# (and wouldn't until {1752}[http://en.wikipedia.org/wiki/Calendar_(New_Style)_Act_1750])
# their deaths are actually 10 days apart.
# Since Ruby's Time class implements a
# {proleptic Gregorian calendar}[http://en.wikipedia.org/wiki/Proleptic_Gregorian_calendar]
# and has no concept of calendar reform then there's no way
# to express this. This is where DateTime steps in:
# 
#     shakespeare = DateTime.iso8601('1616-04-23', Date::ENGLAND)
#      #=> Tue, 23 Apr 1616 00:00:00 +0000
#     cervantes = DateTime.iso8601('1616-04-23', Date::ITALY)
#      #=> Sat, 23 Apr 1616 00:00:00 +0000
# 
# Already you can see something's weird - the days of the week
# are different, taking this further:
# 
#     cervantes == shakespeare
#      #=> false
#     (shakespeare - cervantes).to_i
#      #=> 10
# 
# This shows that in fact they died 10 days apart (in reality
# 11 days since Cervantes died a day earlier but was buried on
# the 23rd). We can see the actual date of Shakespeare's death by
# using the #gregorian method to convert it:
# 
#     shakespeare.gregorian
#      #=> Tue, 03 May 1616 00:00:00 +0000
# 
# So there's an argument that all the celebrations that take
# place on the 23rd April in Stratford-upon-Avon are actually
# the wrong date since England is now using the Gregorian calendar.
# You can see why when we transition across the reform
# date boundary:
# 
#     # start off with the anniversary of Shakespeare's birth in 1751
#     shakespeare = DateTime.iso8601('1751-04-23', Date::ENGLAND)
#      #=> Tue, 23 Apr 1751 00:00:00 +0000
# 
#     # add 366 days since 1752 is a leap year and April 23 is after February 29
#     shakespeare + 366
#      #=> Thu, 23 Apr 1752 00:00:00 +0000
# 
#     # add another 365 days to take us to the anniversary in 1753
#     shakespeare + 366 + 365
#      #=> Fri, 04 May 1753 00:00:00 +0000
# 
# As you can see, if we're accurately tracking the number of
# {solar years}[http://en.wikipedia.org/wiki/Tropical_year]
# since Shakespeare's birthday then the correct anniversary date
# would be the 4th May and not the 23rd April.
# 
# So when should you use DateTime in Ruby and when should
# you use Time? Almost certainly you'll want to use Time
# since your app is probably dealing with current dates and
# times. However, if you need to deal with dates and times in a
# historical context you'll want to use DateTime to avoid
# making the same mistakes as UNESCO. If you also have to deal
# with timezones then best of luck - just bear in mind that
# you'll probably be dealing with
# {local solar times}[http://en.wikipedia.org/wiki/Solar_time],
# since it wasn't until the 19th century that the introduction
# of the railways necessitated the need for
# {Standard Time}[http://en.wikipedia.org/wiki/Standard_time#Great_Britain]
# and eventually timezones.
class DateTime < Date
    # DateTime.jd([jd=0[, hour=0[, minute=0[, second=0[, offset=0[, start=Date::ITALY]]]]]])  ->  datetime
    # 
    # Creates a datetime object denoting the given chronological Julian
    # day number.
    # 
    #    DateTime.jd(2451944)      #=> #<DateTime: 2001-02-03T00:00:00+00:00 ...>
    #    DateTime.jd(2451945)      #=> #<DateTime: 2001-02-04T00:00:00+00:00 ...>
    #    DateTime.jd(Rational('0.5'))
    #                              #=> #<DateTime: -4712-01-01T12:00:00+00:00 ...>
    def self.jd(p1 = v1, p2 = v2, p3 = v3, p4 = v4, p5 = v5, p6 = v6)
        #This is a stub, used for indexing
    end
    # DateTime.ordinal([year=-4712[, yday=1[, hour=0[, minute=0[, second=0[, offset=0[, start=Date::ITALY]]]]]]])  ->  datetime
    # 
    # Creates a date-time object denoting the given ordinal date.
    # 
    #    DateTime.ordinal(2001,34) #=> #<DateTime: 2001-02-03T00:00:00+00:00 ...>
    #    DateTime.ordinal(2001,34,4,5,6,'+7')
    #                              #=> #<DateTime: 2001-02-03T04:05:06+07:00 ...>
    #    DateTime.ordinal(2001,-332,-20,-55,-54,'+7')
    #                              #=> #<DateTime: 2001-02-03T04:05:06+07:00 ...>
    def self.ordinal(p1 = v1, p2 = v2, p3 = v3, p4 = v4, p5 = v5, p6 = v6, p7 = v7)
        #This is a stub, used for indexing
    end
    # DateTime.civil([year=-4712[, month=1[, mday=1[, hour=0[, minute=0[, second=0[, offset=0[, start=Date::ITALY]]]]]]]])  ->  datetime
    # 
    # Creates a date-time object denoting the given calendar date.
    # 
    #    DateTime.new(2001,2,3)    #=> #<DateTime: 2001-02-03T00:00:00+00:00 ...>
    #    DateTime.new(2001,2,3,4,5,6,'+7')
    #                              #=> #<DateTime: 2001-02-03T04:05:06+07:00 ...>
    #    DateTime.new(2001,-11,-26,-20,-55,-54,'+7')
    #                              #=> #<DateTime: 2001-02-03T04:05:06+07:00 ...>
    def self.civil(p1 = v1, p2 = v2, p3 = v3, p4 = v4, p5 = v5, p6 = v6, p7 = v7, p8 = v8)
        #This is a stub, used for indexing
    end
    # DateTime.new([year=-4712[, month=1[, mday=1[, hour=0[, minute=0[, second=0[, offset=0[, start=Date::ITALY]]]]]]]])    ->  datetime
    # 
    # Creates a date-time object denoting the given calendar date.
    # 
    #    DateTime.new(2001,2,3)    #=> #<DateTime: 2001-02-03T00:00:00+00:00 ...>
    #    DateTime.new(2001,2,3,4,5,6,'+7')
    #                              #=> #<DateTime: 2001-02-03T04:05:06+07:00 ...>
    #    DateTime.new(2001,-11,-26,-20,-55,-54,'+7')
    #                              #=> #<DateTime: 2001-02-03T04:05:06+07:00 ...>
    def self.new(p1 = v1, p2 = v2, p3 = v3, p4 = v4, p5 = v5, p6 = v6, p7 = v7, p8 = v8)
        #This is a stub, used for indexing
    end
    # DateTime.commercial([cwyear=-4712[, cweek=1[, cwday=1[, hour=0[, minute=0[, second=0[, offset=0[, start=Date::ITALY]]]]]]]])  ->  datetime
    # 
    # Creates a date-time object denoting the given week date.
    # 
    #    DateTime.commercial(2001) #=> #<DateTime: 2001-01-01T00:00:00+00:00 ...>
    #    DateTime.commercial(2002) #=> #<DateTime: 2001-12-31T00:00:00+00:00 ...>
    #    DateTime.commercial(2001,5,6,4,5,6,'+7')
    #                              #=> #<DateTime: 2001-02-03T04:05:06+07:00 ...>
    def self.commercial(p1 = v1, p2 = v2, p3 = v3, p4 = v4, p5 = v5, p6 = v6, p7 = v7, p8 = v8)
        #This is a stub, used for indexing
    end
    # DateTime.now([start=Date::ITALY])  ->  datetime
    # 
    # Creates a date-time object denoting the present time.
    # 
    #    DateTime.now              #=> #<DateTime: 2011-06-11T21:20:44+09:00 ...>
    def self.now(p1 = v1)
        #This is a stub, used for indexing
    end
    # DateTime._strptime(string[, format='%FT%T%z'])  ->  hash
    # 
    # Parses the given representation of date and time with the given
    # template, and returns a hash of parsed elements.  _strptime does
    # not support specification of flags and width unlike strftime.
    # 
    #  See also strptime(3) and strftime.
    def self._strptime(*args)
        #This is a stub, used for indexing
    end
    # DateTime.strptime([string='-4712-01-01T00:00:00+00:00'[, format='%FT%T%z'[ ,start=ITALY]]])  ->  datetime
    # 
    # Parses the given representation of date and time with the given
    # template, and creates a date object.  strptime does not support
    # specification of flags and width unlike strftime.
    # 
    #    DateTime.strptime('2001-02-03T04:05:06+07:00', '%Y-%m-%dT%H:%M:%S%z')
    #                              #=> #<DateTime: 2001-02-03T04:05:06+07:00 ...>
    #    DateTime.strptime('03-02-2001 04:05:06 PM', '%d-%m-%Y %I:%M:%S %p')
    #                              #=> #<DateTime: 2001-02-03T16:05:06+00:00 ...>
    #    DateTime.strptime('2001-W05-6T04:05:06+07:00', '%G-W%V-%uT%H:%M:%S%z')
    #                              #=> #<DateTime: 2001-02-03T04:05:06+07:00 ...>
    #    DateTime.strptime('2001 04 6 04 05 06 +7', '%Y %U %w %H %M %S %z')
    #                              #=> #<DateTime: 2001-02-03T04:05:06+07:00 ...>
    #    DateTime.strptime('2001 05 6 04 05 06 +7', '%Y %W %u %H %M %S %z')
    #                              #=> #<DateTime: 2001-02-03T04:05:06+07:00 ...>
    #    DateTime.strptime('-1', '%s')
    #                              #=> #<DateTime: 1969-12-31T23:59:59+00:00 ...>
    #    DateTime.strptime('-1000', '%Q')
    #                              #=> #<DateTime: 1969-12-31T23:59:59+00:00 ...>
    #    DateTime.strptime('sat3feb014pm+7', '%a%d%b%y%H%p%z')
    #                              #=> #<DateTime: 2001-02-03T16:00:00+07:00 ...>
    # 
    # See also strptime(3) and strftime.
    def self.strptime(p1 = v1, p2 = v2, p3 = v3)
        #This is a stub, used for indexing
    end
    # DateTime.parse(string='-4712-01-01T00:00:00+00:00'[, comp=true[, start=ITALY]])  ->  datetime
    # 
    # Parses the given representation of date and time, and creates a
    # date object.  This method does not function as a validator.
    # 
    # If the optional second argument is true and the detected year is in
    # the range "00" to "99", makes it full.
    # 
    #    DateTime.parse('2001-02-03T04:05:06+07:00')
    #                              #=> #<DateTime: 2001-02-03T04:05:06+07:00 ...>
    #    DateTime.parse('20010203T040506+0700')
    #                              #=> #<DateTime: 2001-02-03T04:05:06+07:00 ...>
    #    DateTime.parse('3rd Feb 2001 04:05:06 PM')
    #                              #=> #<DateTime: 2001-02-03T16:05:06+00:00 ...>
    def self.parse(p1 = v1, p2 = v2, p3 = v3)
        #This is a stub, used for indexing
    end
    # DateTime.iso8601(string='-4712-01-01T00:00:00+00:00'[, start=ITALY])  ->  datetime
    # 
    # Creates a new Date object by parsing from a string according to
    # some typical ISO 8601 formats.
    # 
    #    DateTime.iso8601('2001-02-03T04:05:06+07:00')
    #                              #=> #<DateTime: 2001-02-03T04:05:06+07:00 ...>
    #    DateTime.iso8601('20010203T040506+0700')
    #                              #=> #<DateTime: 2001-02-03T04:05:06+07:00 ...>
    #    DateTime.iso8601('2001-W05-6T04:05:06+07:00')
    #                              #=> #<DateTime: 2001-02-03T04:05:06+07:00 ...>
    def self.iso8601(p1 = v1, p2 = v2)
        #This is a stub, used for indexing
    end
    # DateTime.rfc3339(string='-4712-01-01T00:00:00+00:00'[, start=ITALY])  ->  datetime
    # 
    # Creates a new Date object by parsing from a string according to
    # some typical RFC 3339 formats.
    # 
    #    DateTime.rfc3339('2001-02-03T04:05:06+07:00')
    #                              #=> #<DateTime: 2001-02-03T04:05:06+07:00 ...>
    def self.rfc3339(p1 = v1, p2 = v2)
        #This is a stub, used for indexing
    end
    # DateTime.xmlschema(string='-4712-01-01T00:00:00+00:00'[, start=ITALY])  ->  datetime
    # 
    # Creates a new Date object by parsing from a string according to
    # some typical XML Schema formats.
    # 
    #    DateTime.xmlschema('2001-02-03T04:05:06+07:00')
    #                              #=> #<DateTime: 2001-02-03T04:05:06+07:00 ...>
    def self.xmlschema(p1 = v1, p2 = v2)
        #This is a stub, used for indexing
    end
    # DateTime.rfc2822(string='Mon, 1 Jan -4712 00:00:00 +0000'[, start=ITALY])  ->  datetime
    # 
    # Creates a new Date object by parsing from a string according to
    # some typical RFC 2822 formats.
    # 
    #     DateTime.rfc2822('Sat, 3 Feb 2001 04:05:06 +0700')
    #                              #=> #<DateTime: 2001-02-03T04:05:06+07:00 ...>
    def self.rfc2822(p1 = v1, p2 = v2)
        #This is a stub, used for indexing
    end
    # DateTime.rfc822(string='Mon, 1 Jan -4712 00:00:00 +0000'[, start=ITALY])   ->  datetime
    # 
    # Creates a new Date object by parsing from a string according to
    # some typical RFC 2822 formats.
    # 
    #     DateTime.rfc2822('Sat, 3 Feb 2001 04:05:06 +0700')
    #                              #=> #<DateTime: 2001-02-03T04:05:06+07:00 ...>
    def self.rfc822(p1 = v1, p2 = v2)
        #This is a stub, used for indexing
    end
    # DateTime.httpdate(string='Mon, 01 Jan -4712 00:00:00 GMT'[, start=ITALY])  ->  datetime
    # 
    # Creates a new Date object by parsing from a string according to
    # some RFC 2616 format.
    # 
    #    DateTime.httpdate('Sat, 03 Feb 2001 04:05:06 GMT')
    #                              #=> #<DateTime: 2001-02-03T04:05:06+00:00 ...>
    def self.httpdate(p1 = v1, p2 = v2)
        #This is a stub, used for indexing
    end
    # DateTime.jisx0301(string='-4712-01-01T00:00:00+00:00'[, start=ITALY])  ->  datetime
    # 
    # Creates a new Date object by parsing from a string according to
    # some typical JIS X 0301 formats.
    # 
    #    DateTime.jisx0301('H13.02.03T04:05:06+07:00')
    #                              #=> #<DateTime: 2001-02-03T04:05:06+07:00 ...>
    def self.jisx0301(p1 = v1, p2 = v2)
        #This is a stub, used for indexing
    end
    # dt.to_s  ->  string
    # 
    # Returns a string in an ISO 8601 format (This method doesn't use the
    # expanded representations).
    # 
    #     DateTime.new(2001,2,3,4,5,6,'-7').to_s
    #                              #=> "2001-02-03T04:05:06-07:00"
    def to_s()
        #This is a stub, used for indexing
    end
    # dt.strftime([format='%FT%T%:z'])  ->  string
    # 
    # Formats date according to the directives in the given format
    # string.
    # The directives begins with a percent (%) character.
    # Any text not listed as a directive will be passed through to the
    # output string.
    # 
    # The directive consists of a percent (%) character,
    # zero or more flags, optional minimum field width,
    # optional modifier and a conversion specifier
    # as follows.
    # 
    #    %<flags><width><modifier><conversion>
    # 
    # Flags:
    #    -  don't pad a numerical output.
    #    _  use spaces for padding.
    #    0  use zeros for padding.
    #    ^  upcase the result string.
    #    #  change case.
    #    :  use colons for %z.
    # 
    # The minimum field width specifies the minimum width.
    # 
    # The modifier is "E" and "O".
    # They are ignored.
    # 
    # Format directives:
    # 
    #    Date (Year, Month, Day):
    #      %Y - Year with century (can be negative, 4 digits at least)
    #              -0001, 0000, 1995, 2009, 14292, etc.
    #      %C - year / 100 (round down.  20 in 2009)
    #      %y - year % 100 (00..99)
    # 
    #      %m - Month of the year, zero-padded (01..12)
    #              %_m  blank-padded ( 1..12)
    #              %-m  no-padded (1..12)
    #      %B - The full month name (``January'')
    #              %^B  uppercased (``JANUARY'')
    #      %b - The abbreviated month name (``Jan'')
    #              %^b  uppercased (``JAN'')
    #      %h - Equivalent to %b
    # 
    #      %d - Day of the month, zero-padded (01..31)
    #              %-d  no-padded (1..31)
    #      %e - Day of the month, blank-padded ( 1..31)
    # 
    #      %j - Day of the year (001..366)
    # 
    #    Time (Hour, Minute, Second, Subsecond):
    #      %H - Hour of the day, 24-hour clock, zero-padded (00..23)
    #      %k - Hour of the day, 24-hour clock, blank-padded ( 0..23)
    #      %I - Hour of the day, 12-hour clock, zero-padded (01..12)
    #      %l - Hour of the day, 12-hour clock, blank-padded ( 1..12)
    #      %P - Meridian indicator, lowercase (``am'' or ``pm'')
    #      %p - Meridian indicator, uppercase (``AM'' or ``PM'')
    # 
    #      %M - Minute of the hour (00..59)
    # 
    #      %S - Second of the minute (00..59)
    # 
    #      %L - Millisecond of the second (000..999)
    #      %N - Fractional seconds digits, default is 9 digits (nanosecond)
    #              %3N  millisecond (3 digits)   %15N femtosecond (15 digits)
    #              %6N  microsecond (6 digits)   %18N attosecond  (18 digits)
    #              %9N  nanosecond  (9 digits)   %21N zeptosecond (21 digits)
    #              %12N picosecond (12 digits)   %24N yoctosecond (24 digits)
    # 
    #    Time zone:
    #      %z - Time zone as hour and minute offset from UTC (e.g. +0900)
    #              %:z - hour and minute offset from UTC with a colon (e.g. +09:00)
    #              %::z - hour, minute and second offset from UTC (e.g. +09:00:00)
    #              %:::z - hour, minute and second offset from UTC
    #                                                (e.g. +09, +09:30, +09:30:30)
    #      %Z - Time zone abbreviation name or something similar information.
    # 
    #    Weekday:
    #      %A - The full weekday name (``Sunday'')
    #              %^A  uppercased (``SUNDAY'')
    #      %a - The abbreviated name (``Sun'')
    #              %^a  uppercased (``SUN'')
    #      %u - Day of the week (Monday is 1, 1..7)
    #      %w - Day of the week (Sunday is 0, 0..6)
    # 
    #    ISO 8601 week-based year and week number:
    #    The week 1 of YYYY starts with a Monday and includes YYYY-01-04.
    #    The days in the year before the first week are in the last week of
    #    the previous year.
    #      %G - The week-based year
    #      %g - The last 2 digits of the week-based year (00..99)
    #      %V - Week number of the week-based year (01..53)
    # 
    #    Week number:
    #    The week 1 of YYYY starts with a Sunday or Monday (according to %U
    #    or %W).  The days in the year before the first week are in week 0.
    #      %U - Week number of the year.  The week starts with Sunday.  (00..53)
    #      %W - Week number of the year.  The week starts with Monday.  (00..53)
    # 
    #    Seconds since the Unix Epoch:
    #      %s - Number of seconds since 1970-01-01 00:00:00 UTC.
    #      %Q - Number of milliseconds since 1970-01-01 00:00:00 UTC.
    # 
    #    Literal string:
    #      %n - Newline character (\n)
    #      %t - Tab character (\t)
    #      %% - Literal ``%'' character
    # 
    #    Combination:
    #      %c - date and time (%a %b %e %T %Y)
    #      %D - Date (%m/%d/%y)
    #      %F - The ISO 8601 date format (%Y-%m-%d)
    #      %v - VMS date (%e-%b-%Y)
    #      %x - Same as %D
    #      %X - Same as %T
    #      %r - 12-hour time (%I:%M:%S %p)
    #      %R - 24-hour time (%H:%M)
    #      %T - 24-hour time (%H:%M:%S)
    #      %+ - date(1) (%a %b %e %H:%M:%S %Z %Y)
    # 
    # This method is similar to strftime() function defined in ISO C and POSIX.
    # Several directives (%a, %A, %b, %B, %c, %p, %r, %x, %X, %E*, %O* and %Z)
    # are locale dependent in the function.
    # However this method is locale independent.
    # So, the result may differ even if a same format string is used in other
    # systems such as C.
    # It is good practice to avoid %x and %X because there are corresponding
    # locale independent representations, %D and %T.
    # 
    # Examples:
    # 
    #    d = DateTime.new(2007,11,19,8,37,48,"-06:00")
    #                              #=> #<DateTime: 2007-11-19T08:37:48-0600 ...>
    #    d.strftime("Printed on %m/%d/%Y")   #=> "Printed on 11/19/2007"
    #    d.strftime("at %I:%M%p")            #=> "at 08:37AM"
    # 
    # Various ISO 8601 formats:
    #    %Y%m%d           => 20071119                  Calendar date (basic)
    #    %F               => 2007-11-19                Calendar date (extended)
    #    %Y-%m            => 2007-11                   Calendar date, reduced accuracy, specific month
    #    %Y               => 2007                      Calendar date, reduced accuracy, specific year
    #    %C               => 20                        Calendar date, reduced accuracy, specific century
    #    %Y%j             => 2007323                   Ordinal date (basic)
    #    %Y-%j            => 2007-323                  Ordinal date (extended)
    #    %GW%V%u          => 2007W471                  Week date (basic)
    #    %G-W%V-%u        => 2007-W47-1                Week date (extended)
    #    %GW%V            => 2007W47                   Week date, reduced accuracy, specific week (basic)
    #    %G-W%V           => 2007-W47                  Week date, reduced accuracy, specific week (extended)
    #    %H%M%S           => 083748                    Local time (basic)
    #    %T               => 08:37:48                  Local time (extended)
    #    %H%M             => 0837                      Local time, reduced accuracy, specific minute (basic)
    #    %H:%M            => 08:37                     Local time, reduced accuracy, specific minute (extended)
    #    %H               => 08                        Local time, reduced accuracy, specific hour
    #    %H%M%S,%L        => 083748,000                Local time with decimal fraction, comma as decimal sign (basic)
    #    %T,%L            => 08:37:48,000              Local time with decimal fraction, comma as decimal sign (extended)
    #    %H%M%S.%L        => 083748.000                Local time with decimal fraction, full stop as decimal sign (basic)
    #    %T.%L            => 08:37:48.000              Local time with decimal fraction, full stop as decimal sign (extended)
    #    %H%M%S%z         => 083748-0600               Local time and the difference from UTC (basic)
    #    %T%:z            => 08:37:48-06:00            Local time and the difference from UTC (extended)
    #    %Y%m%dT%H%M%S%z  => 20071119T083748-0600      Date and time of day for calendar date (basic)
    #    %FT%T%:z         => 2007-11-19T08:37:48-06:00 Date and time of day for calendar date (extended)
    #    %Y%jT%H%M%S%z    => 2007323T083748-0600       Date and time of day for ordinal date (basic)
    #    %Y-%jT%T%:z      => 2007-323T08:37:48-06:00   Date and time of day for ordinal date (extended)
    #    %GW%V%uT%H%M%S%z => 2007W471T083748-0600      Date and time of day for week date (basic)
    #    %G-W%V-%uT%T%:z  => 2007-W47-1T08:37:48-06:00 Date and time of day for week date (extended)
    #    %Y%m%dT%H%M      => 20071119T0837             Calendar date and local time (basic)
    #    %FT%R            => 2007-11-19T08:37          Calendar date and local time (extended)
    #    %Y%jT%H%MZ       => 2007323T0837Z             Ordinal date and UTC of day (basic)
    #    %Y-%jT%RZ        => 2007-323T08:37Z           Ordinal date and UTC of day (extended)
    #    %GW%V%uT%H%M%z   => 2007W471T0837-0600        Week date and local time and difference from UTC (basic)
    #    %G-W%V-%uT%R%:z  => 2007-W47-1T08:37-06:00    Week date and local time and difference from UTC (extended)
    # 
    # See also strftime(3) and strptime.
    def strftime(*args)
        #This is a stub, used for indexing
    end
    # dt.iso8601([n=0])    ->  string
    # dt.xmlschema([n=0])  ->  string
    # 
    # This method is equivalent to strftime('%FT%T').  The optional
    # argument n is length of fractional seconds.
    # 
    #    DateTime.parse('2001-02-03T04:05:06.123456789+07:00').iso8601(9)
    #                              #=> "2001-02-03T04:05:06.123456789+07:00"
    def iso8601(*args)
        #This is a stub, used for indexing
    end
    # dt.iso8601([n=0])    ->  string
    # dt.xmlschema([n=0])  ->  string
    # 
    # This method is equivalent to strftime('%FT%T').  The optional
    # argument n is length of fractional seconds.
    # 
    #    DateTime.parse('2001-02-03T04:05:06.123456789+07:00').iso8601(9)
    #                              #=> "2001-02-03T04:05:06.123456789+07:00"
    def xmlschema(*args)
        #This is a stub, used for indexing
    end
    # dt.rfc3339([n=0])  ->  string
    # 
    # This method is equivalent to strftime('%FT%T').  The optional
    # argument n is length of fractional seconds.
    # 
    #    DateTime.parse('2001-02-03T04:05:06.123456789+07:00').rfc3339(9)
    #                              #=> "2001-02-03T04:05:06.123456789+07:00"
    def rfc3339(*args)
        #This is a stub, used for indexing
    end
    # dt.jisx0301([n=0])  ->  string
    # 
    # Returns a string in a JIS X 0301 format.  The optional argument n
    # is length of fractional seconds.
    # 
    #    DateTime.parse('2001-02-03T04:05:06.123456789+07:00').jisx0301(9)
    #                              #=> "H13.02.03T04:05:06.123456789+07:00"
    def jisx0301(*args)
        #This is a stub, used for indexing
    end
    # dt.to_time  ->  time
    # 
    # Returns a Time object which denotes self.
    def to_time()
        #This is a stub, used for indexing
    end
    # dt.to_date  ->  date
    # 
    # Returns a Date object which denotes self.
    def to_date()
        #This is a stub, used for indexing
    end
    # dt.to_datetime  ->  self
    # 
    # Returns self.
    def to_datetime()
        #This is a stub, used for indexing
    end
end
