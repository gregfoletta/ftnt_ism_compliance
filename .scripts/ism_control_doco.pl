#!/usr/bin/env perl

use strict;
use warnings;
use 5.010;
use Pod::Usage;
use Getopt::Long;
use XML::LibXML;
use YAML qw(LoadFile);

my %args;
GetOptions(
    \%args,
    'ism=s',
    'playbook=s',
    'help' => sub { pod2usage(1) }
) or pod2usage(2);

=pod

=head1 NAME

=head1 SYNOPSIS

=cut


main(@ARGV);


use Data::Dumper;
sub main {
    # Read in the ISM XML file
    open(my $fh, "<:encoding(UTF-8)", $args{ism}) or die "Could not open '$args{ism}'";
    binmode $fh;
    my $ism_dom = XML::LibXML->load_xml(IO => $fh);
    close($fh);

    # ISM control data structure
    my %ism_controls = 
        map { 
            $_->findnodes('./Identifier')->[0]->to_literal => {
                guideline => $_->findnodes('./Guideline')->[0]->to_literal,
                description => $_->findnodes('./Description')->[0]->to_literal,
            }
        } 
        $ism_dom->findnodes('/ISM/Control');

    # Load the playbook
    my $playbook = LoadFile($args{playbook}) or die "Could not open YAML playbook '$args{playbook}'";

    # Run through each task and determine if we implement the control
    for my $task (@{ $playbook->[0]{tasks} }) {
        # ISM ID should be at the start of each task name.
        my ($ism_id) = $task->{name} =~ m{^(ISM-\d+)};
        next unless $ism_id;

        # Add a flag in the ISM controls that we implement this in the playbook
        $ism_controls{$ism_id}{implemented} = 1;
    }

    # Generate a markdown table
    say "| ISM ID | Description |";
    say "| ______ | ___________ |";
    # NOTE: using each, no modification of hash allowed
    while( my ($control, $properties) = (each %ism_controls)) {
        next unless $properties->{implemented};
        say "| $control | $properties->{description} |";
    }

        



}
   

    

