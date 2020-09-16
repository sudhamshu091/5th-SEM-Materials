def grade_report(marks):
    if marks <= 40 :
        print("Your grade is F")
    elif marks <= 50 :
        print("Your grade is E")
    elif marks <= 60 :
        print("Your grade is D")
    elif marks <= 70 :
        print("Your grade is C")
    elif marks <= 80 :
        print("Your grade is B")
    elif marks <= 90 :
        print("Your grade is A")
    elif marks <= 100:
        print("Your grade is S")
    else:
        print("Invalid Input")
grade_report(20)
grade_report(110)
grade_report(69)
grade_report(91.5)
