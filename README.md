# The Shoe Beans

### Members
##### Jacob de Vries
##### Angela Thompson
##### Julie Garvert
##### Briana Staples

### Data Sources
##### NFA 2019 National Footprint and Biocapacity Accounts data set (1961-2016) (https://data.world/footprint/nfa-2019-edition)
##### United Nations Development Program: Human Development Reports (http://hdr.undp.org/en/data)

We created a database that displays information from the United Nations and National Footprint Accounts that compares a country's biocapacity and environmental footprint with its Human Development Index.

##### Extract: 
We selected two datasets—the National Footprint and Biocapacity Accounts dataset from Data.world and the 2020 Human Development Report published by the United Nations. From the two datasets, we chose to look at the Ecological Footprint of carbon consumption (EFC) , the Ecological Footprint of carbon production (EFP) , and the Quality Score versus the Human Development Index (HDI) of each country. We began by downloading the NFA dataset as a csv file and the UN dataset as an Excel workbook, though the individual sheet we decided to use was saved as a csv. Both csv files were then imported into separate Jupyter Notebook files for cleaning.

##### Transform: 
Data cleaning and transforming was required in order to compare data from both sources. The data cleaning largely consisted of dropping rows that only had 'NaN' values or those that didn't contain individual country data. We also reformatted the country names by eliminating spaces, commas, and any other irregularities. The next step was to compare the lists of countries and keep only those that were shared between the datasets. This was accomplished by iterating through the countries and years in each dataset and appending only the countries and years that appeared in both. We then copied the lists into one combined notebook to allow for comparison.

We ran statistical analyses on our data to detect relevant correlations and address potential outliers. We did find outliers that didn’t align with our data. For example, Barbados had some of the highest numbers for carbon production and consumption—even higher than China and The United States in some cases. After reanalyzing our data, we were able to resolve the errors and correct the erroneous values. We then assigned comparable datatypes to each column before merging the datasets on country and year. Finally, we exported the data to a csv and began the loading process.

##### Load: 
For this project, we decided to construct a relational database in order to link information from each dataset using primary keys. We used country and year as our composite primary key to distinguish each row in our table from another. We used Genmymodel to create the schema framework and then exported the entity relationship diagram as a png.

We then imported the data into pgAdmin using SQL. We created a table for our main dataset that included the country, year, carbon consumed, carbon produced, QScore, and HDI. Then we created a table of QScore definitions. Finally, we added a foreign key, a reference, and dropped the index column. Overall, we learned a lot about selecting quality datasets, carefully cleaning data for accurate analyses, and selecting a proper database model to maintain referential integrity.
