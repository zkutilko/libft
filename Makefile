SRC = ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c ft_strlen.c ft_memset.c ft_bzero.c ft_memcpy.c ft_memmove.c ft_toupper.c ft_tolower.c ft_atoi.c ft_strdup.c ft_strlcpy.c ft_calloc.c ft_memchr.c ft_memcmp.c ft_strchr.c ft_strlcat.c ft_strncmp.c ft_strnstr.c ft_strrchr.c
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
