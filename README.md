# Abstract
Access to computer systems is most often based on the use of alphanumeric passwords. However, users have difficulty remembering a password that is long and random-appearing. Instead, they create short, simple, and insecure passwords. Graphical passwords have been designed to try to make passwords more memorable and easier for people to use and, therefore, more secure. Using a graphical password, users click on images rather than type alphanumeric characters. We have designed a new and more secure graphical password system. We describe its security characteristics, and the empirical study we carried out comparing with alphanumeric passwords. In the empirical study participants learned either an alphanumeric or graphical password and subsequently carried out l trials to input their passwords over a period. The results show that the graphical group took longer and made more errors in learning the password, but that the difference was largely a consequence of just a few graphical participants who had difficulty learning to use graphical passwords. In the longitudinal trials the two groups performed similarly on memory of their password, but the graphical group took more time to input a password.

# Description
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

# Tech stack : HTML, JSP, SQL
