# Data Scientist
Technical Skills: Python, Tableau, SQL, Excel, R

### Education
Computational and Data Sciences, B.S. (In-Progress, Senior)

### Projects
#### Data Visualization
The purpose of this project was to use Tableau to create data visualizations. Given our choice of dataset, we explored and aggregated the data to create these visualizations that answer our proposed research questions.
I chose to work with 3 different datasets containing data on global investment in renewable energy, atmospheric CO2 concentration, and CO2 emissions by country. The results are shown in the following poster. 
(I recommend opening the image in a new tab for better readability)

![CDS-301 Final Project Poster](/assets/img/Updated_Poster_Screenshot.PNG)

#### Database Design & SQL Queries
The purpose of this project is to design and build a database in SQL, and then run queries on that database. I did so by using the ER diagram method to map out entities and relationships and subsequently reducing the ER diagram to a relational diagram. I then constructed the database in SQL, filling it with phony data as per project requirements. Once the database was constructed, I conducted many queries on the data, including nested queries.

##### Entity-Relation Diagram

![Entity-Relation Diagram - Videogame and Review Library](/assets/img/CDS-302-Final-ER.png)

##### Relational Diagram

![Relational Diagram - Videogame and Review Library](/assets/img/CDS-302-Final-RelationalDiagram.png)

##### SQL Queries
[Download the SQL file here](/assets/sql/CDS302-Project-Schema.sql)

#### Machine Learning & CRISP-DM
The purpose of this project was to learn and experience the CRISP-DM process for creating a machine-learning model in a team environment. While the final version of our model was not perfect, the focus of the project was not how good the model turns out, rather how well we implemented various methods of creating a machine-learning model using the CRISP-DM method. The topic of this project was to determine what features are most important when it comes to predicting stock price. We built our own dataset using Google Finance and fed it into a regression Multi-Layer Perceptron algorithm from which we could extract feature weights and permutation importance in order to determine which of our features were the most important. In the end, the validation results of the model showed a quite accurate model, but we did have issues with overfitting and multicollinearity. By downloading the below ".zip" file, you can see our dataset and test the MLP model, as well as see the grid search method we implemented to find the best combination of hyperparameters for the MLP.

[Download MLP Project here](/assets/python/CDS303/Final_project.zip)
