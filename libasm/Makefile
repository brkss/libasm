NAME = libasm

NAME_LIB = libasm.a

SRCS = 	ft_strlen.s \
		ft_strcpy.s \
		ft_strcmp.s \
		ft_write.s

CC = gcc

CFLAGS = -Wall -Wextra -Werror

NASM = nasm

NASMFLAGS = -f elf64

OBJ = $(SRCS:.s=.o)

%.o : %.s
	$(NASM) $(NASMFLAGS) $< -o $@

all : $(NAME)

$(NAME) : $(OBJ)
	ar rcs $(NAME_LIB) $(OBJ)
	ranlib $(NAME_LIB)

ccproject :
	$(CC) $(CFLAGS) main.c $(NAME_LIB) -o test
	
clean :
	rm -f $(OBJ)

fclean : clean
	rm -f $(NAME_LIB)
	rm -f ./a.out
	rm -f ./test

re : fclean all
