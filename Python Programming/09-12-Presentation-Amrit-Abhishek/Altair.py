from vega_datasets import data
import altair as alt

iris = data('iris')
print(iris)

alt.Chart(iris).mark_point().encode(x='petalLength',
                                    y='sepalWidth',
     color='species').save('iris.json')

###################################################################################################################

# cars=data('cars')
# print(cars)
#
# alt.Chart(cars).mark_point().encode(x='Cylinders',y='Displacement',color='Origin',column='Origin').show()
