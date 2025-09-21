
\restrict qhm9TclMhfyOeJCIQGGtpkKoftI6PKnW96pqw2e48ybBDnJ92sNQ7isTpDrVEEg

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

ALTER ROLE "anon" SET "statement_timeout" TO '3s';

ALTER ROLE "authenticated" SET "statement_timeout" TO '8s';

ALTER ROLE "authenticator" SET "statement_timeout" TO '8s';

\unrestrict qhm9TclMhfyOeJCIQGGtpkKoftI6PKnW96pqw2e48ybBDnJ92sNQ7isTpDrVEEg

RESET ALL;
