use strict;
use warnings;
 
use 5.008;
 
use ExtUtils::MakeMaker;
WriteMakefile
(
    NAME          => 'Bio::CIPRES',
    AUTHOR        => 'Rutger Vos <rutgeraldo@gmail.com>',
    VERSION_FROM  => 'lib/Bio/CIPRES.pm',
    ABSTRACT_FROM => 'lib/Bio/CIPRES.pm',
    LICENSE       => 'perl',
    PREREQ_PM     => {
        'XML::Twig'  => '0',
	'YAML'       => '0',
        'Bio::Phylo' => '0',	
    },
    TEST_REQUIRES => {
          'Test::More' => '0'
    },
    EXE_FILES => [
           'script/cipresrun'
    ],
    META_MERGE    => {
        'meta-spec' => { version => 2 },
         resources => {
             repository => {
                 type => 'git',
                 url  => 'https://github.com/szabgab/perlmaven.com.git',
                 web  => 'https://github.com/szabgab/perlmaveb.com',
             },
             bugtracker => {web => 'https://github.com/szabgab/perlmaven.com/issues'},
         },
    }, 
);