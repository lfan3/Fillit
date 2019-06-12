# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fhenrion <fhenrion@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/06/12 12:34:06 by linfan            #+#    #+#              #
#    Updated: 2019/06/12 18:35:02 by fhenrion         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC			=	gcc
CFLAGS		=	-Wall -Wextra -Werror

NAME		=	fillit

LIBRARY		=	libft/libft.a

SOURCES		=	fillit.c file.c pieces.c position.c utils.c

OBJECTS		=	$(SOURCES:.c = .o)

all: $(NAME)

$(NAME): $(OBJECTS) $(LIBRARY)
	@$(CC) $(CFLAGS) -o $@ $^
	@echo $(GREEN)  [√]     [Program Successfully Compiled!]
$(LIBRARY):
	@make -C libft/

clean:
	@make clean -C libft/

fclean: clean
	@rm libft/libft.a
	@rm $(NAME)

re: fclean all

GREEN = "\033[1;32m"
