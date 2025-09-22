
\restrict VaLtY8U5BOEm8ZJGY7LNgPdimkt1FpmgS5bjQ0StFCz225VTFiZhs0CMmzrlm9A

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

ALTER ROLE "anon" SET "statement_timeout" TO '3s';

ALTER ROLE "authenticated" SET "statement_timeout" TO '8s';

ALTER ROLE "authenticator" SET "statement_timeout" TO '8s';

\unrestrict VaLtY8U5BOEm8ZJGY7LNgPdimkt1FpmgS5bjQ0StFCz225VTFiZhs0CMmzrlm9A

RESET ALL;
