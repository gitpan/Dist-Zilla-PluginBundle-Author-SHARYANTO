package Dist::Zilla::PluginBundle::Author::SHARYANTO::NonCPAN;

use Moose;
with 'Dist::Zilla::Role::PluginBundle::Easy';

our $VERSION = '0.14'; # VERSION

use Dist::Zilla::PluginBundle::Filter;

sub configure {
    my $self = shift;

    $self->add_bundle(Filter => {
        -bundle => '@Author::SHARYANTO',
        -remove => [qw/ConfirmRelease MetaJSON MetaYAML UploadToCPAN/],
    });
}

__PACKAGE__->meta->make_immutable;
no Moose;
1;
# ABSTRACT: Dist::Zilla like SHARYANTO when you build your non-CPAN dists

__END__

=pod

=encoding UTF-8

=head1 NAME

Dist::Zilla::PluginBundle::Author::SHARYANTO::NonCPAN - Dist::Zilla like SHARYANTO when you build your non-CPAN dists

=head1 VERSION

version 0.14

=head1 SYNOPSIS

 # dist.ini
 [@Author::SHARYANTO::NonCPAN]

is equivalent to:

 [@Filter]
 bundle=@Author::SHARYANTO
 remove=ConfirmRelease
 remove=MetaJSON
 remove=MetaYAML
 remove=UploadToCPAN

=head1 DESCRIPTION

=head1 FUNCTIONS


None are exported by default, but they are exportable.

=for Pod::Coverage ^(configure)$

=head1 HOMEPAGE

Please visit the project's homepage at L<https://metacpan.org/release/Dist-Zilla-PluginBundle-Author-SHARYANTO>.

=head1 SOURCE

Source repository is at L<https://github.com/sharyanto/perl-Dist-Zilla-PluginBundle-Author-SHARYANTO>.

=head1 BUGS

Please report any bugs or feature requests on the bugtracker website
L<https://rt.cpan.org/Public/Dist/Display.html?Name=Dist-Zilla-PluginBundle
-Author-SHARYANTO>

When submitting a bug or request, please include a test-file or a
patch to an existing test-file that illustrates the bug or desired
feature.

=head1 AUTHOR

Steven Haryanto <stevenharyanto@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Steven Haryanto.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
