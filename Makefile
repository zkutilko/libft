SRC = ft_isalpha.c
INC = libft.h
OBJ = $(SRC:.c=.o)
NAME = libft.a
RM = rm -f
CFLAGS = -Wall -Wextra -Werror
LIBC = ar rc

.c.o:
	cc $(CFLAGS) -c $(SRC)

${NAME}: ${OBJ}
	${LIBC} ${NAME} ${OBJ}

all: ${NAME}

clean:
	${RM} ${OBJ}

fclean: clean
	${RM} ${NAME}

re: fclean all

.PHONY:
	all clean fclean re
