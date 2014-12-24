CC	= arm-linux-gnueabi-gcc

RM	= rm -f

CFLAGS	+= -Werror -Wall -Wextra

CFLAGS	+= -ansi -pedantic

SRCS	= image.c

OBJS	= $(SRCS:.c=.o)

NAME	= image

all: $(NAME)

$(NAME): $(OBJS)
	$(CC) -o $(NAME) $(OBJS) $(CFLAGS) $(LDFLAGS)

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: clean fclean all $(NAME)
