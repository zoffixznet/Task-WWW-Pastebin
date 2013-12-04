use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Task::WWW::Pastebin',
    license             => 'perl',
    dist_author         => 'Zoffix Znet <zoffix@cpan.org>',
    dist_version_from   => 'lib/Task/WWW/Pastebin.pm',
    build_requires => {
        'Test::More' => 0,
    },
    requires => {
        'WWW::Pastebin::Bot::Pastebot::Create'      => 0.001,
        'WWW::Pastebin::Many::Retrieve'             => 0.002,
        'WWW::Pastebin::NoMorePastingCom::Retrieve' => 0.001,
        'WWW::Pastebin::NoPasteCom::Create'         => 0.0102,
        'WWW::Pastebin::PastebinCa::Create'         => 0.001,
        'WWW::Pastebin::PastebinCa::Retrieve'       => 0.003,
        'WWW::Pastebin::PastebinCom::Create'        => 0.003,
        'WWW::Pastebin::PastebinCom::Retrieve'      => 0.002,
        'WWW::Pastebin::PastieCabooSe::Retrieve'    => 0.001,
        'WWW::Pastebin::PhpfiCom::Create'           => 0.001,
        'WWW::Pastebin::PhpfiCom::Retrieve'         => 0.001,
        'WWW::Pastebin::RafbNet::Create'            => 0.001,
        'WWW::Pastebin::RafbNet::Retrieve'          => 0.001,
        'WWW::Pastebin::UbuntuNlOrg::Retrieve'      => 0.001,
    },
    add_to_cleanup      => [ 'Task-WWW-Pastebin-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();    


