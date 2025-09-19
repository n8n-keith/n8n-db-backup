
\restrict UVXzq2dPaXj3fYF2E522YREU8BrWb2xOQZC55j029Np42t771sXND1H1XFCmpKf

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

ALTER ROLE "anon" SET "statement_timeout" TO '3s';

ALTER ROLE "authenticated" SET "statement_timeout" TO '8s';

ALTER ROLE "authenticator" SET "statement_timeout" TO '8s';

\unrestrict UVXzq2dPaXj3fYF2E522YREU8BrWb2xOQZC55j029Np42t771sXND1H1XFCmpKf

RESET ALL;
