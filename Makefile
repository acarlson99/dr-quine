all:
	make -C c/
	make -C asm/
	make -C golang/

clean:
	make -C c/ clean
	make -C asm/ clean
	make -C golang/ clean

fclean: clean
	make -C c/ fclean
	make -C asm/ fclean
	make -C golang/ fclean

re: fclean all
