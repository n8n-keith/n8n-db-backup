
\restrict SzKy8rNipZBgU0VVoW3L1UsIfdTOPUqdNtuX4jMj0C4zJctqrGD9wFDIkHmHOle

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

ALTER ROLE "anon" SET "statement_timeout" TO '3s';

ALTER ROLE "authenticated" SET "statement_timeout" TO '8s';

ALTER ROLE "authenticator" SET "statement_timeout" TO '8s';

\unrestrict SzKy8rNipZBgU0VVoW3L1UsIfdTOPUqdNtuX4jMj0C4zJctqrGD9wFDIkHmHOle

RESET ALL;
