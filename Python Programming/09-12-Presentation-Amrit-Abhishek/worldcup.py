# Write Python Program to Read ‘WorldCups.csv’ File. Sample Contents
# of ‘WorldCups.csv’ File Is Given Below. Plot Bar Chart to Display the Number of
# Times a Country Has Won Football WorldCup

###########################################################################################


import pandas as pd
import altair as alt

# read WorldCup.csv file and convert in tabular form
worldcup_df = pd.read_csv('WorldCup.csv')

print(worldcup_df)
print()

# winning_countries is the list of countries won and value_counts counts the no of wins
winning_countries = worldcup_df['Winner'].value_counts()
# here we create two columns of our data
winners_total_df = pd.DataFrame({'Country': winning_countries.index.tolist(),
                                'Number_of_Wins': winning_countries.values.tolist()})

print(winners_total_df)

# create a chart
chart = alt.Chart(winners_total_df).mark_bar().encode(
    alt.X('Country:N'),
    alt.Y('Number_of_Wins:Q'),
    alt.Color('Country:N')).properties(
    title="Football WorldCup Winners")

chart.save('WorldCup_Winners.json')
# chart.show()
