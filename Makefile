##
## EPITECH PROJECT, 2020
## minilibc
## File description:
## makefile
##


NAME	=	libasm.so

SRC	=	strcmp.asm	\
		strlen.asm	\
		strncmp.asm	\
		memset.asm	\
		memcpy.asm	\
		strcasecmp.asm	\
		memmove.asm	\
		strchr.asm

OBJ	=	$(SRC:.asm=.o)

NASM	=	nasm

ASM_FLAGS	= -f elf64

LDFLAGS	=	ld -shared

all:		$(NAME)

$(NAME):	$(OBJ)
		$(LDFLAGS) -o $(NAME) $(OBJ)

$(OBJ)	:	$(SRC)
		$(NASM) strcmp.asm $(ASM_FLAGS)
		$(NASM) strlen.asm $(ASM_FLAGS)
		$(NASM) strncmp.asm $(ASM_FLAGS)
		$(NASM) memset.asm $(ASM_FLAGS)
		$(NASM) memcpy.asm $(ASM_FLAGS)
		$(NASM) strcasecmp.asm $(ASM_FLAGS)
		$(NASM) memmove.asm $(ASM_FLAGS)
		$(NASM) strchr.asm $(ASM_FLAGS)

clean:
		rm -f $(OBJ)

fclean:		clean
		rm -f *~ $(NAME)

re:		fclean all
