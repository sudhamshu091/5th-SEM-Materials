import yfinance as yf
import altair as alt
import pandas as pd
data = yf.download(['XOM','CVX'],period='5y',interval='1wk',group_by='ticker')
len(data)
data.tail()
xom = data.loc[:,'XOM'].copy()
cvx = data.loc[:,'CVX'].copy()
xom['Close_Var']= xom['Close']/xom['Close'].iloc[0]-1
xom['Symbol']='XOM'
cvx['Close_Var']= cvx['Close']/cvx['Close'].iloc[0]-1
cvx['Symbol']='CVX'

df = pd.concat([xom,cvx], sort=False).dropna()
# print(df.loc['2020-10-01':'2020-10-30'])

price= alt.Chart(df.reset_index()).mark_tick().encode(
    x='Date',
    y='Close_Var',
    color = 'Symbol',
    tooltip=['Date','Open','Close','High','Low','Volume']
).properties(width=600,height=200).show()
# volume = alt.Chart(df.reset_index()).mark_line().encode(
#     x='Date',
#     y='Volume',
#     color = 'Symbol'
# ).properties(width=600,height=200)

