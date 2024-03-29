
# This file was automatically generated by Dist::Zilla::Plugin::MakeMaker v5.019.
use strict;
use warnings;

use 5.010001;

use ExtUtils::MakeMaker 6.30;

use File::ShareDir::Install;
$File::ShareDir::Install::INCLUDE_DOTFILES = 1;
$File::ShareDir::Install::INCLUDE_DOTDIRS = 1;
install_share dist => "share";


my %WriteMakefileArgs = (
  "ABSTRACT" => "Export DBI database as HTTP API (Riap::HTTP)",
  "AUTHOR" => "Steven Haryanto <stevenharyanto\@gmail.com>",
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30",
    "File::ShareDir::Install" => "0.06"
  },
  "DISTNAME" => "Plack-App-dbi2http",
  "EXE_FILES" => [
    "bin/dbi2http"
  ],
  "LICENSE" => "perl",
  "NAME" => "Plack::App::dbi2http",
  "PREREQ_PM" => {
    "DBI" => 0,
    "DBIx::FunctionalAPI" => 0,
    "File::ShareDir" => 0,
    "File::Slurp::Tiny" => 0,
    "File::Write::Rotate" => 0,
    "Perinci::Access::Base::Patch::PeriAHS" => 0,
    "Plack::Builder" => 0,
    "Plack::Util::PeriAHS" => 0,
    "YAML::Syck" => 0
  },
  "TEST_REQUIRES" => {
    "File::Spec" => 0,
    "IO::Handle" => 0,
    "IPC::Open3" => 0,
    "Test::More" => 0
  },
  "VERSION" => "0.05",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "DBI" => 0,
  "DBIx::FunctionalAPI" => 0,
  "File::ShareDir" => 0,
  "File::Slurp::Tiny" => 0,
  "File::Spec" => 0,
  "File::Write::Rotate" => 0,
  "IO::Handle" => 0,
  "IPC::Open3" => 0,
  "Perinci::Access::Base::Patch::PeriAHS" => 0,
  "Plack::Builder" => 0,
  "Plack::Util::PeriAHS" => 0,
  "Test::More" => 0,
  "YAML::Syck" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);

{
package
MY;
use File::ShareDir::Install qw(postamble);
}


