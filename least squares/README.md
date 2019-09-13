# Least Squares​
 

Using linear regression to predict the changing rates of GDP. The data is obtained from 'FRED' website using python as follows

```python
import pandas_datareader.data as web
from datetime import datetime
start = datetime(2009, 1, 1)
end = datetime(2019, 9, 27)
df = web.DataReader(['A191RL1Q225SBEA', 'UNRATE','PAYEMS','FEDFUNDS'], 'fred', start, end) # 参数看上面的解释
df1 = df[df['A191RL1Q225SBEA'].notna()]
df1.to_csv( 'fred_data.csv',index = None)
```



Least Squares is to obtain 
$$
\beta^*={\rm{argmin}}_{\beta}\frac{1}{N}\|Y-X\beta\|^2
$$
and the solution is quite simple (if $X^TX$ is invertible) 
$$
\beta^*=(X^TX)^{-1}X^TY
$$
