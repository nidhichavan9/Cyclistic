# Cyclistic

Cyclistic is a case study I did for the Google Data Analytics Certificaion Courcse. 

## Scenario
Here, I am a junior data analyst working in the marketing analyst team at Cyclistic, a bike-share company in Chicago. The director of marketing believes the company’s future success depends on maximizing the number of annual memberships. My team wants to understand how casual riders and annual members use Cyclistic bikes differently. From these insights, the team will design a new marketing strategy to convert casual riders into annual members. But first, Cyclistic executives must approve the recommendations I give, so they must be backed up with compelling data insights and professional data visualizations.

## About the company
In 2016, Cyclistic launched a successful bike-share offering. Since then, the program has grown to a fleet of 5,824 bicycles that are geotracked and locked into a network of 692 stations across Chicago. The bikes can be unlocked from one station and returned to any other station in the system anytime. Until now, Cyclistic’s marketing strategy relied on building general awareness and appealing to broad consumer segments. One approach that helped make these things possible was the flexibility of its pricing plans: single-ride passes, full-day passes, and annual memberships. Customers who purchase single-ride or full-day passes are referred to as casual riders. Customers who purchase annual memberships are Cyclistic members. Cyclistic’s finance analysts have concluded that annual members are much more profitable than casual riders. Although the pricing flexibility helps Cyclistic attract more customers, Moreno believes that maximizing the number of annual members will be key to future growth. Rather than creating a marketing campaign that targets all-new customers, Moreno believes there is a very good chance to convert casual riders into members. She notes that casual riders are already aware of the Cyclistic program and have chosen Cyclistic for their mobility needs. Moreno has set a clear goal: Design marketing strategies aimed at converting casual riders into annual members. In order to do that, however, the marketing analyst team needs to better understand how annual members and casual riders differ, why casual riders would buy a membership, and how digital media could affect their marketing tactics. Moreno and her team are interested in analyzing the Cyclistic historical bike trip data to identify trends.

### Data Avability
[Trip Data](https://divvy-tripdata.s3.amazonaws.com/index.html)
Cyclistic is a fictional company. The data has been made available by Motivate International Inc. under this [license](https://ride.divvybikes.com/data-license-agreement)

This Case study is done with the 6 phases of analysis in mind. Ask, Prepare, Process, Analyze, Share and Act.

## Step 1: ASK

● What is the problem you are trying to solve?
How do annual members and casual riders use Cyclistic bikes differently? 
Here my main goal would be to identify how the trends differ in use of Cyclistics for annual and casual members. What do they primarily use cyclistic for, When they are most active and what incentives could be given to make the annual membership more attractive for the casual customers resulting in an increase in profit for the company

● How can your insights drive business decisions?
The insights I gather form this analysis can be used to implement actions to drive the annual memberships up. Business decisions on data are far more concrete and the results are more likely to be in as we expect and the resources we use to implement these solutions are less likely to be wasted. 
[Developing new marketing strategy]


1. Business task
To find out how the casual and annual members use cyclistic differently and how we can entice casual users to become annual members as annual members generate more profit.

2.key stakeholders
Key Stakeholders would be the Cyclistic executive team 
Lily Moreno the Marketing Director
Cyclistic Executibe Team
Cyclistic Marketing Team

## Step 2: Prepare

● How is the data organised?
The data is organised by months, every month has its own excel file. I combnied all the data into a single excel file for this Analysis. The data includes ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual

● Are there issues with bias or credibility in this data? Does your data ROCCC?
	There is no issue with bias or credibility, all the information is clearly stated on the shared site. And yes the data has Reliable organization, comprehensive, is current, and cited.

● How are you addressing licensing, privacy, security, and accessibility?
The licence is given with the data and can be used to modify and show our findings. It is open to use for all. This data is public and provided according to the Divvy Data License Agreement. Using riders’ personally identifiable information is not allowed.

● How did you verify the data’s integrity?
I checked the data for missing, incosistent or incorrecct data, eleminated any outliers. Cleaning the data help ensure that the data is relable and ready to perforem meaningfull analysis with. 

● How does it help you answer the business question?
With the help of a year's worth of data I will be able to study trends and answer the questions asked for increasing the annual members in Cyclistic. 
The dataset doesn't include any information about the riders, and there is no way to get and analyse all rides made by the same rider. It means that we cannot analyse individual riders’ behaviour. We can only work with separate trips. Without any information about riders in the dataset, it will be hard to make any recommendations about the market segments for the new marketing strategy.
However, we can analyse the rides numbers, duration, destination and position of their start and destination points on the map, and see the difference between rides taken by members and casual customers, which can help to reach the casual riders and motivate them to buy the annual membership.

● Are there any problems with the data?
Missing vales and data type erros were present, they are solved with data cleaning with R.


## Step 3: Process

● What tools are you choosing and why?
I used R for the process of cleaning the data and making sure it is prepared for analysis. R is able to handle large amaount of data and can process the data fast. R is also realible to keep documention for the projects. For Data Visualization I used the ready dataset in Tableau. 

## Step 4: Analyse
The Analyis is [Folder](https://github.com/nidhichavan9/Cyclistic/blob/main/cyclistic_main.R) with explanation in comments.

## Step 5: Share
 Here the link to visualization on [Tableau](https://public.tableau.com/app/profile/nidhi2228/viz/Cyclistic_16856019208150/Cyclistic)
 
## Step 6: Act
Recommendations for the business

- To reach casual riders:
Use the customer contact information to reach people, who have already registered as the company's bikes users. Target the customers who used the company's bikes regularly but have not bought the annual membership yet. Target the customers who have already bought the annual membership before, but didn't extend it to the next year.

- Determine the best date-time ranges and locations for the new marketing campaign:
Use the map charts with popular locations to determine the best places for the offline ads (banners, flyers, ads at docking stations, on the bikes themselves, in cafes and public transport, etc.) and to configure the target group for online-ads (to choose the best district-associated groups in social networks, apps for neighbors, etc.) Run the new marketing campaign in the warm season (from May to September) and in the evenings, when casual riders are active most.

- To motivate casual riders to buy an annual membership, offer various membership plans to target people with different purpose for the bike usage:
Offer a weekend-only membership plan to riders who use bikes mostly for leisure, for a lower price than the full-week membership. Offer more benefits for members, like an ability to reserve a bike or get it easier during busy hours. From our data we see that casual riders use the bikes mostly for leisure. But among them there still may be people who use bikes for work. To attract them, offer different annual membership plans for people who need bikes for work purposes. 
Possible offers, which might be attractive for those potential members:
A weekday-only membership for a better price than the full-week membership. full-week membership with more hours available on weekdays. A membership with discounts during winter and autumn months. Offer a seasonal membership for tourists covering the busiest travel months. That will attract people who use bikes mostly for sightseeing and entertainment in the city.

Further analysis:
- Run a survey among the customers who have already bought the annual membership before, but didn't extend it to the next year. The goal of this investigation will be to figure out why those customers stopped the annual membership. That might give ideas about how to improve the annual membership conditions and prices to make it attractive for those and other potential customers.
- Run a survey among members asking what they find satisfying in the membership and how they use the bikes mainly. That will show for what purpose and how members use the company's bikes, and what they appreciate most of all in the company's service and the current membership plans.
- Run a survey among the current casual riders asking about their goals, needs and expectations. That will allow us to better understand casual riders' preferences. It might be also good to get more details about who the riders are - are they tourists, employees, students, etc. to think about more specific or personal offers.
- Collect more data and perform a detailed a analysis of the customers behavior, including price details (how much the customers have paid for every ride and what membership plans they have used), personal information and an ability to identify all rides taken by the same person. That might give more insights about the reasons why casual riders and members use the company's bikes and why they might avoid buying an annual membership. That may also allow us to understand better, how the current price and discount model affects the customers' decisions about buying annual memberships, and how it can be improved.
- Collect more information about the destination points to analyse better where the customers are going with the bikes. That might give more insights about the purposes of the rides. We could try to investigate the most popular locations (like offices, shops, gyms, schools, etc.) and use this information to reach potential members. For example, we can work together in partnership with those organisations and offer beneficial annual plans for their employees and customers.
