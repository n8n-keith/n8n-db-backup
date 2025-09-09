
\restrict YeMIyuwPxFnthKkUcxa2ZsgbJ5pbZ90WMv6HwYXOS1RUEx9mS9R3T1WD5sTPGYN

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

ALTER ROLE "anon" SET "statement_timeout" TO '3s';

ALTER ROLE "authenticated" SET "statement_timeout" TO '8s';

ALTER ROLE "authenticator" SET "statement_timeout" TO '8s';

\unrestrict YeMIyuwPxFnthKkUcxa2ZsgbJ5pbZ90WMv6HwYXOS1RUEx9mS9R3T1WD5sTPGYN

RESET ALL;
