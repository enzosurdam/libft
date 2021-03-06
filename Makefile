# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: esurdam <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/01/31 20:00:58 by esurdam           #+#    #+#              #
#    Updated: 2017/02/02 17:54:32 by esurdam          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

.PHONY: clean fclean 

SRCFILES	=	ft_atoi.c		\
			ft_bzero.c		\
			ft_findwordc.c		\
			ft_intlen.c		\
			ft_isalnum.c		\
			ft_isalpha.c		\
			ft_isascii.c		\
			ft_isblank.c		\
			ft_iscntrl.c		\
			ft_isdigit.c		\
			ft_isprint.c		\
			ft_ispunct.c		\
			ft_isspace.c		\
			ft_isupper.c		\
			ft_isxdigit.c		\
			ft_itoa.c		\
			ft_list_last.c		\
			ft_list_size.c		\
			ft_lstadd.c		\
			ft_lstdel.c		\
			ft_lstdelone.c		\
			ft_lstiter.c		\
			ft_lstmap.c		\
			ft_lstnew.c		\
			ft_memalloc.c		\
			ft_memccpy.c		\
			ft_memchr.c		\
			ft_memcmp.c		\
			ft_memcpy.c		\
			ft_memdel.c		\
			ft_memmove.c		\
			ft_memset.c		\
			ft_printlist.c		\
			ft_putchar.c		\
			ft_putchar_fd.c		\
			ft_putendl.c		\
			ft_putendl_fd.c		\
			ft_putnbr.c		\
			ft_putnbr_fd.c		\
			ft_putstr.c		\
			ft_putstr_fd.c		\
			ft_strcat.c		\
			ft_strchr.c		\
			ft_strclr.c		\
			ft_strcmp.c		\
			ft_strcpy.c		\
			ft_strdel.c		\
			ft_strdup.c		\
			ft_strequ.c		\
			ft_striter.c		\
			ft_striteri.c		\
			ft_strjoin.c		\
			ft_strlcat.c		\
			ft_strlen.c		\
			ft_strmap.c		\
			ft_strmapi.c		\
			ft_strncat.c		\
			ft_strncmp.c		\
			ft_strncpy.c		\
			ft_strnequ.c		\
			ft_strnew.c		\
			ft_strnstr.c		\
			ft_strrchr.c		\
			ft_strsplit.c		\
			ft_strstr.c		\
			ft_strsub.c		\
			ft_strtrim.c		\
			ft_tolower.c		\
			ft_toupper.c		\
			ft_wordlen.c		\
			get_next_line.c

NAME		=	libft.a
HEAD		= 	libft.h
CC		=	gcc
FLAGS		=	-Wall -Werror -Wextra
SRCDIR		:=	srcs
SRC		:=	$(addprefix $(SRCDIR)/, $(SRCFILES))
OBJDIR		:=	obj
OBJS		:=	$(addprefix $(OBJDIR)/, $(patsubst %.c,%.o,$(SRCFILES)))

all: $(NAME)

$(OBJS): $(SRC) | $(OBJDIR)

$(OBJDIR)/%.o : $(SRCDIR)/%.c
	@$(CC) $(CFLAGS) -c $< -o $@

$(OBJDIR):
	@mkdir $(OBJDIR)

$(NAME): $(OBJS)
	@ar rc $(NAME) $(OBJS)
	@ranlib $(NAME)
	@echo "***********LIBFT Created!***********"

clean: all
	@echo "***** CLEANING LIBFT DIRECTORY *****"
	@rm -f $(OBJS)
	@rm -rf $(OBJDIR)
	@echo "* REMOVING OBJECTS & OBJ DIRECTORY *"

fclean:
	@rm -f $(OBJS)
	@rm -rf $(OBJDIR)
	@rm -f $(NAME)
	@echo "*         REMOVING $(NAME)         *"

re:  fclean all
