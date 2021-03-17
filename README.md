# The Shoe Beans

### Members
##### Jacob de Vries
##### Angela Thompson
##### Julie Garvert
##### Briana Staples

### Data Sources
##### NFA 2019 National Footprint and Biocapacity Accounts data set (1961-2016) (https://data.world/footprint/nfa-2019-edition)
##### United Nations Development Program: Human Development Reports (http://hdr.undp.org/en/data)

### Project Proposal 
We'll be creating a database from United Nations data and National Footprint and Biocapacity Accounts that describe a country's environmental footprint. We will be merging this data on country name. 

##### Steps
We began by downloading the NFA dataset as a csv file and the UN dataset as an Excel workbook, though the individual sheet we decided to use was saved as a csv. Both csv files were then imported into seperate Jupyter Notebook files for cleaning, which largely consisted of dropping rows that only had 'NaN' values or those that didn't contain individual country data.

The next step was then to compare the lists of countries and keep only those that were shared between the datasets. This was accomplished through copying the cleaning into one combined notebook to allow for list comparison.

##### Considerations
Our environmental data includes a reliability 'QScore' and while we would ideally like to include only the best data, selecting only the data with the highest reliability, 3A, this removes 58 countries from our data, though it does leave us with 51,000 of our original 72,000 rows of data from this source.
