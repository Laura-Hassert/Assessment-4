log_file = open("um-server-01.txt")     #links the server file to this python document by 'opening' the files contents


def sales_reports(log_file):            #defining a new function called 'sales_report' that takes one argument: 'log_file'
    for line in log_file:               #creating a for loop, looping through each line of data in the file
        line = line.rstrip()            #turning each line of data in a list (similar to an array) in order to be able to process each individual item within the line
        day = line[0:3]                 #defining a variable as day that is found in the first index spot (index 0) and is 3 characters long
        if day == "Tue":                #creating an if statement to only return desired output - in this case only orders from Tuesday ('Tue' as it is written in the server)
            print(line)                 #the print function displays each line of data matching the defined criteria above


sales_reports(log_file)                 #runs the function through the linked server file


def sales_reports(log_file):
    for line in log_file:
        line = line.rstrip()
        day = line[0:3]
        if day == "Mon":                #all that is needed to change the desired day output of this function is changing the criteria in the if statement to match the new desired day ('Mon')
            print(line)


sales_reports(log_file)