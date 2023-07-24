#!/usr/bin/perl

use Pod::ParseLink;
use Pod::Perldoc::ToMan;
use Pod::Parser;
use Pod::Perldoc;
use Pod::Simple::Progress;
use Pod::Simple::HTML;
use Pod::Checker;
use Pod::Simple::PullParser;
use Pod::Simple::TextContent;
use Pod::Text;
use lib qw('hit');
use utf8;
use v5.12;
use strict;
use autodie;
use warnings;
use warnings qw(FATAL utf8);
use open qw(:std :utf8);
use charnames qw(:full :short);

BEGIN { Pod::Perldoc->new; }

sub hit {

    my $self = @INC;
    my $ParseLink = Pod::Parser::begin_input;
    my $ToMan = Pod::Perldoc::ToMan->new;
    my $Parser = Pod::Parser->new;
    my $Perldoc = Pod::Perldoc->new;
    my $Simples = Pod::Simple::TextContent->new;
    my $Progress = Pod::Simple::Progress->new;
    my $Html = Pod::Simple::HTML->new;
    my $Check = Pod::Checker->new;
    my $PullParser = Pod::Simple::PullParser->new;
    my $TextContent = Pod::Simple::TextContent->new;
    my $Text = Pod::Text->new;


return $self->hit;
   
}
