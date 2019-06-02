all:
	make -C c/
	make -C asm/

clean:
	make -C c/ clean
	make -C asm/ clean

fclean: clean
	make -C c/ fclean
	make -C asm/ fclean

re: fclean all
