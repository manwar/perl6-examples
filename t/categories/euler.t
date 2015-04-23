use v6;

use Test;

plan 19;

subtest {
    plan 5;

    my $problem = "prob001";
    my @authors = <cspencer eric256 grondilu hexmode unobe>;
    my $expected-output = 233168;

    for @authors -> $author {
        my $name = "$problem-$author.pl";
        my $output = run-example($name);
        is($output.chomp, $expected-output, $name);
    }

}, "prob001";

subtest {
    plan 3;

    my $problem = "prob002";
    my @authors = <eric256 gerdr hexmode>;
    my $expected-output = 4613732;

    check-example-solutions($problem, $expected-output, @authors)
}, "prob002";

subtest {
    plan 4;

    my $problem = "prob003";
    my @authors = <eric256 gerdr hexmode lanny>;
    my $expected-output = 6857;

    check-example-solutions($problem, $expected-output, @authors)
}, "prob003";

subtest {
    plan 1;

    my $problem = "prob004";
    my @authors = <unobe>;
    my $expected-output = 906609;

    check-example-solutions($problem, $expected-output, @authors)
}, "prob004";

subtest {
    plan 2;

    my $problem = "prob005";
    my @authors = <unobe xfix>;
    my $expected-output = 232792560;

    check-example-solutions($problem, $expected-output, @authors)
}, "prob005";

subtest {
    plan 1;

    my $problem = "prob006";
    my @authors = <polettix>;
    my $expected-output = 25164150;

    check-example-solutions($problem, $expected-output, @authors)
}, "prob006";

subtest {
    plan 1;

    my $problem = "prob007";
    my @authors = <polettix>;
    my $expected-output = 104743;

    check-example-solutions($problem, $expected-output, @authors)
}, "prob007";

subtest {
    plan 2;

    my $problem = "prob008";
    my @authors = <duff duff2>;
    my $expected-output = 40824;

    check-example-solutions($problem, $expected-output, @authors)
}, "prob008";

subtest {
    plan 3;

    my $problem = "prob009";
    my @authors = <gerdr-feeds gerdr polettix>;
    my $expected-output = 31875000;

    check-example-solutions($problem, $expected-output, @authors)
}, "prob009";

skip("prob010-polettix.pl takes too long to run");
if False {
    subtest {
        plan 1;

        my $problem = "prob010";
        my @authors = <polettix>;
        my $expected-output = 142913828922;

        check-example-solutions($problem, $expected-output, @authors)
    }, "prob010";
}

subtest {
    plan 1;

    my $problem = "prob011";
    my @authors = <moritz>;
    my $expected-output = 70600674;

    check-example-solutions($problem, $expected-output, @authors)
}, "prob011";

skip("prob012-polettix.pl uses too much memory");
if False {
    subtest {
        plan 1;

        my $problem = "prob012";
        my @authors = <polettix>;
        my $expected-output = 76576500;

        check-example-solutions($problem, $expected-output, @authors)
    }, "prob012";
}

subtest {
    plan 1;

    my $problem = "prob013";
    my @authors = <grondilu>;
    my $expected-output = 5537376230;

    check-example-solutions($problem, $expected-output, @authors)
}, "prob013";

skip("prob014-felher.pl takes too long and uses too much memory");
if False {
    subtest {
        plan 1;

        my $problem = "prob014";
        my @authors = <felher>;
        my $expected-output = "the starting number 837799 produces a sequence of 525";

        check-example-solutions($problem, $expected-output, @authors)
    }, "prob014";
}

subtest {
    plan 1;

    my $problem = "prob015";
    my @authors = <felher>;
    my $expected-output = 137846528820;

    check-example-solutions($problem, $expected-output, @authors)
}, "prob015";

subtest {
    plan 1;

    my $problem = "prob016";
    my @authors = <grondilu>;
    my $expected-output = 1366;

    check-example-solutions($problem, $expected-output, @authors)
}, "prob016";

subtest {
    plan 1;

    my $problem = "prob017";
    my @authors = <duff>;
    my $expected-output = 21124;

    check-example-solutions($problem, $expected-output, @authors)
}, "prob017";

subtest {
    plan 1;

    my $problem = "prob018";
    my @authors = <felher>;
    my $expected-output = 1074;

    check-example-solutions($problem, $expected-output, @authors)
}, "prob018";

subtest {
    plan 1;

    my $problem = "prob019";
    my @authors = <grondilu>;
    my $expected-output = 171;

    check-example-solutions($problem, $expected-output, @authors)
}, "prob019";

#| check examples provided by the given authors
sub check-example-solutions($problem, $expected-output, @authors) {
    for @authors -> $author {
        my $name = "$problem-$author.pl";
        my $output = run-example($name);
        is($output.chomp, $expected-output, $name);
    }
}

#| run the given example script
sub run-example($name) {
    my $base-dir = "categories/euler";
    my $script-path = $base-dir ~ "/" ~ $name;
    my $base-cmd = "perl6 $script-path";
    my $output = qqx{$base-cmd};

    return $output;
}

# vim: expandtab shiftwidth=4 ft=perl6
