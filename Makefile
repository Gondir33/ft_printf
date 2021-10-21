NAME = libftprintf.a

CC = gcc

CFLAGS = -Wall -Wextra -Werror

INCLD = include/

SRC =	src/ft_itoa_address.c\
		src/ft_itoa_hex.c\
		src/ft_itoa_uns.c\
		src/ft_itoa.c\
		src/ft_pars.c\
		src/ft_printf.c\
		src/ft_utils.c\
		src/ft_utils2.c

OBJ = $(SRC:.c=.o)

all:	$(NAME)

$(NAME):	$(OBJ)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

%.o: %.c ft_printf.h
	$(CC) $(CFLAGS) -I $(INCLD) -c $< -o $(<:.c=.o)

clean:
	rm -rf $(OBJ)
fclean: clean
	rm -rf $(NAME)

re: fclean  all