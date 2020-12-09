import pandas as pd
import altair

# chart object using pandas DataFrame-
data = pd.DataFrame.from_records([
    {"a": "A","b": 28}, {"a": "B","b": 55}, {"a": "C","b": 43},
    {"a": "D","b": 91}, {"a": "E","b": 81}, {"a": "F","b": 53},
    {"a": "G","b": 19}, {"a": "H","b": 87}, {"a": "I","b": 52}
])

# print data to see the table created of the given data-
print(data)

# create a chart using appropriate marker (bar graph in this case)-
chrt=altair.Chart(data).mark_tick().encode(x='a:O', y='b:Q',color='a').properties(title='Our Data')

# save chart information using .json extension-
chrt.save('data.json')

# another option is to use .show() method-
# chrt.show()
