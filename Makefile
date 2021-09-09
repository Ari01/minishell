NAME =		minishell
LIBFT =		libft/libft.a

CC =		clang
CFLAGS =	-Wall -Wextra -Werror
LFLAGS = 	-L libft -lft

SRCS = minishell.c \
	   signal.c

OBJS = $(SRCS:.c=.o)

all:		$(NAME)

$(NAME):	$(OBJS) $(LIBFT)
			$(CC) $(CFLAGS) $(OBJS) -o $@ $(LFLAGS)

$(LIBFT):
			cd libft && $(MAKE) $(BONUS)

.c.o:
			$(CC) $(CFLAGS) -c $< -o $(<:.c=.o)

clean:
			rm -rf $(OBJS)

fclean:		clean
			rm -rf $(NAME)

re:			clean fclean all

.PHONY:		all clean fclean re
