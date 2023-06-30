# Derivative of a matrix

* $\frac{d}{dx}(kx) = k$

* $\frac{d}{dx}(kx^2) = 2kx$

## What is $\frac{d}{dx}(A\vec{x})$ ?

* NOTE: we are not taking a derivative of a matrix, instead we are taking a derivative of a linear transformation $Ax$

* there should be a derivative for this as A is a function that takes x and spits out some output

$$A = \begin{bmatrix}1 && 2 \\
3 && 4 \end{bmatrix}$$

$$\vec{x} = \begin{bmatrix} x_1 \\
x_2 \end{bmatrix}$$

$$A\vec{x} = \begin{bmatrix} 1 && 2 \\
3 && 4 \end{bmatrix} \begin{bmatrix} x_1 \\
x_2 \end{bmatrix} = \begin{bmatrix} x_1 + 2x_2 \\
3x_1 + 4x_2 \end{bmatrix}$$

* now name each row as separate functions

* $f_1(x_1, x_2) = x_1 + 2x_2$

* $f_2(x_1, x_2) = 3x_1 + 4x_2$

$$\frac{d}{dx}Ax = \begin{bmatrix} \frac{df_1}{dx_1} && \frac{df_1}{dx_2} \\
\frac{df_2}{dx_1} && \frac{df_2}{dx_2}\end{bmatrix}  = \begin{bmatrix} 1 && 2 \\
3 && 4 \end{bmatrix} = A$$

* so, ✅ $\frac{d}{dx} A\vec{x} = A$

* this is analogous to $\frac{d}{dx}(kx) = k$

## What is $\frac{d}{dx}(\vec{x}^{\intercal}A\vec{x})$?

* ✅ $\frac{d}{dx}(\vec{x}^{\intercal}A\vec{x}) = 2A\vec{x}$

* this is analogous to $\frac{d}{dx}(kx^2) = 2kx$