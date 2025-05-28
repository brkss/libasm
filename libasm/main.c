
#include "libasm.h"

int main() {


	printf("\n==================== FT_STRLEN  ====================\n");
	size_t len = ft_strlen("Hello");
	printf("ft_strlen output : %ld\n", len);
	printf("\n==================== FT_STRLEN  ====================\n\n\n");

	printf("\n==================== FT_STRCPY  ====================\n");
	char buff[100];
	printf("ft_strcpy output : %s\n", ft_strcpy(buff, "Copy This Plz"));
	printf("\n==================== FT_STRCPY  ====================\n\n\n");
	
	printf("\n==================== FT_STRCMP  ====================\n");
	char *s1 = "Hello";
	char *s2 = "World";
	printf("ft_strcpy output : %d\nstrcmp output : %d\n", ft_strcmp(s1, s2), strcmp(s1, s2));
	printf("\n==================== FT_STRCMP  ====================\n\n\n");
	
	printf("\n==================== FT_STRCMP  ====================\n");
	
	printf("ft_write output: \n");
	ft_write(1, "Hello", 5);
	printf("\n");
	
	printf("write output: \n");
	write(1, "Hello", 5);
	printf("\n");
	

	
	printf("\n==================== FT_STRCMP  ====================\n\n\n");

	
	return (0);

}
