
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Dist::Zilla like SHARYANTO when you build your dists",
  "AUTHOR" => "Steven Haryanto <stevenharyanto\@gmail.com>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Dist-Zilla-PluginBundle-Author-SHARYANTO",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Dist::Zilla::PluginBundle::Author::SHARYANTO",
  "PREREQ_PM" => {
    "App::ExecIf" => 0,
    "App::norepeat" => 0,
    "Dist::Zilla" => 0,
    "Dist::Zilla::Plugin::Author::SHARYANTO::MetaResources" => 0,
    "Dist::Zilla::Plugin::CheckChangeLog" => 0,
    "Dist::Zilla::Plugin::CheckMetaResources" => 0,
    "Dist::Zilla::Plugin::Extras" => 0,
    "Dist::Zilla::Plugin::InstallRelease" => 0,
    "Dist::Zilla::Plugin::OurPkgVersion" => 0,
    "Dist::Zilla::Plugin::PodWeaver" => 0,
    "Dist::Zilla::Plugin::ReadmeFromPod" => 0,
    "Dist::Zilla::Plugin::Rinci::Validate" => "0.01",
    "Dist::Zilla::Plugin::Run" => 0,
    "Dist::Zilla::Plugin::TaskWeaver" => 0,
    "Dist::Zilla::Plugin::Test::Compile" => "2.033",
    "Dist::Zilla::Plugin::Test::Rinci" => "0.01"
  },
  "TEST_REQUIRES" => {
    "File::Spec" => 0,
    "IO::Handle" => 0,
    "IPC::Open3" => 0,
    "Test::More" => 0
  },
  "VERSION" => "0.19",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "App::ExecIf" => 0,
  "App::norepeat" => 0,
  "Dist::Zilla" => 0,
  "Dist::Zilla::Plugin::Author::SHARYANTO::MetaResources" => 0,
  "Dist::Zilla::Plugin::CheckChangeLog" => 0,
  "Dist::Zilla::Plugin::CheckMetaResources" => 0,
  "Dist::Zilla::Plugin::Extras" => 0,
  "Dist::Zilla::Plugin::InstallRelease" => 0,
  "Dist::Zilla::Plugin::OurPkgVersion" => 0,
  "Dist::Zilla::Plugin::PodWeaver" => 0,
  "Dist::Zilla::Plugin::ReadmeFromPod" => 0,
  "Dist::Zilla::Plugin::Rinci::Validate" => "0.01",
  "Dist::Zilla::Plugin::Run" => 0,
  "Dist::Zilla::Plugin::TaskWeaver" => 0,
  "Dist::Zilla::Plugin::Test::Compile" => "2.033",
  "Dist::Zilla::Plugin::Test::Rinci" => "0.01",
  "File::Spec" => 0,
  "IO::Handle" => 0,
  "IPC::Open3" => 0,
  "Test::More" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



