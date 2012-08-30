package SQL::ReservedWords::DB2;

use strict;
use warnings;
use vars '$VERSION';

$VERSION = 0.7;

use constant DB2V5 => 0x01;
use constant DB2V6 => 0x02;
use constant DB2V7 => 0x04;
use constant DB2V8 => 0x08;

{
    require Sub::Exporter;

    my @exports = qw[
        is_reserved
        is_reserved_by_db2v5
        is_reserved_by_db2v6
        is_reserved_by_db2v7
        is_reserved_by_db2v8
        reserved_by
        words
    ];

    Sub::Exporter->import( -setup => { exports => \@exports } );
}

{
    my %WORDS = (
        ADD                  => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        AFTER                =>         DB2V6 | DB2V7 | DB2V8,
        ALL                  => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        ALLOCATE             => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        ALLOW                =>         DB2V6 | DB2V7 | DB2V8,
        ALTER                => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        AND                  => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        ANY                  => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        AS                   => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        ASENSITIVE           =>                         DB2V8,
        ASSOCIATE            => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        ASUTIME              =>         DB2V6 | DB2V7 | DB2V8,
        AUDIT                => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        AUX                  =>         DB2V6 | DB2V7 | DB2V8,
        AUXILIARY            =>         DB2V6 | DB2V7 | DB2V8,
        BEFORE               =>         DB2V6 | DB2V7 | DB2V8,
        BEGIN                =>         DB2V6 | DB2V7 | DB2V8,
        BETWEEN              => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        BUFFERPOOL           => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        BY                   => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        CALL                 => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        CAPTURE              => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        CASCADED             => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        CASE                 => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        CAST                 =>         DB2V6 | DB2V7 | DB2V8,
        CCSID                => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        CHAR                 => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        CHARACTER            => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        CHECK                => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        CLOSE                =>         DB2V6 | DB2V7 | DB2V8,
        CLUSTER              => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        COLLECTION           => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        COLLID               =>         DB2V6 | DB2V7 | DB2V8,
        COLUMN               => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        COMMENT              =>         DB2V6 | DB2V7 | DB2V8,
        COMMIT               =>         DB2V6 | DB2V7 | DB2V8,
        CONCAT               => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        CONDITION            => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        CONNECT              =>         DB2V6 | DB2V7 | DB2V8,
        CONNECTION           =>         DB2V6 | DB2V7 | DB2V8,
        CONSTRAINT           => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        CONTAINS             =>         DB2V6 | DB2V7 | DB2V8,
        CONTINUE             => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        COUNT                => DB2V5,
        CREATE               =>         DB2V6 | DB2V7 | DB2V8,
        CURRENT              => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        CURRENT_DATE         => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        CURRENT_LC_CTYPE     =>         DB2V6 | DB2V7 | DB2V8,
        CURRENT_PATH         =>         DB2V6 | DB2V7 | DB2V8,
        CURRENT_TIME         => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        CURRENT_TIMESTAMP    => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        CURSOR               => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        DATA                 =>         DB2V6 | DB2V7 | DB2V8,
        DATABASE             => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        DAY                  => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        DAYS                 => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        DB2SQL               =>         DB2V6 | DB2V7,
        DBINFO               =>         DB2V6 | DB2V7 | DB2V8,
        DECLARE              =>         DB2V6 | DB2V7 | DB2V8,
        DEFAULT              => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        DELETE               => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        DESCRIPTOR           => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        DETERMINISTIC        =>         DB2V6 | DB2V7 | DB2V8,
        DISALLOW             =>         DB2V6 | DB2V7 | DB2V8,
        DISTINCT             => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        DO                   => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        DOUBLE               => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        DROP                 => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        DSNHATTR             =>                 DB2V7,
        DSSIZE               =>         DB2V6 | DB2V7 | DB2V8,
        DYNAMIC              =>         DB2V6 | DB2V7 | DB2V8,
        EDITPROC             => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        ELSE                 => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        ELSEIF               => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        ENCODING             =>                 DB2V7 | DB2V8,
        ENCRYPTION           =>                         DB2V8,
        END                  => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        ENDING               =>                         DB2V8,
        ERASE                => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        ESCAPE               => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        EXCEPT               => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        EXCEPTION            =>                         DB2V8,
        EXECUTE              => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        EXISTS               => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        EXIT                 => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        EXPLAIN              =>                         DB2V8,
        EXTERNAL             =>         DB2V6 | DB2V7 | DB2V8,
        FENCED               =>         DB2V6 | DB2V7 | DB2V8,
        FETCH                =>         DB2V6 | DB2V7 | DB2V8,
        FIELDPROC            => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        FINAL                =>         DB2V6 | DB2V7 | DB2V8,
        FOR                  => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        FREE                 =>                         DB2V8,
        FROM                 => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        FULL                 => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        FUNCTION             =>         DB2V6 | DB2V7 | DB2V8,
        GENERAL              =>         DB2V6 | DB2V7,
        GENERATED            =>         DB2V6 | DB2V7 | DB2V8,
        GET                  =>         DB2V6 | DB2V7 | DB2V8,
        GLOBAL               =>         DB2V6 | DB2V7 | DB2V8,
        GO                   => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        GOTO                 => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        GRANT                => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        GROUP                => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        HANDLER              => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        HAVING               => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        HOLD                 =>                         DB2V8,
        HOUR                 => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        HOURS                => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        IF                   => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        IMMEDIATE            => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        IN                   => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        INCLUSIVE            =>                         DB2V8,
        INDEX                => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        INHERIT              =>                 DB2V7 | DB2V8,
        INNER                => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        INOUT                => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        INSENSITIVE          =>                 DB2V7 | DB2V8,
        INSERT               => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        INTO                 => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        IS                   => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        ISOBID               => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        ITERATE              =>                         DB2V8,
        JAR                  =>                 DB2V7 | DB2V8,
        JAVA                 =>         DB2V6 | DB2V7,
        JOIN                 => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        KEY                  => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        LABEL                =>         DB2V6 | DB2V7 | DB2V8,
        LANGUAGE             =>         DB2V6 | DB2V7 | DB2V8,
        LC_CTYPE             =>         DB2V6 | DB2V7 | DB2V8,
        LEAVE                => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        LEFT                 => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        LIKE                 => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        LOCAL                => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        LOCALE               =>         DB2V6 | DB2V7 | DB2V8,
        LOCATOR              => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        LOCATORS             => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        LOCK                 =>         DB2V6 | DB2V7 | DB2V8,
        LOCKMAX              => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        LOCKSIZE             => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        LONG                 =>         DB2V6 | DB2V7 | DB2V8,
        LOOP                 => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        MAINTAINED           =>                         DB2V8,
        MATERIALIZED         =>                         DB2V8,
        MICROSECOND          => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        MICROSECONDS         => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        MINUTE               => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        MINUTES              => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        MODIFIES             =>         DB2V6 | DB2V7 | DB2V8,
        MONTH                => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        MONTHS               => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        NEXTVAL              =>                         DB2V8,
        NO                   => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        NONE                 =>                         DB2V8,
        NOT                  => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        NULL                 => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        NULLS                =>         DB2V6 | DB2V7 | DB2V8,
        NUMPARTS             => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        OBID                 => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        OF                   => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        ON                   => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        OPEN                 =>         DB2V6 | DB2V7 | DB2V8,
        OPTIMIZATION         =>         DB2V6 | DB2V7 | DB2V8,
        OPTIMIZE             => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        OR                   => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        ORDER                => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        OUT                  => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        OUTER                => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        PACKAGE              => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        PADDED               =>                         DB2V8,
        PARAMETER            =>         DB2V6 | DB2V7 | DB2V8,
        PART                 => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        PARTITION            =>                         DB2V8,
        PARTITIONED          =>                         DB2V8,
        PARTITIONING         =>                         DB2V8,
        PATH                 =>         DB2V6 | DB2V7 | DB2V8,
        PIECESIZE            => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        PLAN                 => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        PRECISION            => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        PREPARE              =>         DB2V6 | DB2V7 | DB2V8,
        PREVVAL              =>                         DB2V8,
        PRIQTY               => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        PRIVILEGES           => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        PROCEDURE            => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        PROGRAM              => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        PSID                 => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        QUERY                =>                         DB2V8,
        QUERYNO              =>         DB2V6 | DB2V7 | DB2V8,
        READS                =>         DB2V6 | DB2V7 | DB2V8,
        REFERENCES           => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        REFRESH              =>                         DB2V8,
        RELEASE              =>         DB2V6 | DB2V7 | DB2V8,
        RENAME               => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        REPEAT               => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        RESIGNAL             =>                         DB2V8,
        RESTRICT             =>         DB2V6 | DB2V7 | DB2V8,
        RESULT               =>         DB2V6 | DB2V7 | DB2V8,
        RESULT_SET_LOCATOR   =>         DB2V6 | DB2V7 | DB2V8,
        RETURN               =>         DB2V6 | DB2V7 | DB2V8,
        RETURNS              =>         DB2V6 | DB2V7 | DB2V8,
        REVOKE               =>         DB2V6 | DB2V7 | DB2V8,
        RIGHT                => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        ROLLBACK             =>         DB2V6 | DB2V7 | DB2V8,
        ROWSET               =>                         DB2V8,
        RUN                  =>         DB2V6 | DB2V7 | DB2V8,
        SAVEPOINT            =>         DB2V6 | DB2V7 | DB2V8,
        SCHEMA               =>         DB2V6 | DB2V7 | DB2V8,
        SCRATCHPAD           =>         DB2V6 | DB2V7 | DB2V8,
        SECOND               => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        SECONDS              => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        SECQTY               => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        SECURITY             =>         DB2V6 | DB2V7 | DB2V8,
        SELECT               => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        SENSITIVE            =>                 DB2V7 | DB2V8,
        SEQUENCE             =>                         DB2V8,
        SET                  => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        SIGNAL               =>                         DB2V8,
        SIMPLE               =>         DB2V6 | DB2V7 | DB2V8,
        SOME                 => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        SOURCE               =>         DB2V6 | DB2V7 | DB2V8,
        SPECIFIC             =>         DB2V6 | DB2V7 | DB2V8,
        STANDARD             =>         DB2V6 | DB2V7 | DB2V8,
        STATIC               =>                 DB2V7 | DB2V8,
        STAY                 =>         DB2V6 | DB2V7 | DB2V8,
        STOGROUP             => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        STORES               =>         DB2V6 | DB2V7 | DB2V8,
        STYLE                =>         DB2V6 | DB2V7 | DB2V8,
        SUBPAGES             => DB2V5 | DB2V6 | DB2V7,
        SUMMARY              =>                         DB2V8,
        SYNONYM              => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        SYSFUN               =>         DB2V6 | DB2V7 | DB2V8,
        SYSIBM               =>         DB2V6 | DB2V7 | DB2V8,
        SYSPROC              =>         DB2V6 | DB2V7 | DB2V8,
        SYSTEM               =>         DB2V6 | DB2V7 | DB2V8,
        TABLE                => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        TABLESPACE           => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        THEN                 => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        TO                   => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        TRIGGER              =>         DB2V6 | DB2V7 | DB2V8,
        UNDO                 => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        UNION                => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        UNIQUE               => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        UNTIL                => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        UPDATE               => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        USER                 => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        USING                => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        VALIDPROC            => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        VALUE                =>                         DB2V8,
        VALUES               => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        VARIABLE             =>                         DB2V8,
        VARIANT              =>         DB2V6 | DB2V7 | DB2V8,
        VCAT                 => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        VIEW                 => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        VOLATILE             =>                         DB2V8,
        VOLUMES              => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        WHEN                 => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        WHENEVER             =>                         DB2V8,
        WHERE                => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        WHILE                => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        WITH                 => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        WLM                  =>         DB2V6 | DB2V7 | DB2V8,
        XMLELEMENT           =>                         DB2V8,
        YEAR                 => DB2V5 | DB2V6 | DB2V7 | DB2V8,
        YEARS                => DB2V5 | DB2V6 | DB2V7 | DB2V8,
    );

    sub is_reserved {
        return $WORDS{ uc pop } || 0;
    }

    sub is_reserved_by_db2v5 {
        return &is_reserved & DB2V5;
    }

    sub is_reserved_by_db2v6 {
        return &is_reserved & DB2V6;
    }

    sub is_reserved_by_db2v7 {
        return &is_reserved & DB2V7;
    }

    sub is_reserved_by_db2v8 {
        return &is_reserved & DB2V8;
    }

    sub reserved_by {
        my $flags       = &is_reserved;
        my @reserved_by = ();

        push @reserved_by, 'DB2 5' if $flags & DB2V5;
        push @reserved_by, 'DB2 6' if $flags & DB2V6;
        push @reserved_by, 'DB2 7' if $flags & DB2V7;
        push @reserved_by, 'DB2 8' if $flags & DB2V8;

        return @reserved_by;
    }

    sub words {
        return sort keys %WORDS;
    }
}

1;

__END__

=head1 NAME

SQL::ReservedWords::DB2 - Reserved SQL words by DB2

=head1 SYNOPSIS

   if ( SQL::ReservedWords::DB2->is_reserved( $word ) ) {
       print "$word is a reserved DB2 word!";
   }

=head1 DESCRIPTION

Determine if words are reserved by DB2.

=head1 METHODS

=over 4

=item is_reserved( $word )

Returns a boolean indicating if C<$word> is reserved by either DB2 5, 6, 7
or 8.

=item is_reserved_by_db2v5( $word )

Returns a boolean indicating if C<$word> is reserved by DB2 5.

=item is_reserved_by_db2v6( $word )

Returns a boolean indicating if C<$word> is reserved by DB2 6.

=item is_reserved_by_db2v7( $word )

Returns a boolean indicating if C<$word> is reserved by DB2 7.

=item is_reserved_by_db2v8( $word )

Returns a boolean indicating if C<$word> is reserved by DB2 8.

=item reserved_by( $word )

Returns a list with DB2 versions that reserves C<$word>.

=item words

Returns a list with all reserved words.

=back

=head1 EXPORTS

Nothing by default. Following subroutines can be exported:

=over 4

=item is_reserved

=item is_reserved_by_db2v5

=item is_reserved_by_db2v6

=item is_reserved_by_db2v7

=item is_reserved_by_db2v8

=item reserved_by

=item words

=back

=head1 SEE ALSO

L<SQL::ReservedWords>

L<http://www-306.ibm.com/software/data/db2/udb/>

=head1 AUTHOR

Christian Hansen C<chansen@cpan.org>

=head1 COPYRIGHT

This program is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
