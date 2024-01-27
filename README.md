Instead of just words we propose a system in which authentication is done using colors
and numbers. Users can give values from 1 to 5 for the given 5 colors.this
 makes the authentication method risk free
of dictionary attack,eves dropping etc.
During registration, user should rate colors. 
The user should rate colors from 1 to
5 and he can remember it as “RGBYP”. During the login phase, when the user enters his user name an interface is displayed
based on the colors selected by the user. 
The login interphase consists of grid of size
8x8. This contains digit 1-8 placed randomly in grid cells. The interface also contains
strips of colors. 
The color grid consists of 4 pairs of colors. Each pair of color represents
the row and the colomn of the grid.

The login interface having the color grid and number grid of 6*6 having numbers
0 to 9 randomly placed in the grid. Depending on the ratings given to colors, we get the
session passwords. As discussed above, the first color of every pair in color grid
represents row and second represents colomn of the number grid. The number in the
intersection of the row and colomn of the grid is part of the session password. The first
pair has red and yellow colors. The red color rating is 1 and yellow color rating is 3. So
the first letter of session password is 1st row and 3rd colomn intersecting element i.e, 3.
The same method is followed for other pairs of colors. So the password is “3573”. For
every login,both the number grid and the color grid get randomizes so the session
password changes for every session.
