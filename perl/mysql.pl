#!/bin/perl

use strict;
use warnings;
use DBI;

my $dsn = "DBI:mysql:database=mysql_tutorials;host=127.0.0.1;port=3306";
my $username = "root";
my $password = "qaz#123";

my $dbh = DBI->connect($dsn, $username, $password) or die "Could not connect to database: $DBI::errstr";

my $stmt = $dbh->prepare("select * from students");
$stmt->execute() or die "Error executing query: $DBI::errstr";

while(my $row = $stmt->fetchrow_hashref()) {
	print "ID: $row->{id}, Name: $row->{first_name}\n";
}

$dbh->disconnect();
