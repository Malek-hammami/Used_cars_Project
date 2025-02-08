# Tunisian used cars market

# Project overview
The used cars market in Tunisia is a growing industry with many opportunities. This project helps investors by identifying key factors like the best locations for sales the top car brands and models and how factors like mileage and age affect prices. The data was scraped from 'Tayara.tn' in december 2024 a popular marketplace to provide real insights. With this analysis investors can better understand the market and make smarter decisions.

# Analysis

### key factors

### Brands
- Market Value: The total value of used cars listed on Tayara is approximately 240 million DT for just 4,410 cars.
- Top Brands: Volkswagen and Peugeot dominate the market, making up 9.14% and 8.46% of the listings, respectively. They are followed by Renault, Citroën, Mercedes, Kia, and others, each representing 5% or less. Lexus and GMC have the smallest presence, with just 0.02% of the market each.
- Luxury and Availability: Mercedes has 236 cars listed, with a total market value of 23 million DT and an average price of 99K DT per car. It ranks among the top five most expensive brands but remains widely available. for comparison Land Rover in contrast has an average price of 227K DT per car but only 28 cars listed making it one of the most exclusive brands.
- Most Listed Brands: Volkswagen Peugeot and Kia stand out with the highest number of listings contributing significantly to the total market value. While they are not the most affordable options they offer a broad range of choices:
Volkswagen – 53K DT average price
Peugeot – 39K DT average price
Kia – 61K DT average price
![Image](https://github.com/user-attachments/assets/03b2483f-82e9-4aa8-b7c7-68c1ebfe2376)

### Location and models

- Top Locations: Among the top seven locations, Tunis has the highest share of listed cars at 32.66%, followed by Ariana with 18.65%. Ben Arous, Sfax, and Sousse each have less than 14%, while Nabeul and Monastir account for less than 10% of the market.
- Model Distribution: The most common car models are concentrated in Tunis with 10 out of the top 13 models being primarily listed in there.
- Market Trends: While Tunis has the highest number of listed cars, with Peugeot, Volkswagen, and Kia as the top three brands, the Renault Clio remains the most popular model across all regions with 144 listings especially in Ben Arous.

![Image](https://github.com/user-attachments/assets/16c49c50-baeb-4dc6-b372-ca4bcbfbd04f)

### Key Factors Affecting Car Prices

- Based on the correlation coefficient analysis, the top three factors affecting car prices are:
1- Car AGE – has the strongest impact on price.
2- Mileage – also significantly influences the price.
3- Horsepower – has a much lower effect compared to the other two.


![Image](https://github.com/user-attachments/assets/cd61a0c2-2102-450d-b286-6e74ca91aff9)

# Deep-dive and recomandations

### How Mileage affects the price

- with correlation coefficent of -0.2555  so As mileage increases car prices drop:

  - 0-50K miles ==> Highest avrage price 83k DT
  - 50K-100K miles ==> Drops 24.13% to 63k DT
  - 100K-150K miles ==> Drops 11.33% to 56k DT
  - 150K+ miles → Biggest drop 34.15% to 36k DT

### Best Mileage Range to Buy a Car

- The 50K-100K mileage range is a good choice for balancing price and value while still being able to resell it later:

  - The car has already lost most of its value in the first 50K miles.
  - It still has a decent lifespan before needing expensive repairs.
  - Its resale value won’t decrease as quickly as higher-mileage cars.
 
### How  Car AGE affects the price

-  with correlation coefficent of 0.291  so As year increases car prices increases but will work with Car AGE so as Car AGE increases prices drops:

    - 0-5 Years Old ==> Highest average price 81K DT
    - 5-10 Years Old ==> Drops 25.39% to 60K DT
    - 10-15 Years Old ==> Biggest Drop 31.46% to 41K DT
    - 15+ Years Old ==> Drop 24.70% to 31K DT
### Best Car AGE to Buy a Car

- The 10-15 Years Old range is a good option for getting a car at a lower price while still being able to resell it later:

  - The biggest price drop (-31.46%) happens here, so you can buy it for much less.
  - The car has already lost most of its value, so it won’t drop as fast in the future.
  - It can still be used for a few years before reaching the higher-maintenance 15+ year range.
  - Its resale value stays more stable compared to newer cars, which lose value quickly.

![Image](https://github.com/user-attachments/assets/1cd6c31b-b7a9-435c-b82c-8da91392dc98)


