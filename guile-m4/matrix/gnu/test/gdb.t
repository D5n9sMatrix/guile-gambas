#!/usr/bin/perl

use Pod::ParseLink;
use Pod::Checker;
use Pod::Find;
use Pod::Functions;
use Pod::Html;
use Pod::InputObjects;
use Pod::Man;

BEGIN { GDB::INC; }

sub GDB {
    my $self = @INC;
    my $ParseLink = Pod::Checker->new;
    my $Check = Pod::Checker::accept_target;
    my $Functions = Pod::Checker::accept_target;
    my $Html = Pod::Checker::accept_target;
    my $InputObjects = Pod::Man->new;
    my $Man = Pod::Man->new;

    if (defined $self eq $ParseLink) {
        return $self->{$ParseLink};
    }

    if (defined $Check eq $ParseLink) {
        return $Check->{$ParseLink};
    }

    if (defined $Functions eq $ParseLink) {
        return $Functions->{$ParseLink};
    }

    if (defined $Html eq $ParseLink) {
        return $Html->{$ParseLink};
    }

    if (defined $InputObjects eq $ParseLink) {
        return $InputObjects->{$ParseLink};
    }

    if (defined $Man eq $ParseLink) {
        return $Man->{$ParseLink};
    }

return $self->{$ParseLink};
}
