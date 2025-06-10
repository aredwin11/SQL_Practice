use customerData;
--String Handling
select 
len(customer_name)as length_customer_name,							--1. to fing the length of the string
lower(customer_name) as low_name,									--2. to convert the name into lower case
upper(address) as city,												--3. to convert the characters of address string into upper case
concat(customer_name,' - ',address) as string_concatination,		--4. string concatination
substring(customer_name,1,3) as short_name,							--5. returns the substring
trim(	'chennai'	) as trimmed_name,								--6. removes the additional space
replace(customer_name,' ','--') as replaced_name   ,                --7. replaces the name based on the condition
reverse(customer_name) as reveresed_name,							--8. reverses the character in the name
right(customer_name,3) as positioned,								--9. prints the name from the last character for 3 values
upper(concat(customer_name,'-',address)) as combined_methods        --10. combination of two string functions

from customerData
