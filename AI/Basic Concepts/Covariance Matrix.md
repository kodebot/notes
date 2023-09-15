# Covariance Matrix

A matrix filled with covariances between variables.

Covariance indicates direction of relationship between two variables.

Positive value indicates both variables tend to high or low at the same time. (positive covariance)

Negative value indicates when one variable is high the other will be low and vice versa. (negative covariance)

This is very similar to correction expect that correlation is bounded between -1 and 1 and we don't have that limitation with covariance.

The magnitude indicates how strong the relationship is provided the scales are appropriate to compare for both variables.

Assume we have N datapoints with two variables x and y

| x | y |
|-  |-  |
| 1 | 1 |
| 3 | 0 |
|-1 |-1 |

The structure of covariance matrix for this would be as follows

$$
\begin{bmatrix}
cov(x,x) & cov(x,y) \\
cov(y,x) & cov(y,y) \\
\end{bmatrix}
$$

`cov(x,x) and cov(y,y)` are also called variance, so they can be written as `var(x) and var(y)`

Covariance of x and y `cov(x,y)` is same as covariance of y and x `cov(y,x)`.

Covariance/Variance can be calculated as follows

$$ cov(x,y) = \mathbb{E}(x \times y) - \mathbb{E}(x)\mathbb{E}(y) $$

where $\mathbb{E}$ is expected value and in this case it is just the mean.

Similarly,

$$var(x) = \mathbb{E}(x^2) - \mathbb{E}(x)^2 $$

So, the calculated covariance matrix for the datapoints above we assumed above is

$$
\begin{bmatrix}
8/3 & 2/3\\
2/3 & 2/3\\
\end{bmatrix}
$$

## Closed form Covariance matrix

This form is useful when we have lot of variables

Assume we have sample

$$ Sample = [\bold{x_1, x_2, ...x_N}]\text{ in }\mathbb{R}^D $$

This means $\bold{x_1, x_2, ... x_N} $ are vectors and each vector is made D of real numbers

So the dimension of Sample is $N\times D$

Now, closed form covariance matrix $S$ is

$$ S = \frac{1}{N}\sum_{i=1}^N (\bold{x_i - \bar{x}}) (\bold{x_i - \bar{x}})^\intercal $$

where

1. $\bold{\bar{x}}$ is mean of $\bold{x}$ vectors

2. $(\bold{x_i - \bar{x}})$ is $ D \times 1 $ column vector and $(\bold{x_i - \bar{x}})^\intercal $ is $ 1 \times D $ row vector so the result is $ D \times D $ vector.

Covariance for $n^{th}$ and $m^{th}$ variable can be calculated using

$$ \frac{1}{N}\sum_{i=1}^N (x_{in} - \bar{x_n}) (x_{im} - \bar{x_m}) $$

where

1. $x_{in}$ is element in $i^{th}$ row and $n^{th}$ column
2. $x_{im}$ is element in $i^{th}$ row and $m^{th}$ column
3. $\bar{x_n}, \bar{x_m}$ are mean of $n^{th}$ and $m^{th}$ columns
4. result will be scalar
