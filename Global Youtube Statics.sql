Select *
from [dbo].[Global YouTube Statistics]

Select Top 10 Youtuber,MAX(subscribers) As Maxsubscribers
From [dbo].[Global YouTube Statistics]
Where subscribers is not Null
Group by Youtuber
Order By Maxsubscribers Desc

Select Top 10 Youtuber,MAX(videoviews) As Maxvideoviews
From [dbo].[Global YouTube Statistics]
Where videoviews is not Null
Group by Youtuber
Order By Maxvideoviews Desc

select Top 10 Youtuber,Max(highestyearlyearnings) As youtuberswithhighestyearlyearnings
from [dbo].[Global YouTube Statistics]
Where highestyearlyearnings is not null
group by youtuber
order by youtuberswithhighestyearlyearnings DESC

Select Top 5 category, 
Count (category) As CategoryCount,
Count(*)*100/Sum (count(*))Over() As categoryPercent
From  [dbo].[Global YouTube Statistics]
Group by category
Order By categoryCount Desc

Select Top 5 channeltype, 
Count (channeltype) As channeltypeCount,
Count(*)*100/Sum (count(*))Over() As channeltypePercent
From  [dbo].[Global YouTube Statistics]
Group by channeltype
Order By channeltypeCount Desc

Select Top 5 country,MAX(videoviews) As Countrieswithhighestvideoviews
From [dbo].[Global YouTube Statistics]
Where videoviews is not null
Group by country
Order By Countrieswithhighestvideoviews Desc




 

 