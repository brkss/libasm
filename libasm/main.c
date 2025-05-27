
#include "libasm.h"

int main() {


	printf("\n==================== FT_STRLEN  ====================\n");
	size_t len = ft_strlen("Hello");
	printf("ft_strlen output : %ld\n", len);
	printf("\n==================== FT_STRLEN  ====================\n\n\n");

	printf("\n==================== FT_STRCPY  ====================\n");
	char buff[100];
	//char *strcpy_output = ft_strcpy(buff, "Copy This Plz");
	printf("ft_strcpy output : %s\n", ft_strcpy(buff, "Copy This Plz"));
	printf("\n==================== FT_STRCPY  ====================\n\n\n");
	
	
	return (0);

}
