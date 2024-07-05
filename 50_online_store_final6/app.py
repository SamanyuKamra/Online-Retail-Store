import mysql.connector as sql

mydb = sql.connect(host = "localhost" , user = "root" , password = "Samanyu@24",database = "Retail_Store")

mycursor = mydb.cursor()
def sales():
    print("[1] Sales over a Time Period")
    print("[2] Top 10 Products")
    print("[3] Average price in a Category")
    print("[4] Top 3 Delivery Agents")
    print("[5] Go Back")

def menu():
    print("[1] Enter as Admin")
    print("[2] Enter as Customer")
    print("[0] Exit")

def admin():
    print("[1] View Orders")
    print("[2] Add Delivery Agents")
    print("[3] Delete categories")
    print("[4] View Sales")
    print("[5] Delete Customers")
    print("[6] View products")
    print("[7] Change Price of A category")
    print("[8] View Delivery Agents")
    print("[9] View Customer Feedbacks")
    print("[10] Go Back")

def customer():
    print("[1] Edit Details")
    print("[2] View my Carts")
    print("[3] ")
    print("[4] Add products to cart")
    print("[5] Give Feedback")
    print("[6] Go Back")

def view_order():
    mycursor.execute("SELECT * FROM Retail_Store._order")
    for i in mycursor:
        print(i)

def view_feedback():
    mycursor.execute("SELECT * FROM Retail_Store.product_feedback")
    for i in mycursor:
        print(i)

def view_products():
    mycursor.execute("SELECT * FROM Retail_Store.product")
    for i in mycursor:
        print(i)

    
def add_agent():
    n = int(input("Enter your Admin ID: "))
    m = int(input("Assign an ID to the new Delivery Agent: "))
    s = str(input("Enter delivery agent name: "))
    s1 = str(input("Create a Default Password: "))
    k = int(input("Enter Phone no: "))
    s2 = str(input("Enter E-mail: "))
    sql = "INSERT INTO Delivery(admin_id,agent_id ,full_name ,pass_word  ,avg_rating  ,phone ,email) VALUES(%s,%s,%s,%s,%s,%s,%s)"
    val = (n,m,s,s1,2,k,s2)
    mycursor.execute(sql,val)
    for i in mycursor:
        print(i)
    
    mydb.commit()
    print(mycursor.rowcount, "record(s) affected")

    print("Delivery Agent added")

def top_10_p():
    mycursor.execute("SELECT product.product_name , COUNT(*) AS FEEDBACK_COUNT FROM product JOIN product_feedback ON product.product_id = product_feedback.product_id GROUP BY product.product_id ORDER BY FEEDBACK_COUNT DESC LIMIT 10")
    print("Top 10 Products")
    for i in mycursor:
        print(i)
    mydb.commit()
    print(mycursor.rowcount, "record(s) affected")

def top_3_agent():
    mycursor.execute("SELECT Delivery.full_name, Delivery.avg_rating FROM Delivery ORDER BY Delivery.avg_rating DESC LIMIT 3")
    print("Top 3 Agents")
    for i in mycursor:
        print(i)
    mydb.commit()
    print(mycursor.rowcount, "record(s) affected")

def avg_cat_price():
    mycursor.execute("SELECT c.category_name AS Category,AVG(p.price) AS AvgPrice FROM Product p JOIN Category c ON p.category_id = c.category_id GROUP BY c.category_name")
    print("Category wise Avg Price")
    for i in mycursor:
        print(i)
    mydb.commit()
    print(mycursor.rowcount, "record(s) affected")

def my_cart():
    n = int(input("Enter the Customer ID: "))
    sql = "SELECT * FROM Customer WHERE customer.customer_id = %s UNION SELECT * FROM cart WHERE cart.customer_id = %s"
    val = (n,n)
    mycursor.execute(sql,val)
    for i in mycursor:
        print(i)
    
    mydb.commit()
    print("Here are the details.")
    print(mycursor.rowcount, "record(s) affected")

def sales_time():
    s = str(input("Enter Start Date: "))
    s1 = str(input("Enter End Date: "))
    sql = "SELECT SUM(amount) AS total_revenue FROM _order WHERE date_ BETWEEN %s AND %s"
    val = (s,s1)
    mycursor.execute(sql,val)
    for i in mycursor:
        print(i)
    
    mydb.commit()
    print("Sum over Entered Time Perion")
    print(mycursor.rowcount, "record(s) affected")


def del_category():
    n = int(input("Enter the Category ID: "))
    sql = "DELETE FROM Category WHERE category_id = %s"
    val = (n,)
    mycursor.execute(sql,val)
    mydb.commit()
    print("Customer Deleted")
    print(mycursor.rowcount, "record(s) affected")



def del_customers():
    n = int(input("Enter the Customer ID: "))
    sql = "DELETE FROM Customer WHERE customer_id = %s"
    val = (n,)
    mycursor.execute(sql,val)
    mydb.commit()
    print("Customer Deleted")
    print(mycursor.rowcount, "record(s) affected")

def change_price():
    n = float(input("Enter the price multiplier: "))
    s = str(input("Enter Category Name: "))
    sql = "UPDATE product SET price = price * %s WHERE product.category_id = (SELECT category.category_id FROM category WHERE category.category_name = %s)"
    val = (n,s)
    
    mycursor.execute(sql,val)
    for i in mycursor:
        print(i)
    
    mydb.commit()
    print(mycursor.rowcount, "record(s) affected")

    print("Price Updated")


menu()
option = int(input("Enter your choice: "))
while option != 0:
    if(option == 1):
        admin()
        option1 = int(input("Enter your choice: "))
        while option1 != 10:
            if(option1 == 1):
                view_order()
            if(option1 == 7):
                change_price()
            if(option1 == 2):
                add_agent()
            if(option1 == 5):
                del_customers()
            if(option1 == 3):
                del_category()
            if(option1 == 9):
                view_feedback()
            if(option1 == 6):
                view_products()
            if(option1 == 4):
                sales()
                option3 = int(input("Enter your choice: "))
                while option3 != 5:
                    if(option3 == 2):
                        top_10_p()
                    
                    if(option3 == 4):
                        top_3_agent()
                    
                    if(option3 == 3):
                        avg_cat_price()

                    if(option3 == 1):
                        sales_time()
                    sales()
                    option3 = int(input("Enter your choice: "))



            admin()
            option1 = int(input("Enter your choice: "))


        pass

    if(option == 2):
        customer()
        option2 = int(input("Enter your choice: "))
        while option2 != 6:
            if(option2 == 2):
                my_cart()


            customer()
            option2 = int(input("Enter your choice: "))


    menu()
    option = int(input("Enter your choice: "))
