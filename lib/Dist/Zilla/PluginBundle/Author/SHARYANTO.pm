package Dist::Zilla::PluginBundle::Author::SHARYANTO;

use Moose;
with 'Dist::Zilla::Role::PluginBundle::Easy';

our $VERSION = '0.10'; # VERSION

use Dist::Zilla::PluginBundle::Filter;

sub configure {
    my $self = shift;

    $self->add_bundle(Filter => {
        -bundle => '@Classic',
        -remove => [qw/PkgVersion PodVersion Readme/],
    });

    $self->add_plugins(
        'CheckChangeLog',
        'MetaJSON',
        'OurPkgVersion',
        'PodWeaver',
        'ReadmeFromPod',
        'Test::Compile',

        'Test::Rinci',
        'Rinci::Validate',

        [InstallRelease => {install_command => 'cpanm -n .'}],
        ['Run::Release' => {run => 'archive-perl-release %s'}],
    );
}

__PACKAGE__->meta->make_immutable;
no Moose;
1;
# ABSTRACT: Dist::Zilla like SHARYANTO when you build your dists

__END__

=pod

=head1 NAME

Dist::Zilla::PluginBundle::Author::SHARYANTO - Dist::Zilla like SHARYANTO when you build your dists

=head1 VERSION

version 0.10

=head1 SYNOPSIS

 # dist.ini
 [@Author::SHARYANTO]

is equivalent to:

 [@Filter]
 bundle=@Classic
 remove=PkgVersion
 remove=PodVersion
 remove=Readme

 [CheckChangeLog]
 [MetaJSON]
 [OurPkgVersion]
 [PodWeaver]
 [ReadmeFromPod]
 [Test::Compile]
 [Test::Rinci]

 [InstallRelease]
 install_command=cpanm -n .

 [Run::Release]
 ;notexist_fatal = 0
 run=archive-perl-release %s

=head1 DESCRIPTION

The gist:

I avoid stuffs that might change line numbers (so OurPkgVersion instead of
PkgVersion, etc). I also always add #ABSTRACT, #PODNAME, and POD at the end of
file).

I still maintain dependencies and increase version number manually (so no
AutoVersion and AutoPrereqs).

I install my dists after release (the eat-your-own-dog-food principle). I also
archive them using a script called C<archive-perl-release>. This is currently a
script on my computer, you can get them from my 'scripts' github repo but this
is optional and the release process won't fail if the script does not exist.

=for Pod::Coverage ^(configure)$

=head1 AUTHOR

Steven Haryanto <stevenharyanto@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Steven Haryanto.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
