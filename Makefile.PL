use ExtUtils::MakeMaker;

use YAML::Any qw(LoadFile);
my $file = "plugins/PreviewShare/config.yaml";
my $version = LoadFile($file)->{version} ||
    die "No version found in $file";

WriteMakefile(
    NAME            => 'Preview Share',
    VERSION         => $version,
    DISTNAME        => 'PreviewShare',
);
