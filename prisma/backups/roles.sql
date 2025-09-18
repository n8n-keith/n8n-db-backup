
\restrict jqseVm6KxLXQuhOEbKX9xNBcbrbclucp4bvWL1v1t6TAca19C1pqaVM8duf4g2F

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

ALTER ROLE "anon" SET "statement_timeout" TO '3s';

ALTER ROLE "authenticated" SET "statement_timeout" TO '8s';

ALTER ROLE "authenticator" SET "statement_timeout" TO '8s';

\unrestrict jqseVm6KxLXQuhOEbKX9xNBcbrbclucp4bvWL1v1t6TAca19C1pqaVM8duf4g2F

RESET ALL;
