sub print_legal_age {
    my ($name, $birthyear) = @_;
    my $legal_year = $birthyear + 21;
    print "$name turned 21 in $legal_year\n";
}

sub choose {
    my ($name, $birthyear) = @_;
    print "Print year $name turned 21? ";
    my $choice = lc(<STDIN>);
    chomp($choice);
    
    if ($choice eq "yes" or $choice eq "no") {
        if ($choice eq "yes") {
            print_legal_age($name, $birthyear);
            exit;
        } elsif ($choice eq "no") {
            print "OK. Exiting program now.\n";
            exit;
        }
    } else {
        print "Please enter yes or no\n";
        choose($name, $birthyear);
    }
}

print "Name: ";
my $name = <STDIN>;
chomp($name);

print "Age: ";
my $age = <STDIN>;
chomp($age);
my $birthyear = 2023 - $age;

print "$name was born in $birthyear\n";

choose($name, $birthyear);