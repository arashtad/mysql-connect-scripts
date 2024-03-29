#include <mysql_driver.h>
#include <mysql_connection.h>
#include <cppconn/resultset.h>
#include <cppconn/statement.h>
#include <iostream>

int main(void) {
	sql::mysql::MySQL_Driver *driver;
	sql::Connection *con;

	try {
		driver = sql::mysql::get_driver_instance();
		con = driver->connect("tcp://127.0.0.1:3306", "root", "qaz#123");
		con->setSchema("mysql_tutorials");
		sql::Statement *stmt = con->createStatement();
		sql::ResultSet *res = stmt->executeQuery("select * from students");

		while(res->next()) {
			std::cout << "ID: " << res->getInt("id");
			std::cout << ", Name: " << res->getString("first_name") << std::endl;
		}
			delete res;
			delete stmt;
			delete con;
	}
	catch (sql::SQLException &e) {
		std::cerr << "SQL Error: " << e.what() << std::endl;
	}

	return 0;
}
