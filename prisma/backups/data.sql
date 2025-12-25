SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- \restrict 4RgYBIG9jf06nOWdlhEjsNGocwDAVMZKMehHUtryBxJumCR7i3S57dyjnMi8exw

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") FROM stdin;
\.


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") FROM stdin;
\.


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") FROM stdin;
\.


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."instances" ("id", "uuid", "raw_base_config", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_clients" ("id", "client_secret_hash", "registration_type", "redirect_uris", "grant_types", "client_name", "client_uri", "logo_uri", "created_at", "updated_at", "deleted_at", "client_type") FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag", "oauth_client_id", "refresh_token_hmac_key", "refresh_token_counter", "scopes") FROM stdin;
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
\.


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_factors" ("id", "user_id", "friendly_name", "factor_type", "status", "created_at", "updated_at", "secret", "phone", "last_challenged_at", "web_authn_credential", "web_authn_aaguid", "last_webauthn_challenge_data") FROM stdin;
\.


--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_challenges" ("id", "factor_id", "created_at", "verified_at", "ip_address", "otp_code", "web_authn_session_data") FROM stdin;
\.


--
-- Data for Name: oauth_authorizations; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_authorizations" ("id", "authorization_id", "client_id", "user_id", "redirect_uri", "scope", "state", "resource", "code_challenge", "code_challenge_method", "response_type", "status", "authorization_code", "created_at", "expires_at", "approved_at", "nonce") FROM stdin;
\.


--
-- Data for Name: oauth_client_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_client_states" ("id", "provider_type", "code_verifier", "created_at") FROM stdin;
\.


--
-- Data for Name: oauth_consents; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_consents" ("id", "user_id", "client_id", "scopes", "granted_at", "revoked_at") FROM stdin;
\.


--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."one_time_tokens" ("id", "user_id", "token_type", "token_hash", "relates_to", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") FROM stdin;
\.


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_providers" ("id", "resource_id", "created_at", "updated_at", "disabled") FROM stdin;
\.


--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_providers" ("id", "sso_provider_id", "entity_id", "metadata_xml", "metadata_url", "attribute_mapping", "created_at", "updated_at", "name_id_format") FROM stdin;
\.


--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_relay_states" ("id", "sso_provider_id", "request_id", "for_email", "redirect_to", "created_at", "updated_at", "flow_state_id") FROM stdin;
\.


--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_domains" ("id", "sso_provider_id", "domain", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: annotation_tag_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."annotation_tag_entity" ("id", "name", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."role" ("slug", "displayName", "description", "roleType", "systemRole", "createdAt", "updatedAt") FROM stdin;
global:owner	Owner	Owner	global	t	2025-10-07 11:49:37.861+00	2025-10-07 11:49:46.653+00
global:admin	Admin	Admin	global	t	2025-10-07 11:49:37.861+00	2025-10-07 11:49:46.653+00
global:member	Member	Member	global	t	2025-10-07 11:49:37.861+00	2025-10-07 11:49:46.653+00
project:admin	Project Admin	Project Admin	project	t	2025-10-07 11:49:37.861+00	2025-10-07 11:49:48.213+00
project:personalOwner	Project Owner	Project Owner	project	t	2025-10-07 11:49:37.861+00	2025-10-07 11:49:48.213+00
project:editor	Project Editor	Project Editor	project	t	2025-10-07 11:49:37.861+00	2025-10-07 11:49:48.213+00
project:viewer	Project Viewer	Project Viewer	project	t	2025-10-07 11:49:37.861+00	2025-10-07 11:49:48.213+00
credential:owner	Credential Owner	Credential Owner	credential	t	2025-10-07 11:49:49.563+00	2025-10-07 11:49:49.563+00
credential:user	Credential User	Credential User	credential	t	2025-10-07 11:49:49.563+00	2025-10-07 11:49:49.563+00
workflow:owner	Workflow Owner	Workflow Owner	workflow	t	2025-10-07 11:49:50.541+00	2025-10-07 11:49:50.541+00
workflow:editor	Workflow Editor	Workflow Editor	workflow	t	2025-10-07 11:49:50.541+00	2025-10-07 11:49:50.541+00
\.


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user" ("id", "email", "firstName", "lastName", "password", "personalizationAnswers", "createdAt", "updatedAt", "settings", "disabled", "mfaEnabled", "mfaSecret", "mfaRecoveryCodes", "lastActiveAt", "roleSlug") FROM stdin;
f72059c4-d73c-460f-b3d9-5c2e1e562c80	keithergt@gmail.com	Keith Walter	Torreblanca	$2a$10$AWbQHaoL9pH/nhBaBX9SseUHyR3lB36gRaF3Pcznbk3k8xsD0k3u6	{"version":"v4","personalization_survey_submitted_at":"2025-08-25T07:02:04.655Z","personalization_survey_n8n_version":"1.107.4","automationGoalDevops":["ticketing-systems-integrations"],"companySize":"<20","companyType":"systems-integrator","role":"it","reportedSource":"google"}	2025-08-25 06:53:06.753+00	2025-12-20 01:04:32.975+00	{"userActivated":true,"easyAIWorkflowOnboarded":true,"firstSuccessfulWorkflowId":"a9szlrQBELM41VLk","userActivatedAt":1759748445057,"npsSurvey":{"waitingForResponse":true,"ignoredCount":1,"lastShownAt":1761399120185}}	f	f	\N	\N	2025-12-20	global:owner
\.


--
-- Data for Name: auth_identity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."auth_identity" ("userId", "providerId", "providerType", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: auth_provider_sync_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."auth_provider_sync_history" ("id", "providerType", "runMode", "status", "startedAt", "endedAt", "scanned", "created", "updated", "disabled", "error") FROM stdin;
\.


--
-- Data for Name: credentials_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."credentials_entity" ("name", "data", "type", "createdAt", "updatedAt", "id", "isManaged") FROM stdin;
HubSpot account 2	U2FsdGVkX19WBSwugqUlenaaX9SiPFo4nh2Mzc+gL3wNm+ynh/czwS1YGJt+pf7txgpK3RtnfBJDw+/pG3j4kHs1cYzLnriBt2dOtyzTC/eZxjMnQdC981xS4BdK4bbW/4l5BGkyJD8Ag0QwwZ30gmwrdt8/OPkk7fRI40l53FNlowUyuBrs+vZYS3dd5cx92Ge5xFVHcPpBt8d869riZChqUvWN9EzO+dFF5We9EHzbrdvR1hxrLVD6wDFQ01gaBaTay5ZVrhsPuxrEUUSzJ3cbh/z3Zpn+c+nu4gRsJ1sspDvcrTSshl5IGdpsphyJOajNmIwDHJTsuUytvdXb4KwqdnKiqYaoqyu5HNXynMFdxQfM3sirjPKBZFRdbVcNDU2kTy/aAvbBrSea+TJYjdnDtzeem47TnvjuT/FhZocHCOVEYRnDjqvvBfYeRNVX1MKslFyy92RO1Cpbw2eFblw/ouApcQAeJ+d7k0ux+bX/0avd8WIDk+uLe1WXjcuhMnvyUZ75SyJvg1OU2+Fvj62iyKg2glsQqDWMehM0wW/X6AgWktJ9gDgMUVncSaEbaoDgyt51TKH4gzIgW16tGPTOldzg78TuVTmKqErJCnrD9qQTT0PT8uOXq+Y5kJ3R6ex75hbxtPQ0HlxAmyP3il5whUsxUN1x82XaFESqoHy50IECwtNLF8qL69kg8bN5iyaHhTwVYOjHXhPtnyOTfhojWTtY5EkVCVtAtUAHhO2XsXmh+R2DSvz7lS3dUZHF3DrU1OGb/+Wt/HSza1ye0RDeOI9ewfluoH051kWIzAVXs0eV8gVPJ0idcjAc+9AGumAPrTlVjwbkg8SdAc8WV6OrOGlOHeRqu4R4eAT7BF+0Bjqw+CbbFxNbDubCBk15B1Az8Ifv9aUREtki3rnGUCAXNpS3ovKBWSKyg8hSN7K6yAVUKrABFKJR4BZ7CXQS5fyA8LGcHAxaI+sFCJ3urF2lYigVv9o9LMf3nlqF3k0P0+oYp1lQk+W8YN1Y9wtsuxxYwJNM22+jlUJR3RsbMH51wuw3lwBdShEDvB4psOK4EaEDY7ZGEUjEAmCPOPMpAFAIE8wQKPkskUjLGQ0l4pWU6p2v6ESSYk24h/i1tl8=	hubspotOAuth2Api	2025-10-25 14:21:13.328+00	2025-10-25 14:21:30.211+00	JbkdHlQQ6XLLIty7	f
Google Drive account	U2FsdGVkX1+rZzygaXF8W9dtzghJ6nxG74KKfp0Wo+/JN1b2Ee5+lJjDv7pxaoDSGIsQiP+hTyQUWSUkbP2lqrVr6AttmvPO979Mj6NwGN534bEXdJcDel9xe74LBbNJA9f/ut5KSTa25Bt3bobD6YE0mLnmCVbzJEnzayb0stRiEVpmXro+aVaDEpHjV9lxI9uz9Z3B8sCav+0Q68HrEaOB2T84jxjupmwFjBwU+PwZINQF3owSwbekUTFqYCITv9ajd0A1L01KHPByzCdjTLpLNg2fISlWgLUlb2ttstGyZ9XydLHhoVOa0f0tiNbLNFTLZfFMCwv7X+V6gYorU8mqDDVWTmtW20z04nheyynYR0k5XYWLZqvuJcO78ON1DVcOhqLc/W8WwrjbEQV+DUpIsdE0KARczC9NN2OxHu5J3aP9q7BQG0YJYAc2v7aZAfd41uWxFEH4xPDsxvntgV7QJKeZPm63919IAXZYk0jTD6pf8eG9HSYEIknec88/+aiWWzgz/c/zz4X5wlO4fHS8ieDobHjS9Kvp6s5XcED6vLNAGrfY/AxyvR9sTtoZByWbgr3jh1VFqF2a4oEi9hweeTGC32FthuEjqHaWx1i7eUAutWknELFyXTS5Rtn/0hlByQdBRNntXZYItmCTnXaCDHcyNtdzBAXptgsccEv0lutqAxgUtlW6VzHgGvt8umm+qr91vlxxtqwjLaToqYAewo+RIJ/jqpniEDB6ksA9r+Ow+UBd+BySjRDZnl+vDc7v9LyigiIqXpNwDc39sUYfSwZgeBMecOqObCSpL0zXqhQJHusxN2cTwCzG7tAKjdXXcoSY0mjxOE6N6nTiW52aCJJIp2hGd0E+WCDHpijRG1uaV0LV+32/qxZaFgAGXimDDioOKAEtdFhAAooJRmY5iObl8SFj1vZmXZxBrqi/T2atWNxB5waPsOJZkWHpY8sKhiNKtjB3RwK0E7bV2Kiax5F+I5ctJAAPWmK/e6yU7lvwoTEDLxir85XNOrf6QbgIS15fITqAREsygSStY9jPWVxvBkce9lwl9hp93ESqXhn1CXKySKMZwNlA7w2oTewNXDSGIzwjfA7WHXmh2ZM224eeG9mRt0yGffN/k9EQrcES5lIPIkJwb7VsCEemUCS2h3B4n2svSknw1RfDZAF+OMAunlJKDqlmUmVhRS9nkyPt4KjPQf82MYm67UiUVLZeTwTKADqGW6Soa69IYnnbgplWDo/SfB9a2PyAePKMJRHvHhJ/iYbfbKQMPgZNDl2TyIfDRMwoHZ+GBylw1US/NUmexhFFBov7qvytJO4f3cuSBJ0OzsqlYhb9daUD	googleDriveOAuth2Api	2025-08-25 09:29:28.939+00	2025-08-25 12:12:21.131+00	PjaCjvaf5KOsNqft	f
Google Calendar account	U2FsdGVkX18J87wCRq70p9nTWOqywHNNYtCJBGjoP/czWZgyfrNAhUHJ4ChSPbD2o0S4BRYOFxwnMLpdtWsh4UzHbr45dK0e4D8R9q7u4xVk4iFOWyW8Kwika/4Tt4881OkKTR5+g3Bu9211nYX89P9HoerY7ZEMmZuK8d3OdEImOgW97lACqXs9UVuSH0Vj2Y4y7nj90/Km3Ozl8cc8g9muWyXnnrAN4LM1kHLArqQTwtNvmSduBaeAYXc1gU6zrEhz7BoLr7w1fnnVSawn5tIpDzBLXMmbFCjVnzX2AbUVEfYLVsl+dqxniShw+sIv5o+fu5ivhwUh7MJEnU/3bKVHrwChAEQpUUdF15mXVe2pHegHV52n0qGUpln4/9HCL+9x5hI8RlMVFKNTT4xQIRTR2YP66eRlLp72TlN5LqDxw3uuyoF53AvyTM5sj6HIi35ObZWBaBge4wmbzADTsqcU1KdtNrYUSTKk7XKaDFx6ES8iRhEL2HYHl7tUXVBY+/LNhv5A8IRqv6l9UPfVt5G5Etj8/cjdcYY3TM8D63B9b3FBdu9YSMyAj5Sjpwm4JF4I2N70FLkOAx0kIN8fB/DchnafpVUksLU3kN6cgEcYxpn9VQpjW1SSiDSyJLviZQYo0uZIM8xy5cmnKk7YZAljdBIaHWL2a4CIsu/8jheALSfcaWYTtL5SKviYh0izLjmPareTImbNepdLxghbyt27afCFplVD0ZHlwmIwudqPKpTavAK1+b/GiPxh7p5U9wdZfqdiK3zZ/oUxhhbz0xj8BTommroHj4XkHjVxg3/XBpAdzPMTfq7f8pjM/PE5SYiHMUowUxFRvadmvLFfPvMmpY9EsIWWoDvLIofpg0w6Ku4IJ9KGmo7ZgmIggV0iofXaDbHCnINeurSxTUjzaTPio1Mm/dNj01QtyAEHohW8uSgwGnqPp4g+3MEat392BdU6MerXKqTBZkPF67WhXFJl+o4G8+PMpSUr3rmP9eUE/cTwgCn0aqgCHw6PW9kKFrIgvolwwsPhcIMD79P7RTEFJ48gDiK1w1h+AoLADLCTI03IQYf8w3LmOiJus6dAztHo43r7hR4S7htbc9d3Yb+MegtnAA2o/xtMr7VoN5our6APj3H5Zz4CunsW5C3gGb1xmIOMZaaTLN//palkbg==	googleCalendarOAuth2Api	2025-10-27 13:02:37.53+00	2025-10-29 21:19:08.255+00	yyujYkvS9NvqqOTt	f
Gmail account 2	U2FsdGVkX19xmmoZcxNSMROFRsfVvYsERKqMZq5yLlTemWEvm80j7KE3zOd7Hd8s3CWyVuFL8ot3fd75AFuozqlNywvjY42emt9Qsbk56Obrp0s0T8WNDqki4aXdb+O4+9nQSnq8Ougi5Xk8vEvogV1xJ4qdWSRhuAJHOFI6mMonxHL9k0hjgfG83+sJPBP2ET9s8a1nSwB34NaXIS68Q7A1mCrHANuZFcGJ6El+h+4nP+rX86PgNbEXQZgNU7k+fCXZ9kpNLgA3aozFsM8xRkaWjr6bpDnLR+QKvbOfpUOxJ25beaG/o6nZ5zpAUisLLYCF3gsznagqDCxbCL+RvkymCpkVDshi2uiRUUPEpVjKPJIf6uv2Vdh2VXCWqqSbmrDMntV/YNHZ/KJQW2iAgHxpwVNVnmy7MXLnJB2zJkfY0VouChkKqRFObnvvNXqj12P3839J/TCrm3bvgNnZxObsycPj/Jch+jjPt+O2Ys4B9Vp05YZlLSdf7tNiPEjlwUFfi5L8SlLbiyiudR8Q7UlFrJfmLkzgsIAQIdGKqKpcogWzLZmpBM34hgfPrqEpLhh75tklF9eQYvebsKhHcT2J0+7YZCCQ0zW6hvE8JIdJnyhuYnu1rUgsIYVwqTwW2Hph1ikwCwOx656iclvkYbEfnNdF77ifP4CNrRNSiFognlxBbEUS4y0sU0n06vgakdQi8m3v9xjbMN/V5uUYyy/U112meLgTyIFrp+ZZncAthiOvh+CVrORxEK4a5zN/QlISTDs5qE+mu9u3+RUjo7xjHB1DrMNPRlI6BfdH4rtnknXC3G9J+vup/XndL5Up/zUBjWYC7kYL1Hdk8cpJDXQ2tZTQPlOpkhqmBzGl/TlUCxHTts0sleBUUjDrJyUY8eY5ll3EZC1c+v0e2TZas1EAOs5oYM4cbE8CkYvzwOpudhYdvvPG3fw/0kbdXRl0xX6Co5sA8YOXjE/BmiV4RofeqBuFqWSoNVDNICfAvclO3/v90GDYw5yLE4QxvfTzUgJVYrKn+kOBk4UrSDbLoxxZwR0cwIaYIeOkL/pstshLKL2STiFzeSkEPgN1I0Aosobuj2QVprhtwsewJLdgP3s56bypwFd/Gz35EvZy6Pr2h89/fNwFC1OlKP9vbiU/5pomcJbHqZC76mDtc64FqepM44O/bU4z11aF6pgAJoml8bj9JYW5LsXIKdpC1i3PoAvOIJtXVp7U5NZf+Y8DtOaj+IhLHOpimphLnSpNve+J/YxntHQ/qRjk56tqOOJGlyjCVUAOfnkBqX0uJGyFl8sAX6+aTOcwc04sHoBX0MP2VoU+69Is15GClV5UKPjLcjxGsSfYusoR0NpAoIeB7mgL5EaqGHAFb1p5DpDeYDJ+NAEkcU80bfKWkvZE6OfDbNE2poQz519NQ9VuxgBOP3mx7jn2/dtOTMK137B9jxhYQK5vCJXomITeCRWpz2cgOeUtIJe4RewMQsDqa6C1c/KIIjWyNVHSPY3mjOyrIjXJwSFmoY2EedrsZhb7KBxXrVzZwHpb9stFYjSfQ3TuXLy08l/79/fsREORtmC7RvUcILS+L37CnOBMWhqnZGkVLMOlhQiO01jOuBU0GKfh4tWarEJaJCoCuUpFOi7o11nBwNEn4zV0hYzosXPZfAhQT7yfTz6AFCukVPjXMjgKiZNXiEX6PYQK0UvDb95qe3KHlwPWodi2EK+AsftImCFE	gmailOAuth2	2025-10-27 13:38:20.913+00	2025-10-29 21:19:08.182+00	Vugl1EUivGrZp9Gx	f
Gmail account	U2FsdGVkX1/3N1pvwwHMt/BTYwdbnjBSJ/RsIMI1YloJ+MQEQfNgiLvYZAbmKoT+vTgWxo2hhcnxYshN3pfsvv++ClalzeBSCtKoc57Um6zaj3NrXzu70oeCcjOrl/BBHQDtpZKHmop84KhM/fU9jKBE/aW2ZFUsGBaquvhW7/teXo1xqzjjOZ2DS9D+eKN5b1CNjj/u4jPbJdXG84YYR9yi3B2UE+EM12qNBDCIqMl0fv5+fX/kPWYF2ZG7bmvC5lGsjGrqxfglWLfKaj2ZOaBQai4c0RY6nHc0cBzm2eNv5nTgvbKIpCPxVldNcKSKXfC6FH4ox2OMc+SJw3IOHBDtpPlOCQAp93SCTI2mR50KvanLVgWO6WWmBbm2bfDa2PrqjVYvrY6+l15cr6ccol1PZa1TboHN/HGmEnl6QMEofZZ7QfgLHvcTbPwPqDFsACpTCxM/pd8UAAeQsXUgovMKknAS0FOjzszTcDxOBDEdK7yJTtWHLX2f8nowyJykX6dROnRPqXBKqVVC7K97ag4DJigWRXCyqQiU/Eso1Qux7+sXv47kXZ8mMBm1ADcTLHTE6Z28ZZLmOJv/RPhzPCUFTlPVZb/qQpR+kavK7cGz7M+zwTsy/2VPrCGHp2o1oykpSu2IJA7TUtkpdRVn1u+8w5xjXD+XXwz1jTsDxxKCaGT47j09KecsDuzximrPVZyQnnPGNWlrCB6Dn59VrEqNE1/sCsyzveDLHJWGMfdKR4sbpygO+W4QiXdABUoqOzED3mN/QbumyLdc0Txj9C4YGwmoiIBO7dQ0gU+ylVwwiW1R+BxwNcJsumsYh4P+mfus2ExymTFNK4kkdaWXRToAWUrjyOSthuBjUmvbLNh+D1HmjBdJDSXQDDwsmqYn7Of5hxcGlyVnA3XQkH+AUEED0ueOpIaL+SEAxRCCuNcN0g/z8yDjYbF1nXEI3EC0MGBmyKi1nzqpI/MFm0S+EtAQY2JmSXaB5E1ETdUBp7hmuzUGHIPstEBXt9H3/2zU8I5uMHCNuH+2CQJT3q7+GRw/IzDSjeq/ktKgER5qc7DIuqLuKECA1zqXUmMWg4Fl9re0T4terctEZCAs4LRAuj/06XPELmp77dNvgHz9ULjs00NTLZlz3bhvO6CO7rWKMSmxqs1+Wed0sYmxYLKO66+Y4U+wavlzSt/epWFjiy0hgLROaIabDp6vup7jIxVQjhJkMU3rdg6ggD/b7pYV4KA3rA/OMNd7VczOVlrfSuPg7lhA/OkjPfolmfU4aq9upQMeNMdTiDgHuC2k8ua4PKJZsUwvSV04cKHFlYOxWmfrT3FA4JV+Y7z1cMy9bFcFiCKlXruK43IsaH3TM6z1FsNX361zpw8HyCGkwjIT3j0UK4X9RqpQTT/MrfAxmnjzxfwuM04NHuW8jsz3glaRA7+xDkpHMv8+wFKsBfrjN+GxasH8p0zoQuorHbkfA9hrcUWlftltbpxXyyqzt64jf8Jrdn789KAclh46CLGU5n2Pe0QsxcUTysyH4jl218D1hPRZOQO8ZwJ2ehdi49qwln0wqPukvddglN6RXuvczLALYjgxnIr8IdeANnguVRJGqekA5nJ+aA22p7cPUwUmZM2G4a7ccszvqjfFOC9O4il1NBMAfCLW/Rrk9/0SiAQ2ZCY+rHdlMur7AWTH/Fj1mB5fDy761HKmOZI4Q55O1V0kqNaqEpplFgHtx5YbZFfi	gmailOAuth2	2025-09-10 12:17:50.686+00	2025-10-27 13:34:55.665+00	ZjecAniKUeVCtLmf	f
Google Sheets Trigger account	U2FsdGVkX1/0TRWbfyhBTOJX9u093lrjZWuVnOG0UKpzwBn/1+hIhY1zhw6+uAhFGmjPtikEWRWEKqioSXFWdlbYValAuzmuyey6WEBMQ0gaeVGq/aLTEqGQ63kBz0nqgSumkGGgAdvEJ0Wvir9yQpiCYNV459atbb0vS/1/Di2CzJcJ8ilIH4C8KmIvAlncaUqF+PMYSd9X2kWw/VbYuIO1Tc8qjrb60rBaL3f1zOz8GoywJ66cWQ4xHktlzHLTTXd3XsdR0u7+sapQDLxm56hlKAvA6QBZ0q+96Sbe+VrqwdajZzkGZDlUE29wuVvzGnsA4lCItViLVbQh5cvLdK6Ecq/Kw5IHmN6Wbmk1dG/2intAINC+eIo/dOmulHlx1bdfgVaeTtlYsd7nGpq+pwbX/M+nGHjNQ6Fr6lPfPvkK1pqwt1eV/gLiQmcyWo1cbnxa+Anx96WlvYgQvIGhg1R0fSSTJ7x5OZGB5Wchei3O/9AvW9Js1OrUzDrHF/ekMKTCQKZHuAorSqM+Ywy3ZqdVCinU4Px6eLSZdeWQKtuZYMJr7GaLN3brQzVXz1Lknsygp4+Y+wlrfQPcmzpV59Zq4WYU1F5Jw8Wctz0bx9stSvavMXkx6DSmi6f/UYskexr5jK4J6RuakDbQ+fqsfiLvovV4zc1g5DbM6RpDBNcktliGpbz3D0Uf1lAhHI9mNVjL4Rwg9lQkCvGMQ4AsY0UsTe30N9tgxY0hCnKFlH0Zm8AbjgzOp+MeXzXBuVWL5KWn0W0xdwzvT+b9aBmCDHqe86NH1x/ZrJ8azL/dP2TKOrP8zHXYKIgatkwgGhHh7V6eRCFiJqlzUp7pwlsd1Gsp9SRTJe9z5dBT44KZZE7xQhsmXWho82H7OZfpv6bwG/y97JP0yLM0eG6UItwYtTVKd7xWBtkQ3GRPASvChi+mnz6QJlJjnRCKV9iQXATtgBhL9K8yQPJdly/OaDvq7P0r3/AlqQJZA/IOPNXz+EVCq1Cg7A/ptx9GslCIiOROOTihfiyHYClkk9o0XRGvybrAlgkU2A279lIOFp+/b9hHHZsXpDeaSgq40h10aQOmtA4Gpm4vKBJhKp4lqyRFQnhUwnUcyNKBMr+wsB/ubnYE6Em8tm+C4Ck5kj2Nvo8N41iDpllk8AScbF553NFNVEXp4WCwZBYJ2pVvReaBiYJlsFJA78gKaA6wYITFQnL61U/ZvCtjOraC7Wwya724nAe496hc/lehv2PCxVxih/bSVecPxm+HI/iv0O2IbBrF4KNJb8MzOIqLUlCnk1TE3xlUYl/unu3kxBtVq6Af5Hqx1JGtIMiZGov9TDjhED1X9grvsBw6LaxwXpKLpAP+5zqOFbRwrYO+Zxa3tE/+d/M=	googleSheetsTriggerOAuth2Api	2025-09-13 12:43:00.481+00	2025-09-13 22:47:30.379+00	niYLd01AlzxzgedU	f
Google Gemini(PaLM) Api account	U2FsdGVkX1/vKkDUejHbNWUCD1rVjjtNg5CkLnTAsjedTF6ZUILj/RJbM7cykCG1aKqxGzmopRPBcxPMP+8OG2+YHEh48MxsXdt1vYeX0VI=	googlePalmApi	2025-09-15 12:25:02.369+00	2025-09-15 12:25:02.121+00	2CuCJbUJUCOx6wBX	f
Unnamed credential	U2FsdGVkX1+M4gKAQTn5wpGRKjU/vYQuWEtj0kfA3q/Jh4l/4pevYW0gc1cMk1TVySy5pCH2NF0kXyXhsFtrxyOYNfEjOkIDMJMDlwLWTOE7IzRfZm1R9qKhz+VUaj8n7nNwe+QXEtE9XpKYZVVQKfZia47HLTuOU8tYvExI8hSH7H6wbURuH1Z4vOEhh7HV1HHhO2P3/S3gV2binRKLPq+ObGKQ1H+XR1MNMuFITUk5syWX81wZNmGF5PztcPLQVXOyQzdXILHNI0hBdk+Mxjns6ezGw5LmbwEVizKPdfCeDzRAOoig3sBkYWbRsGH0	facebookGraphApi	2025-10-05 13:13:49.362+00	2025-10-05 13:21:35.788+00	NlGQmL390hyTfNkF	f
OpenWeatherMap account	U2FsdGVkX1+jy7HmX6MfaGQrGKGEUdoCBG4yghg7sA6km2wyPuFz+LZFMQYRreiq4CHAerA4KwIFhf5tEEccK5Os61rP6+TZwiBVeLGuKHA=	openWeatherMapApi	2025-10-05 05:12:22.437+00	2025-10-05 05:12:22.241+00	qNbjIsLUBt9HpEJI	f
Google Sheets account	U2FsdGVkX19DeM59afyIrEKNWVYq9P+sOHO3AUYBvkUqsPa5oAHKWlnHGlmLmQ9c7PcgF8GyDuNdam2L48KQz5+MnsGMa/9S8+7stA+iQwuU75a1e7UNxX6NqIc0PKbsYzRuPYMTcoUjLjSALjUEPCKu+JAQ7YZKGzLUhBtaCHIWGOYCSLaZqlgoHjoi1WYVH6FG/DoxXfBwqPBAPAai+uv+Y4cs/XT2kTRj0wsRaRG4aHiXuCwFbmty2DBSmHVjr2qP/4Bpq3dRaQ0QTnl/Ypzl04jUC8jHRhR/sNHIWmVX0tBEFXh84SuO+s4XVR1C5OX7KXnWfHSS/cXdp/tdjjgjCx7Yt9UZxwx1W62468ikUAL3lm8OETmBQL0Gevo8GO9RPHaA6J6wmDbUBqIbIlAU9B1j3bSaMiC5XANmcTBvRoedL1dbTGCkFKKY4jP4Uek0TR/v+1xpKS0CZwg9G1rmzRHlfiAWIisM7OmQcVBRIlREXoPZ5zrsRZMQS4lMH1BAdtj+BKaI9QJDb4+Z2b0BHl8/0+enE6a+L5KbT6LPFHKlYgOcvLktLHCijGYPoFd5lgIvP+Od06/vAZ/TcogA62WJgi2aLIAmlF5DXZ+eWY8Ki/B+eF+Fe2oLMbn9cj/rvx5ZSVzenKdpqPrthsO1zJsySXlZmXlfqO7U/bhjroh/fiehNRqhZgNilN0zYsvhRQrlFM8DkOhObMvv675/XBCa/q5Xg3EAr4PGcgaXrmiKhEj+R0zrgcUJLqtiD84/7QuePu6eUV3pj24OcWa2E1qGpmr3VE9Qc6UCsljK6PqolwT+mwWA34HWlOtvi93D3C7GqzVWZIZx7A8IzB/uXMrinMas3nL24xOQpKD+rd95ZsNUrv6FgRUtGd9+ZmVNtJBGh5WqL60MYLQvFQN1DjMpZAdgj9gzfZRDhvDhe+6mUv8SGLxZPZoNlwp2DRgiLPlKFpVyl2VFzTFW0rFxL6NgH8LqZSeFx8XCjIJvmd4xwWk8rMZ3c/i5YZYT++lq3WCTuf2dNSVX4nLCpamG52AB8cjctyUmDmlthYEKvUyMS9O9rXlfwwYwIcjj6Hehc96B6veQ1Edkss+rlHrYU1+5jORpw2DW4kVtKEeawDI/FYTaj+q7ZyjWbjXYIm8uXheXNfCRVWSGvBiiiTTZ/sP5WPenU7J/9ZFwBU2kmpaMqGby++ZqxZUR7igsV66K25l7Ryd4cFFqc3qT0oo5/IKhodVeMC5Mjs8j9eHmYbCDUi+PQhF6cLCzeifn	googleSheetsOAuth2Api	2025-10-05 04:54:22.266+00	2025-10-29 21:10:53.41+00	o3gL0KyijArFTKh3	f
Airtable Personal Access Token account	U2FsdGVkX18nV2wbkhgYz3cxAmJCOeN62FL55XnjOyGAdUoqBSxzF69XbIsy2tymhdzynxok3pLHuyvZrLRh2+WVC1i1YXqlobQrBRovu5CG/CB28/dS+Q4yIiGOf3LPSll5+tYF57aWcPEsKdHQVNIQtmAb1YaWymtR6sr6d8Q=	airtableTokenApi	2025-10-25 13:11:38.643+00	2025-10-25 13:11:38.399+00	asVcrivPTD2PjvM0	f
QuickBooks Online account	U2FsdGVkX19Uuc17HNJpr0ESsjOUmG+3hGd6R4SsJebHoPHWPlF38cC1cWsasW++JrXXmz8Z2MYcl4bwXWC4u/Go6g1Rh1kLtWFcqbWoirP1XqGB1g0Zeg8P715Z60hzZ2P+JElltsHg90JF9eo3nun321z87Tdh0BBBwxjx5hdk4U+LeMfOM6KYQEBmN062KQo2YeW+1ofcp9nUEyUQu+g4f5vTz1tnMU7orfIcFKD3mq5Tla8qXfNtI68K1LDg4E8nNh6jMJvcjRIp8vZx3l9cDUgFyy1SuVSOKAlUMm6IHPYICkG3P+uTAXFqoUng2KObwdJC+pZ+7WWyiVlhdEuLcrhne8xUUuoHMOpQohJkz0sL4+C1WR058xwvsH70viHEqNZC6s9yXzv3GxMsyy7CiyTMDCNEYqAoywS2uKjJtrvh4vXn1x3PUvmonGqN4wrFZHXmOis86K7c8tDpLGFOVppPiMoq1Ik4Yav8SOZNFO5Sj+DcpvxBHvphxqlXGnLLxU+10/SFQpE5fLlbY6Qt1uoAryR5IImjW6Wi8bVmCl411yu1/d8aO6TPrZGeRfHtQcPpM9D84LLoLjm4pTTkOvnsMSAvzJq9tHRPZ95hHsYpEzMPgQfgaANl7/RTQhEuB4UhNhF6gwDkAcMH95KrKXYQFMsC5FHRswngC7nwNXvQHkDSMRZ4PdlRQw+1a03d4GqcAvDgEkxGwUwYfV+zf1+GdTwJ7BgPZZey0XbYsOlb4OtnVLXd4dB/Epgyt89yOphTx3wt1c26fVy+Y4B8boi32665h6gcl0eMdM0rJ3Jq5lxw0s+0GjJTcWV9a3nQ4kSAcMMvbglp+dj8y+HQMI5XtqE/VGE0nDAw30kdpHKkOgykWv14ctVO8+8RfNJda1ao8/C48lsz7bWgvt+KjZEiknGEFpKxQYCMyg9pt1Kc7tgY0VWZ6nQkhXhfxnw7P7P/Af1sutdyey9hEcgcPdIFMc1WcCjAJjVZHH9p7roa6hl56/7ysvqFU1dHr8JUwiMTiArfZDmy86ytvU87DdZuxbB+7UjV67TJF5nXH7gZtXz3Qu0A4+cFz8BNzbVs1YP8EB3Uf1XKPqka0K1Tg7ECMPn2WefSBCzxEttNg8o37q6UYOkJIfZLArEeFv1oCJQ25MqAuzUiF2LTsklvSNeSbk9UZFgh2KapvGy52f9rQ37aTJTVqk2V1nQLNhp2ra7r+AIJDPV76R4+exJnDNam4CeVb5PRcahoXwSWlfHPJCf7EggHbnWj0cfwVFABTBhepXx+0T/g044THSn6dCMGQiMFvAaSc6ChHyFugAiFIFDpre4NSmWvfAJH	quickBooksOAuth2Api	2025-10-25 12:13:02.867+00	2025-10-25 12:21:35.434+00	pY7cG33GlwsAymsS	f
HubSpot Developer account	U2FsdGVkX1//WPfiMIgiOgVKLBhQ8Iz85dZHDAwQmH/b+UH0vYyYiqu8QRxPRkw3wmLVWzf3OO7FUqUB4Iv1qbsYyIw8o6fDSL/hAij/6iOSRqvigwoXh5gSr+XE9vSss1kDXB2fhV2IejKns/QPZ8RqFVAiMW59nrQybxhsJz8bvQHVdRb99a+y4HJWMEiCE9Yk0ji66hd6WZWIzkcvW5lX5X11KWUX2J3TvltXuE1M++uma7IPrhpp38O9DnSBp7ChmfMMr8HBGlAVv0UBr9uHNy/9QwbmJRv0SwWwjRUqzR0kzjvR2NTrJJVkDYpwsTTfaUhxX/ZUS7vL9flwBpU7snQZS5hfWTLx9ugaGZ2mrKwNk781nEKoet7YuSoZQ0rU9DNlhLE/To0IO23SnlfPCWeuF3byjXN7BksGacXeEV4RSwOTTTvR3gs2Icwmm2YFO8wAhwjJuuWh8129n9NJuFD9ROHHX0rz8dWQ5vweIwtJKUn+bS7QReeLG/07HOQYkJSN/uWDO2BgAlDykCQVR1WELQ3mxo/sZNztjLjziM7xnu/XEPyJDTwbtTKTzK+hDom9oI6dW/Ma5CMWGWrAUQWigB2r39q0LBFQzXK1OsBa/we3jhC78iXx1NTqap39rW4VQC+iNFmR4dPNfnnJIE2RpRZzeHiowQpMScdkAwrXapDwZBAOgvC5fSfbVIoK+3Ph/wFEHBn+uTFHvYp9JrE0trHyf76BachSpR5F03n4seNRa+1nkywzb8xmb4GJ/EfurYr9WJRtV4Zugul9RqQZEOK1ecBPSuDHvnq1OZrAeD1iFB69uwrx7O5/0bKe8Y1TjGTss47apP1ki6bbvaBBMLvKAsx7UkkELgunaLWczXigDyhflQ9HuZA5/IjAtVk8EAbMdzBxKmkR+vR81JwxMC9yeYzUMgCa/M3bxSlPF0hjpL33pJ3qsu1f	hubspotDeveloperApi	2025-10-25 14:05:34.085+00	2025-10-25 14:16:27.526+00	frbHQbI6lXUwm2Iz	f
HubSpot account	U2FsdGVkX1+XXizZmOKmL3HHbj/WdAmSAnBNpsmfj9Qn19bbNYFbRFZsLlMVeRZ5Z3dNqgTThpNhZtC33CeyGguozxNTqD1PD7pHMOT+cqE=	hubspotAppToken	2025-10-25 13:48:47.036+00	2025-10-25 13:48:46.838+00	mF9J64M4a05QO5LT	f
\.


--
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."project" ("id", "name", "type", "createdAt", "updatedAt", "icon", "description") FROM stdin;
Gqyvau1J0jhxsayS	Keith Walter Torreblanca <keithergt@gmail.com>	personal	2025-08-25 06:56:24.731+00	2025-08-25 07:01:27.107+00	\N	\N
\.


--
-- Data for Name: data_table; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."data_table" ("id", "name", "projectId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: data_table_column; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."data_table_column" ("id", "name", "type", "index", "dataTableId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: event_destinations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."event_destinations" ("id", "destination", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: folder; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."folder" ("id", "name", "parentFolderId", "projectId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: workflow_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_entity" ("name", "active", "nodes", "connections", "createdAt", "updatedAt", "settings", "staticData", "pinData", "versionId", "triggerCount", "id", "meta", "parentFolderId", "isArchived") FROM stdin;
My workflow 3	f	[{"parameters":{},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"e132ae8b-3f4a-4c0a-9f13-86929ec913f7","name":"When clicking ‘Execute workflow’"},{"parameters":{"resource":"spreadsheet","title":"Testing","sheetsUi":{"sheetValues":[{"title":"1"}]},"options":{}},"type":"n8n-nodes-base.googleSheets","typeVersion":4.7,"position":[208,0],"id":"2adcb152-0021-42cc-9a3f-898e87c9224f","name":"Create spreadsheet","credentials":{"googleSheetsOAuth2Api":{"id":"rTkHdhgpedqDiR9m","name":"Google Sheets account"}}}]	{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create spreadsheet","type":"main","index":0}]]},"Create spreadsheet":{"main":[[]]}}	2025-09-10 10:56:40.305+00	2025-09-10 21:17:35.539+00	{"executionOrder":"v1"}	\N	{}	eb141e34-ad29-40ae-aa34-9b5803c700f4	0	5ExHRD33qqGixcpd	{"templateCredsSetupCompleted":true}	\N	t
My workflow 2	f	[{"parameters":{"rule":{"interval":[{"triggerAtHour":9}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.2,"position":[0,0],"id":"c65ae7e3-2ffc-4ec4-8fe8-c7571869985f","name":"Schedule Trigger"}]	{}	2025-09-10 09:29:34.215+00	2025-09-10 21:17:43.425+00	{"executionOrder":"v1"}	\N	{}	50c4e032-3f6f-4c91-8ad9-520a47a46ccd	0	piCfMWSd4xk3pcwk	\N	\N	t
My workflow 2	f	[{"parameters":{"rule":{"interval":[{"triggerAtHour":9}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.2,"position":[0,0],"id":"c65ae7e3-2ffc-4ec4-8fe8-c7571869985f","name":"Schedule Trigger"}]	{}	2025-09-10 09:29:31.256+00	2025-09-10 21:17:47.046+00	{"executionOrder":"v1"}	\N	{}	68d15a73-b1c9-4fc3-82a5-805b67dbfc13	0	gTHlpEOcrsWKg05t	\N	\N	t
My workflow	f	[{"parameters":{},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"cd6a47d2-bb2e-472e-91cb-59c861891c62","name":"When clicking ‘Execute workflow’"},{"parameters":{"resource":"folder","driveId":{"__rl":true,"mode":"list","value":"My Drive"},"folderId":{"__rl":true,"mode":"list","value":"root","cachedResultName":"/ (Root folder)"},"options":{}},"type":"n8n-nodes-base.googleDrive","typeVersion":3,"position":[208,0],"id":"5a39c8bd-347b-4ca7-bfd2-a2e58c408e74","name":"Create folder","credentials":{"googleDriveOAuth2Api":{"id":"PjaCjvaf5KOsNqft","name":"Google Drive account"}}}]	{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create folder","type":"main","index":0}]]}}	2025-08-25 12:14:14.732+00	2025-09-10 21:17:48.616+00	{"executionOrder":"v1"}	\N	{}	4911ac61-218c-4eb8-af85-554e87d53c45	0	7SYp4LtZMlKoLDW5	{"templateCredsSetupCompleted":true}	\N	t
My workflow 4	f	[{"parameters":{"documentId":{"__rl":true,"value":"1DOTdjAzGtVpFX4H1h9hq2bIzh_SHubWWOJ1ukm8Ddbw","mode":"list","cachedResultName":"n8n - Practice #2","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1DOTdjAzGtVpFX4H1h9hq2bIzh_SHubWWOJ1ukm8Ddbw/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":78163686,"mode":"list","cachedResultName":"Form responses 1","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1DOTdjAzGtVpFX4H1h9hq2bIzh_SHubWWOJ1ukm8Ddbw/edit#gid=78163686"},"event":"rowAdded","options":{}},"type":"n8n-nodes-base.googleSheetsTrigger","typeVersion":1,"position":[0,0],"id":"25f41739-5c60-4556-8cca-b2427836e040","name":"Google Sheets Trigger","credentials":{"googleSheetsTriggerOAuth2Api":{"id":"niYLd01AlzxzgedU","name":"Google Sheets Trigger account"}}}]	{"Google Sheets Trigger":{"main":[[]]}}	2025-09-13 12:44:02.897+00	2025-09-15 10:52:26.554+00	{"executionOrder":"v1"}	\N	{}	37a22530-d91f-4159-9f41-96ddac91c8bc	0	BDMnLCyG7skIJznf	{"templateCredsSetupCompleted":true}	\N	t
My workflow 5	f	[{"parameters":{},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"1742d8fe-ba86-412d-99e4-20a229adbef1","name":"When clicking ‘Execute workflow’"},{"parameters":{"documentId":{"__rl":true,"value":"1EFVISKc5Hh3SyfmS_BJ3ZKXkFZwz9gJPzEsl0IiAKDE","mode":"list","cachedResultName":"Copy of Lead information","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1EFVISKc5Hh3SyfmS_BJ3ZKXkFZwz9gJPzEsl0IiAKDE/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":1449789433,"mode":"list","cachedResultName":"Customer demographic","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1EFVISKc5Hh3SyfmS_BJ3ZKXkFZwz9gJPzEsl0IiAKDE/edit#gid=1449789433"},"options":{}},"type":"n8n-nodes-base.googleSheets","typeVersion":4.7,"position":[208,0],"id":"dc842f4f-3365-4296-ad4e-fa53150e4588","name":"Get row(s) in sheet","credentials":{"googleSheetsOAuth2Api":{"id":"rTkHdhgpedqDiR9m","name":"Google Sheets account"}}}]	{"When clicking ‘Execute workflow’":{"main":[[{"node":"Get row(s) in sheet","type":"main","index":0}]]}}	2025-09-15 11:30:54.29+00	2025-09-20 23:25:15.163+00	{"executionOrder":"v1"}	\N	{}	1a219ec0-1958-4db0-9d79-17eec783cb8e	0	ApTJoTTmil4T4YJ3	{"templateCredsSetupCompleted":true}	\N	t
Automatic Email Reminder from Google Sheets	f	[{"parameters":{"documentId":{"__rl":true,"value":"10MZZO-IsJDjreWaATpox_AjqZbQZKSjX20ZYervcDBw","mode":"list","cachedResultName":"n8n - Automatic Email Reminder from Google Sheets","cachedResultUrl":"https://docs.google.com/spreadsheets/d/10MZZO-IsJDjreWaATpox_AjqZbQZKSjX20ZYervcDBw/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":"gid=0","mode":"list","cachedResultName":"Sheet1","cachedResultUrl":"https://docs.google.com/spreadsheets/d/10MZZO-IsJDjreWaATpox_AjqZbQZKSjX20ZYervcDBw/edit#gid=0"},"options":{}},"type":"n8n-nodes-base.googleSheets","typeVersion":4.7,"position":[-832,0],"id":"b1b2176f-fbde-4f63-a266-ef31748ca0b4","name":"Get row(s) in sheet","credentials":{"googleSheetsOAuth2Api":{"id":"rTkHdhgpedqDiR9m","name":"Google Sheets account"}}},{"parameters":{"sendTo":"={{ $('Get row(s) in sheet').item.json.Email }}","subject":"n8n - Sample Reminder that Due Date is in less than 3 days message","message":"=Hi {{ $json.Name.split(\\" \\")[0] }},\\n\\nYour Due Date is {{ $json['Due Date'] }}. It is {{ Math.floor((new Date($json[\\"Due Date\\"]) - new Date($now.toISODate())) / (1000 * 60 * 60 * 24)) }} days from now. Thanks","options":{}},"type":"n8n-nodes-base.gmail","typeVersion":2.1,"position":[-176,-224],"id":"2e017d12-7cab-486e-af31-940a81173ef0","name":"Reminder before due date","webhookId":"1789ff19-0650-4b15-a808-c32dd3defd02","credentials":{"gmailOAuth2":{"id":"ZjecAniKUeVCtLmf","name":"Gmail account"}}},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":2},"conditions":[{"id":"b492ae5a-0885-409a-b97c-dafb72562d29","leftValue":"={{ $json.Status }}","rightValue":"Pending","operator":{"type":"string","operation":"equals","name":"filter.operator.equals"}}],"combinator":"and"},"options":{}},"type":"n8n-nodes-base.filter","typeVersion":2.2,"position":[-608,0],"id":"5285c8d0-a05e-4558-be6d-562541c85896","name":"Check Status if Pending"},{"parameters":{"sendTo":"={{ $json.Email }}","subject":"n8n - Sample Reminder that Due Date is Today","message":"=Hi {{ $json.Name.split(\\" \\")[0] }},  \\n\\nReminder that your Due Date is Today.","options":{}},"type":"n8n-nodes-base.gmail","typeVersion":2.1,"position":[176,-208],"id":"566d231c-0b11-4093-8114-9393ba6847f5","name":"Reminder that today is Due Date","webhookId":"01f9bb1c-4e50-4507-b05e-2cf597475c58","credentials":{"gmailOAuth2":{"id":"ZjecAniKUeVCtLmf","name":"Gmail account"}}},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":2},"conditions":[{"id":"1086a922-b926-4f40-a379-0aaaf8de2998","leftValue":"={{ $json['Due Date'] }}","rightValue":"={{ $now.plus({ days: 3 }).toISODate() }}","operator":{"type":"dateTime","operation":"beforeOrEquals"}},{"id":"4f9feda4-500d-4b41-9eb2-6fa39c162de0","leftValue":"={{ $json['Due Date'] }}","rightValue":"={{ $today.toISODate() }}","operator":{"type":"dateTime","operation":"after"}}],"combinator":"and"},"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.2,"position":[-384,0],"id":"cf5fde2b-e709-417f-8495-95bf3e3945ef","name":"If Due Date is in 3 days"},{"parameters":{"rules":{"values":[{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":2},"conditions":[{"leftValue":"={{ $json['Due Date'] }}","rightValue":"={{ $today.toISODate() }}","operator":{"type":"dateTime","operation":"equals"},"id":"8ed6da7f-9b37-4a29-a7c7-fdcef43d06b9"}],"combinator":"and"}},{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":2},"conditions":[{"id":"183891fc-7891-48e0-b1c7-23cd5227a90f","leftValue":"={{ $today.toISODate() }}","rightValue":"={{ $json['Due Date'] }}","operator":{"type":"dateTime","operation":"after"}}],"combinator":"and"}}]},"options":{}},"type":"n8n-nodes-base.switch","typeVersion":3.2,"position":[-176,0],"id":"fea71dfe-34a9-46ba-a005-b5db6a614d17","name":"Switch"},{"parameters":{"sendTo":"={{ $json.Email }}","subject":"n8n - Sample Reminder for Overdue Payment","message":"=Hi {{ $json.Name.split(\\" \\")[0] }},    \\n\\nReminder that your Payment is Overdue. Your due date was in {{ $json['Due Date'] }}. Thanks","options":{}},"type":"n8n-nodes-base.gmail","typeVersion":2.1,"position":[176,0],"id":"91065d04-0023-4ca0-a066-7707ed53dc29","name":"Reminder for Overdue Payment","webhookId":"db6f4446-2714-4ed6-b757-7c3c6622c8fb","credentials":{"gmailOAuth2":{"id":"ZjecAniKUeVCtLmf","name":"Gmail account"}}},{"parameters":{"rule":{"interval":[{"triggerAtHour":9}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.2,"position":[-1056,0],"id":"13d44e0c-5960-475c-84f6-07a477e48178","name":"Schedule Trigger"}]	{"Get row(s) in sheet":{"main":[[{"node":"Check Status if Pending","type":"main","index":0}]]},"Check Status if Pending":{"main":[[{"node":"If Due Date is in 3 days","type":"main","index":0}]]},"If Due Date is in 3 days":{"main":[[{"node":"Reminder before due date","type":"main","index":0}],[{"node":"Switch","type":"main","index":0}]]},"Switch":{"main":[[{"node":"Reminder that today is Due Date","type":"main","index":0}],[{"node":"Reminder for Overdue Payment","type":"main","index":0}]]},"Reminder that today is Due Date":{"main":[[]]},"Schedule Trigger":{"main":[[{"node":"Get row(s) in sheet","type":"main","index":0}]]}}	2025-09-10 10:56:43.907+00	2025-09-13 12:26:17.473+00	{"executionOrder":"v1"}	{"node:Schedule Trigger":{"recurrenceRules":[]}}	{}	b7ba2057-f485-43db-a5be-aa9136edf50b	1	VpCtchh4w62rujD6	{"templateCredsSetupCompleted":true}	\N	t
My workflow 8	f	[{"parameters":{"promptType":"define","text":"=This is the message of the costumer ({{ $json.chatInput }}).\\n\\nYou are an AI Receptionist designed to handle customer inquiries politely and efficiently. Your primary role is to respond this Costumer's message ({{ $json.chatInput }}) in a friendly, professional manner, providing helpful information or confirming actions. You have access to tools for booking appointments when appropriate.\\n\\nAnalyze the incoming customer message carefully. If it does not involve booking or appointments, respond conversationally with relevant information (e.g., answer questions about services, hours, or general inquiries).\\n\\nIf the message contains keywords like \\"book\\", \\"appointment\\", \\"schedule\\", \\"reserve\\", or similar intent to set up a meeting:\\n\\n1. Extract key details from the message, such as:\\n   - Customer name (if provided, or ask if missing, required the customer with its full name)\\n   - Contact email (required for confirmation; ask if missing)\\n   - Preferred date and time (parse in YYYY-MM-DD HH:MM format; suggest alternatives if unclear)\\n   - The Preferred date of the Costumer should not before of this data {{ $now }}\\n   - Service or reason for appointment\\n   - Any other relevant notes\\n\\n2. If details are incomplete, politely ask for the missing information in your response, and do not proceed with booking until all are provided.\\n\\n3. Once all details are available, use the following tools in sequence:\\n   - First, call the \\"add_to_google_sheet\\" tool to log the booking in the CRM Google Sheet. Include fields: name, email, message, date, time, status=\\"Booked\\".\\n   - Then,s like date, time, call the \\"create_google_calendar_event\\" tool to add the appointment to the calendar. Use the extracted date/time, please make sure to set the title of the event as \\"Appointment with [name of the costumer]\\".\\n   - Finally, call the \\"send_confirmation_email\\" tool to email the customer a confirmation with detail and a thank-you note.\\n\\nAfter completing the tools, respond to the customer with a friendly confirmation message, e.g., \\"Your appointment is booked for [date/time]. We've sent a confirmation to your email.\\"\\n\\nAlways respond in a concise, empathetic tone. If no action is needed, end the interaction helpfully.\\n\\nTools available (use JSON format for calls):\\n\\n- add_to_google_sheet: {\\"name\\": string, \\"email\\": string, \\"message\\": string, \\"date\\": string, \\"time\\": string}\\n- create_google_calendar_event: {\\"title\\": string}\\n- send_confirmation_email: {\\"to\\": string, \\"subject\\": string, \\"body\\": string} ","options":{}},"type":"@n8n/n8n-nodes-langchain.agent","typeVersion":2.2,"position":[-384,-352],"id":"50f95410-da61-41c7-84a8-69a8a6772c3a","name":"AI Agent"},{"parameters":{"public":true,"options":{}},"type":"@n8n/n8n-nodes-langchain.chatTrigger","typeVersion":1.3,"position":[-704,-352],"id":"f6b80036-c8a6-43e1-97e0-9034b49fe3c7","name":"When chat message received","webhookId":"50b555fd-c209-4f4b-a5b0-7c9b02d535f4"},{"parameters":{"options":{}},"type":"@n8n/n8n-nodes-langchain.lmChatGoogleGemini","typeVersion":1,"position":[-656,-80],"id":"fc5a764a-33bc-40bf-9571-b04b7f60f288","name":"Google Gemini Chat Model","credentials":{"googlePalmApi":{"id":"2CuCJbUJUCOx6wBX","name":"Google Gemini(PaLM) Api account"}}},{"parameters":{"operation":"append","documentId":{"__rl":true,"value":"1l_trNG8N9NSgn3poOGXDwy7Y-UY8U2Pg9yU3dwzmGBI","mode":"list","cachedResultName":"Customer Booking","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1l_trNG8N9NSgn3poOGXDwy7Y-UY8U2Pg9yU3dwzmGBI/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":"gid=0","mode":"list","cachedResultName":"Sheet1","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1l_trNG8N9NSgn3poOGXDwy7Y-UY8U2Pg9yU3dwzmGBI/edit#gid=0"},"columns":{"mappingMode":"defineBelow","value":{"Name":"={{ /*n8n-auto-generated-fromAI-override*/ $fromAI('Name', ``, 'string') }}","Email":"={{ /*n8n-auto-generated-fromAI-override*/ $fromAI('Email', ``, 'string') }}","Message":"={{ /*n8n-auto-generated-fromAI-override*/ $fromAI('Message', ``, 'string') }}","Date":"={{ /*n8n-auto-generated-fromAI-override*/ $fromAI('Date', ``, 'string') }}","Time":"={{ /*n8n-auto-generated-fromAI-override*/ $fromAI('Time', ``, 'string') }}","Status":"={{ /*n8n-auto-generated-fromAI-override*/ $fromAI('Status', ``, 'string') }}"},"matchingColumns":[],"schema":[{"id":"Name","displayName":"Name","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Email","displayName":"Email","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Message","displayName":"Message","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Date","displayName":"Date","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Time","displayName":"Time","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.googleSheetsTool","typeVersion":4.7,"position":[-208,-48],"id":"c2e7fbff-62c9-41f0-997c-b97e5b5f5988","name":"add_to_google_sheet","credentials":{"googleSheetsOAuth2Api":{"id":"o3gL0KyijArFTKh3","name":"Google Sheets account"}}},{"parameters":{"sendTo":"={{ /*n8n-auto-generated-fromAI-override*/ $fromAI('To', ``, 'string') }}","subject":"={{ /*n8n-auto-generated-fromAI-override*/ $fromAI('Subject', ``, 'string') }}","message":"={{ /*n8n-auto-generated-fromAI-override*/ $fromAI('Message', ``, 'string') }}","options":{}},"type":"n8n-nodes-base.gmailTool","typeVersion":2.1,"position":[16,-48],"id":"b01c0520-7017-4619-9352-ba25b5a59b37","name":"Send a message in Gmail","webhookId":"4de782dd-b342-427e-8e53-1a006cd8d64b","credentials":{"gmailOAuth2":{"id":"Vugl1EUivGrZp9Gx","name":"Gmail account 2"}}},{"parameters":{},"type":"@n8n/n8n-nodes-langchain.memoryBufferWindow","typeVersion":1.3,"position":[-464,-80],"id":"43ff417c-14c1-4468-8c43-23a850e20d09","name":"Simple Memory"},{"parameters":{"calendar":{"__rl":true,"value":"4368bfbd6d771d8b8083fc10a7e6d0ae97b06b793c3ca0622cacedcdf82057f7@group.calendar.google.com","mode":"list","cachedResultName":"for customer booking calendar"},"start":"={{ /*n8n-auto-generated-fromAI-override*/ $fromAI('Start', ``, 'string') }}","end":"={{ /*n8n-auto-generated-fromAI-override*/ $fromAI('End', ``, 'string') }}","useDefaultReminders":false,"additionalFields":{}},"type":"n8n-nodes-base.googleCalendarTool","typeVersion":1.3,"position":[240,-32],"id":"944be983-68d6-43b6-917a-00092fde7678","name":"Create an event in Google Calendar","credentials":{"googleCalendarOAuth2Api":{"id":"yyujYkvS9NvqqOTt","name":"Google Calendar account"}}}]	{"When chat message received":{"main":[[{"node":"AI Agent","type":"main","index":0}]]},"Google Gemini Chat Model":{"ai_languageModel":[[{"node":"AI Agent","type":"ai_languageModel","index":0}]]},"add_to_google_sheet":{"ai_tool":[[{"node":"AI Agent","type":"ai_tool","index":0}]]},"AI Agent":{"main":[[]]},"Send a message in Gmail":{"ai_tool":[[{"node":"AI Agent","type":"ai_tool","index":0}]]},"Simple Memory":{"ai_memory":[[{"node":"AI Agent","type":"ai_memory","index":0}]]},"Create an event in Google Calendar":{"ai_tool":[[{"node":"AI Agent","type":"ai_tool","index":0}]]}}	2025-10-27 12:33:06.309+00	2025-10-29 21:21:07.476+00	{"executionOrder":"v1","timezone":"Asia/Singapore","callerPolicy":"workflowsFromSameOwner","availableInMCP":false}	\N	{}	a1606ef3-9c93-4a88-aad0-0e5373a68523	1	TcDc1kBJ1jpWfvii	{"templateCredsSetupCompleted":true}	\N	f
My workflow 5	f	[{"parameters":{},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"1742d8fe-ba86-412d-99e4-20a229adbef1","name":"When clicking ‘Execute workflow’"},{"parameters":{"documentId":{"__rl":true,"value":"1EFVISKc5Hh3SyfmS_BJ3ZKXkFZwz9gJPzEsl0IiAKDE","mode":"list","cachedResultName":"Copy of Lead information","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1EFVISKc5Hh3SyfmS_BJ3ZKXkFZwz9gJPzEsl0IiAKDE/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":1449789433,"mode":"list","cachedResultName":"Customer demographic","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1EFVISKc5Hh3SyfmS_BJ3ZKXkFZwz9gJPzEsl0IiAKDE/edit#gid=1449789433"},"options":{}},"type":"n8n-nodes-base.googleSheets","typeVersion":4.7,"position":[208,0],"id":"dc842f4f-3365-4296-ad4e-fa53150e4588","name":"Get row(s) in sheet","credentials":{"googleSheetsOAuth2Api":{"id":"rTkHdhgpedqDiR9m","name":"Google Sheets account"}}}]	{"When clicking ‘Execute workflow’":{"main":[[{"node":"Get row(s) in sheet","type":"main","index":0}]]}}	2025-09-15 11:30:50.514+00	2025-09-18 12:22:06.356+00	{"executionOrder":"v1"}	\N	{}	ea5531cf-3b33-4205-bb8a-e20fcfd62e8f	0	Gp3nFT5Mxy8vB0p2	{"templateCredsSetupCompleted":true}	\N	t
My workflow 6	f	[{"parameters":{"promptType":"define","text":"=You are an AI agent integrated into an n8n workflow. Your role is to retrieve raw customer data from a Google Sheet named \\"Customer Demographic\\", perform AI-powered analysis to identify patterns, and categorize customers into three segments: Customers in Business (repeat customers), Potential Customers, and Leads at Risk.\\n\\nFor each segment, generate tailored, personalized summaries, insights, and actionable recommendations focused on:\\n\\nCustomers in Business: Retention strategies and relationship-building tactics to drive loyalty and upsell opportunities.\\nPotential Customers: Re-engagement and conversion strategies to nurture leads into paying customers.\\nLeads at Risk: Risk mitigation tactics to minimize wasted effort and reallocate resources efficiently.\\n\\nWhen adding processed data to Google Sheets, do not overwrite any existing rows.\\nInstead, always append new entries as a new row at the bottom of the sheet.\\nEnsure that each new result is added sequentially without modifying or replacing previous data. \\n\\nThe output should add a new row per customer (do not overwrite the output data) to three separate Google Sheets: \\"Repeat Customers\\", \\"Potential Customers\\", and \\"Leads at Risk\\". Ensure all outputs are clear, actionable, data-driven, and aligned with business goals of growth, retention, and conversion. Maintain high data integrity and process efficiently for scalability. The uncategorized customer should be categorize with Leads at Risk as a default.\\n\\n","options":{}},"type":"@n8n/n8n-nodes-langchain.agent","typeVersion":2.2,"position":[-312,-400],"id":"53044231-baa8-4e72-835b-4d6a6627447e","name":"AI Agent"},{"parameters":{},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[-720,-400],"id":"7f129c20-b59a-4257-975d-fb93f216daa2","name":"When clicking ‘Execute workflow’"},{"parameters":{"options":{}},"type":"@n8n/n8n-nodes-langchain.lmChatGoogleGemini","typeVersion":1,"position":[-496,-176],"id":"a87c45f2-4ffe-4fe3-9c66-b47f8078a74b","name":"Google Gemini Chat Model","credentials":{"googlePalmApi":{"id":"2CuCJbUJUCOx6wBX","name":"Google Gemini(PaLM) Api account"}}},{"parameters":{"operation":"append","documentId":{"__rl":true,"value":"1EFVISKc5Hh3SyfmS_BJ3ZKXkFZwz9gJPzEsl0IiAKDE","mode":"list","cachedResultName":"Copy of Lead information","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1EFVISKc5Hh3SyfmS_BJ3ZKXkFZwz9gJPzEsl0IiAKDE/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":5097786,"mode":"list","cachedResultName":"Potential Customers","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1EFVISKc5Hh3SyfmS_BJ3ZKXkFZwz9gJPzEsl0IiAKDE/edit#gid=5097786"},"columns":{"mappingMode":"defineBelow","value":{"Name":"={{ /*n8n-auto-generated-fromAI-override*/ $fromAI('Name', ``, 'string') }}","Email":"={{ /*n8n-auto-generated-fromAI-override*/ $fromAI('Email', ``, 'string') }}","Phone":"={{ /*n8n-auto-generated-fromAI-override*/ $fromAI('Phone', ``, 'string') }}","Sales":"={{ /*n8n-auto-generated-fromAI-override*/ $fromAI('Sales', ``, 'string') }}","AI analysis":"={{ /*n8n-auto-generated-fromAI-override*/ $fromAI('AI_analysis', ``, 'string') }}"},"matchingColumns":[],"schema":[{"id":"Name","displayName":"Name","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true,"removed":false},{"id":"Email","displayName":"Email","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true,"removed":false},{"id":"Phone","displayName":"Phone","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true,"removed":false},{"id":"Sales","displayName":"Sales","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true,"removed":false},{"id":"AI analysis","displayName":"AI analysis","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.googleSheetsTool","typeVersion":4.7,"position":[-368,-176],"id":"f945a8e2-5b92-433b-aff7-00c16b6fbcff","name":"Potential Customers","credentials":{"googleSheetsOAuth2Api":{"id":"o3gL0KyijArFTKh3","name":"Google Sheets account"}}},{"parameters":{"operation":"append","documentId":{"__rl":true,"value":"1EFVISKc5Hh3SyfmS_BJ3ZKXkFZwz9gJPzEsl0IiAKDE","mode":"list","cachedResultName":"Copy of Lead information","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1EFVISKc5Hh3SyfmS_BJ3ZKXkFZwz9gJPzEsl0IiAKDE/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":569436957,"mode":"list","cachedResultName":"Leads at Risk","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1EFVISKc5Hh3SyfmS_BJ3ZKXkFZwz9gJPzEsl0IiAKDE/edit#gid=569436957"},"columns":{"mappingMode":"defineBelow","value":{"Name":"={{ /*n8n-auto-generated-fromAI-override*/ $fromAI('Name', ``, 'string') }}","Email":"={{ /*n8n-auto-generated-fromAI-override*/ $fromAI('Email', ``, 'string') }}","Phone":"={{ /*n8n-auto-generated-fromAI-override*/ $fromAI('Phone', ``, 'string') }}","Sales":"={{ /*n8n-auto-generated-fromAI-override*/ $fromAI('Sales', ``, 'string') }}","AI analysis":"={{ /*n8n-auto-generated-fromAI-override*/ $fromAI('AI_analysis', ``, 'string') }}"},"matchingColumns":[],"schema":[{"id":"Name","displayName":"Name","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true,"removed":false},{"id":"Email","displayName":"Email","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true,"removed":false},{"id":"Phone","displayName":"Phone","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true,"removed":false},{"id":"Sales","displayName":"Sales","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true,"removed":false},{"id":"AI analysis","displayName":"AI analysis","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.googleSheetsTool","typeVersion":4.7,"position":[-240,-176],"id":"2c4e5b46-ee5a-43d7-841e-98e400e6696b","name":"Leads at Risk","credentials":{"googleSheetsOAuth2Api":{"id":"o3gL0KyijArFTKh3","name":"Google Sheets account"}}},{"parameters":{"documentId":{"__rl":true,"value":"1EFVISKc5Hh3SyfmS_BJ3ZKXkFZwz9gJPzEsl0IiAKDE","mode":"list","cachedResultName":"Copy of Lead information","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1EFVISKc5Hh3SyfmS_BJ3ZKXkFZwz9gJPzEsl0IiAKDE/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":1449789433,"mode":"list","cachedResultName":"Customer demographic","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1EFVISKc5Hh3SyfmS_BJ3ZKXkFZwz9gJPzEsl0IiAKDE/edit#gid=1449789433"},"options":{}},"type":"n8n-nodes-base.googleSheetsTool","typeVersion":4.7,"position":[-112,-176],"id":"c3ddec1f-f5ff-4ac1-ace0-c39e7c456f15","name":"Customer demographic","credentials":{"googleSheetsOAuth2Api":{"id":"o3gL0KyijArFTKh3","name":"Google Sheets account"}}},{"parameters":{"operation":"append","documentId":{"__rl":true,"value":"1EFVISKc5Hh3SyfmS_BJ3ZKXkFZwz9gJPzEsl0IiAKDE","mode":"list","cachedResultName":"Copy of Lead information","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1EFVISKc5Hh3SyfmS_BJ3ZKXkFZwz9gJPzEsl0IiAKDE/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":1006430300,"mode":"list","cachedResultName":"Customer in the business","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1EFVISKc5Hh3SyfmS_BJ3ZKXkFZwz9gJPzEsl0IiAKDE/edit#gid=1006430300"},"columns":{"mappingMode":"defineBelow","value":{"Name":"={{ /*n8n-auto-generated-fromAI-override*/ $fromAI('Name', ``, 'string') }}","Email":"={{ /*n8n-auto-generated-fromAI-override*/ $fromAI('Email', ``, 'string') }}","Phone":"={{ /*n8n-auto-generated-fromAI-override*/ $fromAI('Phone', ``, 'string') }}","Sales":"={{ /*n8n-auto-generated-fromAI-override*/ $fromAI('Sales', ``, 'string') }}","AI analysis":"={{ /*n8n-auto-generated-fromAI-override*/ $fromAI('AI_analysis', ``, 'string') }}"},"matchingColumns":[],"schema":[{"id":"Name","displayName":"Name","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Email","displayName":"Email","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Phone","displayName":"Phone","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Sales","displayName":"Sales","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"AI analysis","displayName":"AI analysis","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.googleSheetsTool","typeVersion":4.7,"position":[16,-176],"id":"3f52e5eb-844d-4d00-a0cf-aec46a7efcdc","name":"Customer in the business","credentials":{"googleSheetsOAuth2Api":{"id":"o3gL0KyijArFTKh3","name":"Google Sheets account"}}}]	{"When clicking ‘Execute workflow’":{"main":[[{"node":"AI Agent","type":"main","index":0}]]},"Google Gemini Chat Model":{"ai_languageModel":[[{"node":"AI Agent","type":"ai_languageModel","index":0}]]},"AI Agent":{"main":[[]]},"Potential Customers":{"ai_tool":[[{"node":"AI Agent","type":"ai_tool","index":0}]]},"Leads at Risk":{"ai_tool":[[{"node":"AI Agent","type":"ai_tool","index":0}]]},"Customer demographic":{"ai_tool":[[{"node":"AI Agent","type":"ai_tool","index":0}]]},"Customer in the business":{"ai_tool":[[{"node":"AI Agent","type":"ai_tool","index":0}]]}}	2025-10-06 21:06:42.892+00	2025-10-07 13:41:35.159+00	{"executionOrder":"v1"}	\N	{}	2e72c27a-4099-40a6-98a9-04ea42a3cce3	0	UIutZLI6CFmRCLJr	{"templateCredsSetupCompleted":true}	\N	f
My workflow 7	f	[{"parameters":{},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[-400,-272],"id":"0e875cb8-ac8f-4709-bfe6-7b785e423415","name":"When clicking ‘Execute workflow’"},{"parameters":{"operation":"getAll","returnAll":true,"filters":{}},"type":"n8n-nodes-base.quickbooks","typeVersion":1,"position":[-160,-272],"id":"fd4ade69-865b-43e9-add7-1e805d2d7144","name":"Get many customers","credentials":{"quickBooksOAuth2Api":{"id":"pY7cG33GlwsAymsS","name":"QuickBooks Online account"}}},{"parameters":{"operation":"append","documentId":{"__rl":true,"value":"1qHf2f_F2K9KaymsxckzNiVsQ4fsuWEFQeMfhZl9gBrw","mode":"list","cachedResultName":"n8n - QuickBooks Online  Practice","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1qHf2f_F2K9KaymsxckzNiVsQ4fsuWEFQeMfhZl9gBrw/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":"gid=0","mode":"list","cachedResultName":"Sheet1","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1qHf2f_F2K9KaymsxckzNiVsQ4fsuWEFQeMfhZl9gBrw/edit#gid=0"},"columns":{"mappingMode":"defineBelow","value":{"ID":"={{ $json.Id }}","Name":"={{ $json.GivenName }}","Last name":"={{ $json.FamilyName }}","Company":"={{ $json.CompanyName }}","Balance":"={{ $json.Balance }}","Email Adress":"={{ $json.PrimaryEmailAddr.Address }}"},"matchingColumns":[],"schema":[{"id":"ID","displayName":"ID","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true,"removed":false},{"id":"Name","displayName":"Name","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true,"removed":false},{"id":"Last name","displayName":"Last name","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true,"removed":false},{"id":"Company","displayName":"Company","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true,"removed":false},{"id":"Balance","displayName":"Balance","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true,"removed":false},{"id":"Email Adress","displayName":"Email Adress","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.googleSheets","typeVersion":4.7,"position":[64,-272],"id":"7c31870d-dfe1-4fa5-a44e-b5423afde5ae","name":"Append row in sheet","credentials":{"googleSheetsOAuth2Api":{"id":"o3gL0KyijArFTKh3","name":"Google Sheets account"}}},{"parameters":{"resource":"base","operation":"getSchema","base":{"__rl":true,"value":"appceBdanxaiaaAT2","mode":"list","cachedResultName":"IT Asset Tracker","cachedResultUrl":"https://airtable.com/appceBdanxaiaaAT2"}},"type":"n8n-nodes-base.airtable","typeVersion":2.1,"position":[-704,-208],"id":"b282acd6-4f16-4194-94d0-614aa50a9510","name":"Get base schema","credentials":{"airtableTokenApi":{"id":"asVcrivPTD2PjvM0","name":"Airtable Personal Access Token account"}}},{"parameters":{"eventsUi":{"eventValues":[{"name":"company.creation"}]},"additionalFields":{}},"type":"n8n-nodes-base.hubspotTrigger","typeVersion":1,"position":[-576,0],"id":"35711b02-3b2c-4309-bc84-8b72edbfa541","name":"HubSpot Trigger","webhookId":"8b5876c2-a9f4-4f15-8609-895ce15f8e0b","credentials":{"hubspotDeveloperApi":{"id":"frbHQbI6lXUwm2Iz","name":"HubSpot Developer account"}}},{"parameters":{"authentication":"oAuth2","resource":"company","name":"asdad","additionalFields":{}},"type":"n8n-nodes-base.hubspot","typeVersion":2.2,"position":[-128,-80],"id":"49864c5b-7445-4b5c-be33-3d7dd86cfba0","name":"Create a company","credentials":{"hubspotOAuth2Api":{"id":"JbkdHlQQ6XLLIty7","name":"HubSpot account 2"}}},{"parameters":{"otherOptions":{}},"type":"n8n-nodes-base.slack","typeVersion":2.3,"position":[-688,240],"id":"a8a40ce1-d41c-4bbb-9002-2fdc8710e477","name":"Send a message","webhookId":"c97f260b-e8b3-42e4-8dcd-29ca451bfe77"},{"parameters":{"trigger":["any_event"],"channelId":{"__rl":true,"mode":"list","value":""},"options":{}},"type":"n8n-nodes-base.slackTrigger","typeVersion":1,"position":[-720,480],"id":"18ccf583-a193-4bbc-ba73-53006fa7fad0","name":"Slack Trigger","webhookId":"6594dc35-02a2-41ba-9419-f9236c334e0d"}]	{"When clicking ‘Execute workflow’":{"main":[[{"node":"Get many customers","type":"main","index":0}]]},"Get many customers":{"main":[[{"node":"Append row in sheet","type":"main","index":0}]]},"HubSpot Trigger":{"main":[[]]}}	2025-10-25 12:23:54.561+00	2025-10-25 14:26:11.749+00	{"executionOrder":"v1"}	\N	{}	49ca37b4-59c4-4da9-9136-8c19ccf88893	0	lS2swzVkegeU0Jjg	{"templateCredsSetupCompleted":true}	\N	f
AI Social Media Content	f	[{"parameters":{"rule":{"interval":[{"triggerAtHour":7}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.2,"position":[-592,0],"id":"644c5efb-d0c7-4c05-a7ad-f34cdf7c452f","name":"Schedule Trigger"},{"parameters":{"promptType":"define","text":"You are an AI agent tasked with generating a unique 5-word inspirational daily quote. Follow these steps precisely:\\n\\n1. Access the attached spreadsheet (assume it's named 'DailyQuotes.xlsx' or similar; if not, use the default attached file).\\n\\n2. Read all existing quotes from Column A (or the primary quote column) in the spreadsheet rows.\\n\\n3. Generate a new inspirational quote that is exactly 5 words long. Ensure it's positive, motivational, and original.\\n\\n4. Check if the generated quote exactly matches any existing quote in the spreadsheet. Also, check for similarity: if it's semantically very close (e.g., same meaning with minor word changes) to any existing quote, consider it a duplicate.\\n\\n5. If it's a duplicate or similar, discard it and repeat step 3 to generate a new one. Continue until you have a unique quote.\\n\\n6. Once you have a unique quote, append it as a new row in the spreadsheet (e.g., in Column A for the quote, and optionally Column B for the date).\\n\\n7. Output only the final unique quote to the user, without additional text.","options":{}},"type":"@n8n/n8n-nodes-langchain.agent","typeVersion":2.2,"position":[-368,0],"id":"1174b0f0-ceda-40bd-89b4-e82c204f2529","name":"Generate Qoute"},{"parameters":{"options":{}},"type":"@n8n/n8n-nodes-langchain.lmChatGoogleGemini","typeVersion":1,"position":[-32,-208],"id":"4913ed86-791d-4e0a-8675-11abca43f688","name":"Google Gemini Chat Model","credentials":{"googlePalmApi":{"id":"2CuCJbUJUCOx6wBX","name":"Google Gemini(PaLM) Api account"}}},{"parameters":{"cityName":"General Santos, PH"},"type":"n8n-nodes-base.openWeatherMap","typeVersion":1,"position":[-48,0],"id":"07036723-a4d6-4f6d-a05d-3286fa5aaa4c","name":"OpenWeatherMap","credentials":{"openWeatherMapApi":{"id":"qNbjIsLUBt9HpEJI","name":"OpenWeatherMap account"}}},{"parameters":{"promptType":"define","text":"=You are an AI agent tasked with generating a unique 17-word explanation of the meaning of \\"{{ $json.weather[0].description }}\\" for a weather forecast Facebook post. You will also obtain an image URL related to \\"{{ $json.weather[0].description }}\\" from a connected tool, ensure it's unique, and save both to the spreadsheet. Follow these steps precisely:\\n\\n1. Access the attached spreadsheet (assume it's named 'WeatherExplanations.xlsx' or similar; if not, use the default attached file).\\n\\n2. Read all existing explanations from Column A and image URLs from Column B in the spreadsheet rows.\\n\\n3. Generate a new explanation that is exactly 17 words long. Ensure it's informative, engaging, and suitable for a Facebook weather post. Make it original and focused on the meteorological meaning of \\"{{ $json.weather[0].description }}\\".\\n\\n4. Check if the generated explanation exactly matches any existing explanation in the spreadsheet. Also, check for similarity: if it's semantically very close (e.g., same meaning with minor word changes) to any existing explanation, consider it a duplicate.\\n\\n5. If it's a duplicate or similar, discard it and repeat step 3 to generate a new one. Continue until you have a unique explanation.\\n\\n6. Use the connected tool to obtain an image URL representing \\"{{ $json.weather[0].description }}\\" (e.g., a stock photo or illustration of partly cloudy skies).\\n\\n7. Check if the obtained image URL exactly matches any existing URL in the spreadsheet.\\n\\n8. If the URL is already existing, use the tool to obtain a new, different image URL and repeat the check until you have a unique URL.\\n\\n9. Once you have a unique explanation and a unique image URL, append them as a new row in the spreadsheet (e.g., Column A for the explanation, Column B for the image URL, and optionally Column C for the date).\\n\\n10. Output only the final unique explanation to the user, without additional text in JSON format.\\n\\nExample Output:\\n{\\n\\"imageUrl\\": \\"https://www.publicdomainpictures.net/pictures/300000/1000/sky-with-a-few-clouds.jpg\\"\\n\\"weatherForecast\\": \\"Few clouds mean a mostly clear sky with small, scattered clouds allowing plenty of sunshine.\\"\\n}","hasOutputParser":true,"options":{}},"type":"@n8n/n8n-nodes-langchain.agent","typeVersion":2.2,"position":[160,0],"id":"16f4349a-45df-4936-9a47-6e69c47e23a5","name":"AI Agent"},{"parameters":{"documentId":{"__rl":true,"value":"1KWEffaTxNVCAWJHCJI161TOsltaQndSmPS_LDBwuUo4","mode":"list","cachedResultName":"AI Social Media Content Creator","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1KWEffaTxNVCAWJHCJI161TOsltaQndSmPS_LDBwuUo4/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":64357767,"mode":"list","cachedResultName":"Sheet2","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1KWEffaTxNVCAWJHCJI161TOsltaQndSmPS_LDBwuUo4/edit#gid=64357767"},"options":{}},"type":"n8n-nodes-base.googleSheetsTool","typeVersion":4.7,"position":[288,288],"id":"a2afc01f-9fe4-4dc5-b295-3a8161c1ff0f","name":"Check if image URL is already used","credentials":{"googleSheetsOAuth2Api":{"id":"o3gL0KyijArFTKh3","name":"Google Sheets account"}}},{"parameters":{"documentId":{"__rl":true,"value":"1KWEffaTxNVCAWJHCJI161TOsltaQndSmPS_LDBwuUo4","mode":"list","cachedResultName":"AI Social Media Content Creator","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1KWEffaTxNVCAWJHCJI161TOsltaQndSmPS_LDBwuUo4/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":"gid=0","mode":"list","cachedResultName":"Sheet1","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1KWEffaTxNVCAWJHCJI161TOsltaQndSmPS_LDBwuUo4/edit#gid=0"},"options":{}},"type":"n8n-nodes-base.googleSheetsTool","typeVersion":4.7,"position":[-304,240],"id":"b212c319-2c15-4095-bb42-a5cd404ac7e7","name":"Check if qoute is already used","credentials":{"googleSheetsOAuth2Api":{"id":"o3gL0KyijArFTKh3","name":"Google Sheets account"}}},{"parameters":{"operation":"append","documentId":{"__rl":true,"value":"1KWEffaTxNVCAWJHCJI161TOsltaQndSmPS_LDBwuUo4","mode":"list","cachedResultName":"AI Social Media Content Creator","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1KWEffaTxNVCAWJHCJI161TOsltaQndSmPS_LDBwuUo4/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":"gid=0","mode":"list","cachedResultName":"Sheet1","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1KWEffaTxNVCAWJHCJI161TOsltaQndSmPS_LDBwuUo4/edit#gid=0"},"columns":{"mappingMode":"defineBelow","value":{"Caption":"={{ /*n8n-auto-generated-fromAI-override*/ $fromAI('Caption', ``, 'string') }}","Date Posted":"={{ $json['Readable date'] }}"},"matchingColumns":[],"schema":[{"id":"Caption","displayName":"Caption","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Date Posted","displayName":"Date Posted","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.googleSheetsTool","typeVersion":4.7,"position":[-160,240],"id":"8e9f3aa3-dbc4-41e5-bdec-72579ecf4e9b","name":"Save Qoute","credentials":{"googleSheetsOAuth2Api":{"id":"o3gL0KyijArFTKh3","name":"Google Sheets account"}}},{"parameters":{"operation":"append","documentId":{"__rl":true,"value":"1KWEffaTxNVCAWJHCJI161TOsltaQndSmPS_LDBwuUo4","mode":"list","cachedResultName":"AI Social Media Content Creator","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1KWEffaTxNVCAWJHCJI161TOsltaQndSmPS_LDBwuUo4/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":64357767,"mode":"list","cachedResultName":"Sheet2","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1KWEffaTxNVCAWJHCJI161TOsltaQndSmPS_LDBwuUo4/edit#gid=64357767"},"columns":{"mappingMode":"defineBelow","value":{"ImageURL":"={{ /*n8n-auto-generated-fromAI-override*/ $fromAI('ImageURL', ``, 'string') }}"},"matchingColumns":["ImageURL"],"schema":[{"id":"ImageURL","displayName":"ImageURL","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.googleSheetsTool","typeVersion":4.7,"position":[448,288],"id":"28c3753c-06ea-4565-b85e-22af0f222b5a","name":"Save Image","credentials":{"googleSheetsOAuth2Api":{"id":"o3gL0KyijArFTKh3","name":"Google Sheets account"}}},{"parameters":{"jsonSchemaExample":"{\\n\\"imageUrl\\": \\"https://www.publicdomainpictures.net/pictures/300000/1000/sky-with-a-few-clouds.jpg\\",\\n\\"weatherForecast\\": \\"Few clouds mean a mostly clear sky with small, scattered clouds allowing plenty of sunshine.\\"\\n}"},"type":"@n8n/n8n-nodes-langchain.outputParserStructured","typeVersion":1.3,"position":[608,288],"id":"3f1fde43-3d56-41eb-b02f-52d0cfaaf8a4","name":"Structured Output Parser"},{"parameters":{"toolDescription":"=Make a google search with query: {{ $json.weather[0].description }}","url":"https://customsearch.googleapis.com/customsearch/v1","sendQuery":true,"queryParameters":{"parameters":[{"name":"key","value":"AIzaSyAKSPV1_mh_iUEtrvuTbwg7bLhAs-sDIAw"},{"name":"cx","value":"93daa8a966691469f"},{"name":"sort","value":"date"},{"name":"q","value":"={{ /*n8n-auto-generated-fromAI-override*/ $fromAI('parameters3_Value', `Create a custom search parameter for a weather forecast you will generate base in the weather description find in the openweathermap.`, 'string') }}"}]},"options":{}},"type":"n8n-nodes-base.httpRequestTool","typeVersion":4.2,"position":[112,288],"id":"0857f38f-3892-467d-95b7-5f83641f8f49","name":"ImageBackground"},{"parameters":{"method":"POST","url":"https://api.imejis.io/api/designs/MAZ-qj7lmQB4TEca47Un0","sendHeaders":true,"headerParameters":{"parameters":[{"name":"dma-api-key","value":"GAJoAlOq6JLJ0mbvcT30J"},{"name":"Content-Type","value":"application/json"}]},"sendBody":true,"specifyBody":"json","jsonBody":"={\\n  \\"background\\": \\"{{ $json.output.imageUrl }}\\",\\n  \\"backgroundImageUrl\\": \\"\\",\\n  \\"rect_1f93bd0f-b076-4008-9785-127c101c8ffc\\": \\"#3d3d3d\\",\\n  \\"city\\": \\"{{ $('OpenWeatherMap').item.json.name }}, {{ $('OpenWeatherMap').item.json.sys.country }}\\",\\n  \\"temperature\\": \\"{{ $('OpenWeatherMap').item.json.main.temp.toFixed() }}°C\\",\\n  \\"weather forecast\\": \\"{{ $json.output.weatherForecast }}\\",\\n  \\"qoute\\": \\"{{ $('Generate Qoute').item.json.output }}\\"\\n}","options":{}},"type":"n8n-nodes-base.httpRequest","typeVersion":4.2,"position":[624,0],"id":"e74e801e-2178-406b-af2c-5e623c003449","name":"Generate Final Image"},{"parameters":{"httpRequestMethod":"POST","graphApiVersion":"v23.0","node":"me","edge":"photos","sendBinaryData":true,"binaryPropertyName":"data","options":{"queryParameters":{"parameter":[{"name":"message","value":"=\\"This is an automated social media post using n8n\\""}]}}},"type":"n8n-nodes-base.facebookGraphApi","typeVersion":1,"position":[848,0],"id":"dff625d2-2b3c-40c4-ada3-b428aec4b001","name":"Facebook Graph API","credentials":{"facebookGraphApi":{"id":"NlGQmL390hyTfNkF","name":"Unnamed credential"}}}]	{"Schedule Trigger":{"main":[[{"node":"Generate Qoute","type":"main","index":0}]]},"Google Gemini Chat Model":{"ai_languageModel":[[{"node":"Generate Qoute","type":"ai_languageModel","index":0},{"node":"AI Agent","type":"ai_languageModel","index":0}]]},"Generate Qoute":{"main":[[{"node":"OpenWeatherMap","type":"main","index":0}]]},"OpenWeatherMap":{"main":[[{"node":"AI Agent","type":"main","index":0}]]},"Check if image URL is already used":{"ai_tool":[[{"node":"AI Agent","type":"ai_tool","index":0}]]},"Check if qoute is already used":{"ai_tool":[[{"node":"Generate Qoute","type":"ai_tool","index":0}]]},"Save Qoute":{"ai_tool":[[{"node":"Generate Qoute","type":"ai_tool","index":0}]]},"Save Image":{"ai_tool":[[{"node":"AI Agent","type":"ai_tool","index":0}]]},"Structured Output Parser":{"ai_outputParser":[[{"node":"AI Agent","type":"ai_outputParser","index":0}]]},"ImageBackground":{"ai_tool":[[{"node":"AI Agent","type":"ai_tool","index":0}]]},"AI Agent":{"main":[[{"node":"Generate Final Image","type":"main","index":0}]]},"Generate Final Image":{"main":[[{"node":"Facebook Graph API","type":"main","index":0}]]}}	2025-10-05 04:20:07.623+00	2025-10-22 10:24:00.496+00	{"executionOrder":"v1","timezone":"Asia/Singapore","callerPolicy":"workflowsFromSameOwner"}	{"node:Schedule Trigger":{"recurrenceRules":[]}}	{}	bc29eda0-3bd8-44d5-afce-cf1b9d177373	1	a9szlrQBELM41VLk	{"templateCredsSetupCompleted":true}	\N	f
My workflow 7	f	[{"parameters":{},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"0e875cb8-ac8f-4709-bfe6-7b785e423415","name":"When clicking ‘Execute workflow’"},{"parameters":{"resource":"__CUSTOM_API_CALL__"},"type":"n8n-nodes-base.quickbooks","typeVersion":1,"position":[208,0],"id":"cb0f8e0a-8480-49a8-94a3-860062e89184","name":"QuickBooks Online","credentials":{"quickBooksOAuth2Api":{"id":"pY7cG33GlwsAymsS","name":"QuickBooks Online account"}}}]	{"When clicking ‘Execute workflow’":{"main":[[{"node":"QuickBooks Online","type":"main","index":0}]]}}	2025-10-25 12:23:52.774+00	2025-10-27 12:25:43.713+00	{"executionOrder":"v1"}	\N	{}	c7876b95-2e54-415d-a50c-08cbdd6e8f7b	0	gPFk43OJPOEF13xw	{"templateCredsSetupCompleted":true}	\N	t
My workflow 8	f	[{"parameters":{"path":"67df26e1-3c42-4f73-a566-1457bfc1f086","options":{}},"type":"n8n-nodes-base.webhook","typeVersion":2.1,"position":[0,0],"id":"586ec414-7b94-46ff-925a-67cad4966c21","name":"Webhook","webhookId":"67df26e1-3c42-4f73-a566-1457bfc1f086"}]	{}	2025-10-27 12:33:02.662+00	2025-10-28 11:33:26.271+00	{"executionOrder":"v1"}	\N	{}	d42329f6-72d2-4c9c-b675-75d98ada8ab2	0	jVqcK7FSG34yWerz	{"templateCredsSetupCompleted":true}	\N	t
\.


--
-- Data for Name: execution_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_entity" ("id", "finished", "mode", "retryOf", "retrySuccessId", "startedAt", "stoppedAt", "waitTill", "status", "workflowId", "deletedAt", "createdAt") FROM stdin;
\.


--
-- Data for Name: execution_annotations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_annotations" ("id", "executionId", "vote", "note", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: execution_annotation_tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_annotation_tags" ("annotationId", "tagId") FROM stdin;
\.


--
-- Data for Name: execution_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_data" ("executionId", "workflowData", "data") FROM stdin;
\.


--
-- Data for Name: execution_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_metadata" ("id", "executionId", "key", "value") FROM stdin;
\.


--
-- Data for Name: tag_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."tag_entity" ("name", "createdAt", "updatedAt", "id") FROM stdin;
\.


--
-- Data for Name: folder_tag; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."folder_tag" ("folderId", "tagId") FROM stdin;
\.


--
-- Data for Name: insights_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."insights_metadata" ("metaId", "workflowId", "projectId", "workflowName", "projectName") FROM stdin;
1	a9szlrQBELM41VLk	Gqyvau1J0jhxsayS	AI Social Media Content	Keith Walter Torreblanca <keithergt@gmail.com>
\.


--
-- Data for Name: insights_by_period; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."insights_by_period" ("id", "metaId", "type", "value", "periodUnit", "periodStart") FROM stdin;
1	1	1	98289	0	2025-10-06 11:00:00+00
2	1	2	1	0	2025-10-06 11:00:00+00
3	1	1	53666	0	2025-10-06 23:00:00+00
4	1	2	1	0	2025-10-06 23:00:00+00
\.


--
-- Data for Name: insights_raw; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."insights_raw" ("id", "metaId", "type", "value", "timestamp") FROM stdin;
\.


--
-- Data for Name: installed_packages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."installed_packages" ("packageName", "installedVersion", "authorName", "authorEmail", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: installed_nodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."installed_nodes" ("name", "type", "latestVersion", "package") FROM stdin;
\.


--
-- Data for Name: invalid_auth_token; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."invalid_auth_token" ("token", "expiresAt") FROM stdin;
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."migrations" ("id", "timestamp", "name") FROM stdin;
1	1587669153312	InitialMigration1587669153312
2	1589476000887	WebhookModel1589476000887
3	1594828256133	CreateIndexStoppedAt1594828256133
4	1607431743768	MakeStoppedAtNullable1607431743768
5	1611144599516	AddWebhookId1611144599516
6	1617270242566	CreateTagEntity1617270242566
7	1620824779533	UniqueWorkflowNames1620824779533
8	1626176912946	AddwaitTill1626176912946
9	1630419189837	UpdateWorkflowCredentials1630419189837
10	1644422880309	AddExecutionEntityIndexes1644422880309
11	1646834195327	IncreaseTypeVarcharLimit1646834195327
12	1646992772331	CreateUserManagement1646992772331
13	1648740597343	LowerCaseUserEmail1648740597343
14	1652254514002	CommunityNodes1652254514002
15	1652367743993	AddUserSettings1652367743993
16	1652905585850	AddAPIKeyColumn1652905585850
17	1654090467022	IntroducePinData1654090467022
18	1658932090381	AddNodeIds1658932090381
19	1659902242948	AddJsonKeyPinData1659902242948
20	1660062385367	CreateCredentialsUserRole1660062385367
21	1663755770893	CreateWorkflowsEditorRole1663755770893
22	1664196174001	WorkflowStatistics1664196174001
23	1665484192212	CreateCredentialUsageTable1665484192212
24	1665754637025	RemoveCredentialUsageTable1665754637025
25	1669739707126	AddWorkflowVersionIdColumn1669739707126
26	1669823906995	AddTriggerCountColumn1669823906995
27	1671535397530	MessageEventBusDestinations1671535397530
28	1671726148421	RemoveWorkflowDataLoadedFlag1671726148421
29	1673268682475	DeleteExecutionsWithWorkflows1673268682475
30	1674138566000	AddStatusToExecutions1674138566000
31	1674509946020	CreateLdapEntities1674509946020
32	1675940580449	PurgeInvalidWorkflowConnections1675940580449
33	1676996103000	MigrateExecutionStatus1676996103000
34	1677236854063	UpdateRunningExecutionStatus1677236854063
35	1677501636754	CreateVariables1677501636754
36	1679416281778	CreateExecutionMetadataTable1679416281778
37	1681134145996	AddUserActivatedProperty1681134145996
38	1681134145997	RemoveSkipOwnerSetup1681134145997
39	1690000000000	MigrateIntegerKeysToString1690000000000
40	1690000000020	SeparateExecutionData1690000000020
41	1690000000030	RemoveResetPasswordColumns1690000000030
42	1690000000030	AddMfaColumns1690000000030
43	1690787606731	AddMissingPrimaryKeyOnExecutionData1690787606731
44	1691088862123	CreateWorkflowNameIndex1691088862123
45	1692967111175	CreateWorkflowHistoryTable1692967111175
46	1693491613982	ExecutionSoftDelete1693491613982
47	1693554410387	DisallowOrphanExecutions1693554410387
48	1694091729095	MigrateToTimestampTz1694091729095
49	1695128658538	AddWorkflowMetadata1695128658538
50	1695829275184	ModifyWorkflowHistoryNodesAndConnections1695829275184
51	1700571993961	AddGlobalAdminRole1700571993961
52	1695829275184	ModifyWorkflowHistoryNodesAndConnections1695829275184
53	1705429061930	DropRoleMapping1705429061930
54	1711018413374	RemoveFailedExecutionStatus1711018413374
55	1711390882123	MoveSshKeysToDatabase1711390882123
56	1712044305787	RemoveNodesAccess1712044305787
57	1714133768519	CreateProject1714133768519
58	1714133768521	MakeExecutionStatusNonNullable1714133768521
59	1717498465931	AddActivatedAtUserSetting1717498465931
60	1720101653148	AddConstraintToExecutionMetadata1720101653148
61	1721377157740	FixExecutionMetadataSequence1721377157740
62	1723627610222	CreateInvalidAuthTokenTable1723627610222
63	1723796243146	RefactorExecutionIndices1723796243146
64	1724753530828	CreateAnnotationTables1724753530828
65	1724951148974	AddApiKeysTable1724951148974
66	1726606152711	CreateProcessedDataTable1726606152711
67	1727427440136	SeparateExecutionCreationFromStart1727427440136
68	1728659839644	AddMissingPrimaryKeyOnAnnotationTagMapping1728659839644
69	1729607673464	UpdateProcessedDataValueColumnToText1729607673464
70	1729607673469	AddProjectIcons1729607673469
71	1730386903556	CreateTestDefinitionTable1730386903556
72	1731404028106	AddDescriptionToTestDefinition1731404028106
73	1731582748663	MigrateTestDefinitionKeyToString1731582748663
74	1732271325258	CreateTestMetricTable1732271325258
75	1732549866705	CreateTestRun1732549866705
76	1733133775640	AddMockedNodesColumnToTestDefinition1733133775640
77	1734479635324	AddManagedColumnToCredentialsTable1734479635324
78	1736172058779	AddStatsColumnsToTestRun1736172058779
79	1736947513045	CreateTestCaseExecutionTable1736947513045
80	1737715421462	AddErrorColumnsToTestRuns1737715421462
81	1738709609940	CreateFolderTable1738709609940
82	1739549398681	CreateAnalyticsTables1739549398681
83	1740445074052	UpdateParentFolderIdColumn1740445074052
84	1741167584277	RenameAnalyticsToInsights1741167584277
85	1742918400000	AddScopesColumnToApiKeys1742918400000
86	1745322634000	ClearEvaluation1745322634000
87	1745587087521	AddWorkflowStatisticsRootCount1745587087521
88	1745934666076	AddWorkflowArchivedColumn1745934666076
89	1745934666077	DropRoleTable1745934666077
90	1747824239000	AddProjectDescriptionColumn1747824239000
91	1750252139166	AddLastActiveAtColumnToUser1750252139166
92	1752669793000	AddInputsOutputsToTestCaseExecution1752669793000
93	1750252139166	AddScopeTables1750252139166
94	1750252139167	AddRolesTables1750252139167
95	1750252139168	LinkRoleToUserTable1750252139168
96	1750252139170	RemoveOldRoleColumn1750252139170
97	1753953244168	LinkRoleToProjectRelationTable1753953244168
98	1754475614601	CreateDataStoreTables1754475614601
99	1754475614602	ReplaceDataStoreTablesWithDataTables1754475614602
100	1756906557570	AddTimestampsToRoleAndRoleIndexes1756906557570
\.


--
-- Data for Name: processed_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."processed_data" ("workflowId", "context", "createdAt", "updatedAt", "value") FROM stdin;
\.


--
-- Data for Name: project_relation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."project_relation" ("projectId", "userId", "role", "createdAt", "updatedAt") FROM stdin;
Gqyvau1J0jhxsayS	f72059c4-d73c-460f-b3d9-5c2e1e562c80	project:personalOwner	2025-08-25 06:56:24.731+00	2025-08-25 06:56:24.731+00
\.


--
-- Data for Name: scope; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."scope" ("slug", "displayName", "description") FROM stdin;
annotationTag:create	Create Annotation Tag	Allows creating new annotation tags.
annotationTag:read	annotationTag:read	\N
annotationTag:update	annotationTag:update	\N
annotationTag:delete	annotationTag:delete	\N
annotationTag:list	annotationTag:list	\N
annotationTag:*	annotationTag:*	\N
auditLogs:manage	auditLogs:manage	\N
auditLogs:*	auditLogs:*	\N
banner:dismiss	banner:dismiss	\N
banner:*	banner:*	\N
community:register	community:register	\N
community:*	community:*	\N
communityPackage:install	communityPackage:install	\N
communityPackage:uninstall	communityPackage:uninstall	\N
communityPackage:update	communityPackage:update	\N
communityPackage:list	communityPackage:list	\N
communityPackage:manage	communityPackage:manage	\N
communityPackage:*	communityPackage:*	\N
credential:share	credential:share	\N
credential:move	credential:move	\N
credential:create	credential:create	\N
credential:read	credential:read	\N
credential:update	credential:update	\N
credential:delete	credential:delete	\N
credential:list	credential:list	\N
credential:*	credential:*	\N
externalSecretsProvider:sync	externalSecretsProvider:sync	\N
externalSecretsProvider:create	externalSecretsProvider:create	\N
externalSecretsProvider:read	externalSecretsProvider:read	\N
externalSecretsProvider:update	externalSecretsProvider:update	\N
externalSecretsProvider:delete	externalSecretsProvider:delete	\N
externalSecretsProvider:list	externalSecretsProvider:list	\N
externalSecretsProvider:*	externalSecretsProvider:*	\N
externalSecret:list	externalSecret:list	\N
externalSecret:use	externalSecret:use	\N
externalSecret:*	externalSecret:*	\N
eventBusDestination:test	eventBusDestination:test	\N
eventBusDestination:create	eventBusDestination:create	\N
eventBusDestination:read	eventBusDestination:read	\N
eventBusDestination:update	eventBusDestination:update	\N
eventBusDestination:delete	eventBusDestination:delete	\N
eventBusDestination:list	eventBusDestination:list	\N
eventBusDestination:*	eventBusDestination:*	\N
ldap:sync	ldap:sync	\N
ldap:manage	ldap:manage	\N
ldap:*	ldap:*	\N
license:manage	license:manage	\N
license:*	license:*	\N
logStreaming:manage	logStreaming:manage	\N
logStreaming:*	logStreaming:*	\N
orchestration:read	orchestration:read	\N
orchestration:list	orchestration:list	\N
orchestration:*	orchestration:*	\N
project:create	project:create	\N
project:read	project:read	\N
project:update	project:update	\N
project:delete	project:delete	\N
project:list	project:list	\N
project:*	project:*	\N
saml:manage	saml:manage	\N
saml:*	saml:*	\N
securityAudit:generate	securityAudit:generate	\N
securityAudit:*	securityAudit:*	\N
sourceControl:pull	sourceControl:pull	\N
sourceControl:push	sourceControl:push	\N
sourceControl:manage	sourceControl:manage	\N
sourceControl:*	sourceControl:*	\N
tag:create	tag:create	\N
tag:read	tag:read	\N
tag:update	tag:update	\N
tag:delete	tag:delete	\N
tag:list	tag:list	\N
tag:*	tag:*	\N
user:resetPassword	user:resetPassword	\N
user:changeRole	user:changeRole	\N
user:enforceMfa	user:enforceMfa	\N
user:create	user:create	\N
user:read	user:read	\N
user:update	user:update	\N
user:delete	user:delete	\N
user:list	user:list	\N
user:*	user:*	\N
variable:create	variable:create	\N
variable:read	variable:read	\N
variable:update	variable:update	\N
variable:delete	variable:delete	\N
variable:list	variable:list	\N
variable:*	variable:*	\N
workersView:manage	workersView:manage	\N
workersView:*	workersView:*	\N
workflow:share	workflow:share	\N
workflow:execute	workflow:execute	\N
workflow:move	workflow:move	\N
workflow:activate	workflow:activate	\N
workflow:deactivate	workflow:deactivate	\N
workflow:create	workflow:create	\N
workflow:read	workflow:read	\N
workflow:update	workflow:update	\N
workflow:delete	workflow:delete	\N
workflow:list	workflow:list	\N
workflow:*	workflow:*	\N
folder:create	folder:create	\N
folder:read	folder:read	\N
folder:update	folder:update	\N
folder:delete	folder:delete	\N
folder:list	folder:list	\N
folder:move	folder:move	\N
folder:*	folder:*	\N
insights:list	insights:list	\N
insights:*	insights:*	\N
oidc:manage	oidc:manage	\N
oidc:*	oidc:*	\N
dataStore:create	dataStore:create	\N
dataStore:read	dataStore:read	\N
dataStore:update	dataStore:update	\N
dataStore:delete	dataStore:delete	\N
dataStore:list	dataStore:list	\N
dataStore:readRow	dataStore:readRow	\N
dataStore:writeRow	dataStore:writeRow	\N
dataStore:listProject	dataStore:listProject	\N
dataStore:*	dataStore:*	\N
execution:delete	execution:delete	\N
execution:read	execution:read	\N
execution:retry	execution:retry	\N
execution:list	execution:list	\N
execution:get	execution:get	\N
execution:*	execution:*	\N
workflowTags:update	workflowTags:update	\N
workflowTags:list	workflowTags:list	\N
workflowTags:*	workflowTags:*	\N
role:manage	role:manage	\N
role:*	role:*	\N
*	*	\N
\.


--
-- Data for Name: role_scope; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."role_scope" ("roleSlug", "scopeSlug") FROM stdin;
global:owner	annotationTag:create
global:owner	annotationTag:read
global:owner	annotationTag:update
global:owner	annotationTag:delete
global:owner	annotationTag:list
global:owner	auditLogs:manage
global:owner	banner:dismiss
global:owner	community:register
global:owner	communityPackage:install
global:owner	communityPackage:uninstall
global:owner	communityPackage:update
global:owner	communityPackage:list
global:owner	credential:share
global:owner	credential:move
global:owner	credential:create
global:owner	credential:read
global:owner	credential:update
global:owner	credential:delete
global:owner	credential:list
global:owner	externalSecretsProvider:sync
global:owner	externalSecretsProvider:create
global:owner	externalSecretsProvider:read
global:owner	externalSecretsProvider:update
global:owner	externalSecretsProvider:delete
global:owner	externalSecretsProvider:list
global:owner	externalSecret:list
global:owner	externalSecret:use
global:owner	eventBusDestination:test
global:owner	eventBusDestination:create
global:owner	eventBusDestination:read
global:owner	eventBusDestination:update
global:owner	eventBusDestination:delete
global:owner	eventBusDestination:list
global:owner	ldap:sync
global:owner	ldap:manage
global:owner	license:manage
global:owner	logStreaming:manage
global:owner	orchestration:read
global:owner	project:create
global:owner	project:read
global:owner	project:update
global:owner	project:delete
global:owner	project:list
global:owner	saml:manage
global:owner	securityAudit:generate
global:owner	sourceControl:pull
global:owner	sourceControl:push
global:owner	sourceControl:manage
global:owner	tag:create
global:owner	tag:read
global:owner	tag:update
global:owner	tag:delete
global:owner	tag:list
global:owner	user:resetPassword
global:owner	user:changeRole
global:owner	user:enforceMfa
global:owner	user:create
global:owner	user:read
global:owner	user:update
global:owner	user:delete
global:owner	user:list
global:owner	variable:create
global:owner	variable:read
global:owner	variable:update
global:owner	variable:delete
global:owner	variable:list
global:owner	workersView:manage
global:owner	workflow:share
global:owner	workflow:execute
global:owner	workflow:move
global:owner	workflow:create
global:owner	workflow:read
global:owner	workflow:update
global:owner	workflow:delete
global:owner	workflow:list
global:owner	folder:create
global:owner	folder:read
global:owner	folder:update
global:owner	folder:delete
global:owner	folder:list
global:owner	folder:move
global:owner	insights:list
global:owner	oidc:manage
global:owner	dataStore:list
global:owner	role:manage
global:admin	annotationTag:create
global:admin	annotationTag:read
global:admin	annotationTag:update
global:admin	annotationTag:delete
global:admin	annotationTag:list
global:admin	auditLogs:manage
global:admin	banner:dismiss
global:admin	community:register
global:admin	communityPackage:install
global:admin	communityPackage:uninstall
global:admin	communityPackage:update
global:admin	communityPackage:list
global:admin	credential:share
global:admin	credential:move
global:admin	credential:create
global:admin	credential:read
global:admin	credential:update
global:admin	credential:delete
global:admin	credential:list
global:admin	externalSecretsProvider:sync
global:admin	externalSecretsProvider:create
global:admin	externalSecretsProvider:read
global:admin	externalSecretsProvider:update
global:admin	externalSecretsProvider:delete
global:admin	externalSecretsProvider:list
global:admin	externalSecret:list
global:admin	externalSecret:use
global:admin	eventBusDestination:test
global:admin	eventBusDestination:create
global:admin	eventBusDestination:read
global:admin	eventBusDestination:update
global:admin	eventBusDestination:delete
global:admin	eventBusDestination:list
global:admin	ldap:sync
global:admin	ldap:manage
global:admin	license:manage
global:admin	logStreaming:manage
global:admin	orchestration:read
global:admin	project:create
global:admin	project:read
global:admin	project:update
global:admin	project:delete
global:admin	project:list
global:admin	saml:manage
global:admin	securityAudit:generate
global:admin	sourceControl:pull
global:admin	sourceControl:push
global:admin	sourceControl:manage
global:admin	tag:create
global:admin	tag:read
global:admin	tag:update
global:admin	tag:delete
global:admin	tag:list
global:admin	user:resetPassword
global:admin	user:changeRole
global:admin	user:enforceMfa
global:admin	user:create
global:admin	user:read
global:admin	user:update
global:admin	user:delete
global:admin	user:list
global:admin	variable:create
global:admin	variable:read
global:admin	variable:update
global:admin	variable:delete
global:admin	variable:list
global:admin	workersView:manage
global:admin	workflow:share
global:admin	workflow:execute
global:admin	workflow:move
global:admin	workflow:create
global:admin	workflow:read
global:admin	workflow:update
global:admin	workflow:delete
global:admin	workflow:list
global:admin	folder:create
global:admin	folder:read
global:admin	folder:update
global:admin	folder:delete
global:admin	folder:list
global:admin	folder:move
global:admin	insights:list
global:admin	oidc:manage
global:admin	dataStore:list
global:admin	role:manage
global:member	annotationTag:create
global:member	annotationTag:read
global:member	annotationTag:update
global:member	annotationTag:delete
global:member	annotationTag:list
global:member	eventBusDestination:test
global:member	eventBusDestination:list
global:member	tag:create
global:member	tag:read
global:member	tag:update
global:member	tag:list
global:member	user:list
global:member	variable:read
global:member	variable:list
global:member	dataStore:list
project:admin	credential:share
project:admin	credential:move
project:admin	credential:create
project:admin	credential:read
project:admin	credential:update
project:admin	credential:delete
project:admin	credential:list
project:admin	project:read
project:admin	project:update
project:admin	project:delete
project:admin	project:list
project:admin	sourceControl:push
project:admin	workflow:execute
project:admin	workflow:move
project:admin	workflow:create
project:admin	workflow:read
project:admin	workflow:update
project:admin	workflow:delete
project:admin	workflow:list
project:admin	folder:create
project:admin	folder:read
project:admin	folder:update
project:admin	folder:delete
project:admin	folder:list
project:admin	folder:move
project:admin	dataStore:create
project:admin	dataStore:read
project:admin	dataStore:update
project:admin	dataStore:delete
project:admin	dataStore:readRow
project:admin	dataStore:writeRow
project:admin	dataStore:listProject
project:personalOwner	credential:share
project:personalOwner	credential:move
project:personalOwner	credential:create
project:personalOwner	credential:read
project:personalOwner	credential:update
project:personalOwner	credential:delete
project:personalOwner	credential:list
project:personalOwner	project:read
project:personalOwner	project:list
project:personalOwner	workflow:share
project:personalOwner	workflow:execute
project:personalOwner	workflow:move
project:personalOwner	workflow:create
project:personalOwner	workflow:read
project:personalOwner	workflow:update
project:personalOwner	workflow:delete
project:personalOwner	workflow:list
project:personalOwner	folder:create
project:personalOwner	folder:read
project:personalOwner	folder:update
project:personalOwner	folder:delete
project:personalOwner	folder:list
project:personalOwner	folder:move
project:personalOwner	dataStore:create
project:personalOwner	dataStore:read
project:personalOwner	dataStore:update
project:personalOwner	dataStore:delete
project:personalOwner	dataStore:readRow
project:personalOwner	dataStore:writeRow
project:personalOwner	dataStore:listProject
project:editor	credential:create
project:editor	credential:read
project:editor	credential:update
project:editor	credential:delete
project:editor	credential:list
project:editor	project:read
project:editor	project:list
project:editor	workflow:execute
project:editor	workflow:create
project:editor	workflow:read
project:editor	workflow:update
project:editor	workflow:delete
project:editor	workflow:list
project:editor	folder:create
project:editor	folder:read
project:editor	folder:update
project:editor	folder:delete
project:editor	folder:list
project:editor	dataStore:create
project:editor	dataStore:read
project:editor	dataStore:update
project:editor	dataStore:delete
project:editor	dataStore:readRow
project:editor	dataStore:writeRow
project:editor	dataStore:listProject
project:viewer	credential:read
project:viewer	credential:list
project:viewer	project:read
project:viewer	project:list
project:viewer	workflow:read
project:viewer	workflow:list
project:viewer	folder:read
project:viewer	folder:list
project:viewer	dataStore:read
project:viewer	dataStore:readRow
project:viewer	dataStore:listProject
credential:owner	credential:share
credential:owner	credential:move
credential:owner	credential:read
credential:owner	credential:update
credential:owner	credential:delete
credential:user	credential:read
workflow:owner	workflow:share
workflow:owner	workflow:execute
workflow:owner	workflow:move
workflow:owner	workflow:read
workflow:owner	workflow:update
workflow:owner	workflow:delete
workflow:editor	workflow:execute
workflow:editor	workflow:read
workflow:editor	workflow:update
\.


--
-- Data for Name: settings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."settings" ("key", "value", "loadOnStartup") FROM stdin;
ui.banners.dismissed	["V1"]	t
features.ldap	{"loginEnabled":false,"loginLabel":"","connectionUrl":"","allowUnauthorizedCerts":false,"connectionSecurity":"none","connectionPort":389,"baseDn":"","bindingAdminDn":"","bindingAdminPassword":"","firstNameAttribute":"","lastNameAttribute":"","emailAttribute":"","loginIdAttribute":"","ldapIdAttribute":"","userFilter":"","synchronizationEnabled":false,"synchronizationInterval":60,"searchPageSize":0,"searchTimeout":60}	t
features.oidc	{"clientId":"","clientSecret":"","discoveryEndpoint":"","loginEnabled":false}	t
userManagement.authenticationMethod	email	t
features.sourceControl.sshKeys	{"encryptedPrivateKey":"U2FsdGVkX19RNdgkis3TFqxpWTjPxIp16/6jNNUIroxihu/rqc/sM5W/FpPk4P1TlMVUte18AoMzckUpM2ohUid3AI3jeLw8BVemCIznEsngHXl0F4eKyDMp4ls89k3LFzMOvNjcKZq+64rcHS9YwdZiKA6ZsKSEyY65gWOgfoiuWXDuds+kggx7UnBIab0Hu2PXN5G/gD/eJ/q4QjZtbZQL9XH8M862A/o8raHO51e+bfNFg7nEycBD/J7MtXUpph/a24RwjrZsAfHSP6udQUrPNYcFfw4+9mzcBNPoDKTkiCfuL+fDvEAL2rDLmIoNjsNP8dS9QWTkjZK2Phfjrsy8YLO9q4pxJJfulzo+GxofieUn1WcCqHfiXXP1fx44Vdzc9Eya28GVx9B0cbXSmNClivC6IfaaHamnpqIyBv2pX9+Qdo17ULDp6CVylZcQiYT0SnPZQui7w1lxSwPQajLAKVQ+Yq3aohcsjDvt4EJ0kfCq2ozFO8O4pEjzt0JNghxLKAkRJTkY1MdcdxVnBAs6QK0kLsIx78Nj22ovLvE9RLMdeS2p5Eo1WOdEvHev","publicKey":"ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIA4ZLEFkuX9W7Mx16dSNv6PnYAdFkITk4z4wI6DHyc/a n8n deploy key"}	t
features.sourceControl	{"branchName":"main","keyGeneratorType":"ed25519"}	t
userManagement.isInstanceOwnerSetUp	true	t
license.cert	eyJsaWNlbnNlS2V5IjoiLS0tLS1CRUdJTiBMSUNFTlNFIEtFWS0tLS0tXG5YUUkvLzZ3aGlEOWcxN2hzN2RhR0xEMUkxb0pSSVliSWs4UWpsbW9ubmlnMXR2VjFuK0QyM0YvSkpyd3ZUZU9OXG56Y2RvbnQ4YWhBSEdRN25nd3BDbTVsREZZOTlETWMrclBiS3FFVDF4cGJpckJTcFlzclRxSVZNTC9zaW5pVjhLXG5kejl2OE40NDVtYUJoekV3ZjZhL2pNcjZnS0dKUjBUaHZ5a3NSNXhwa0hFc09tTThrRWpBL04zTjZ6UUM5SnhvXG5IdWduQ2EwT01aSFlFRGxYSUJnMzZsUERPd2d4ekJRTTJ4L3JyUncvMUZSc2pBNlUraCtCK0YvVVllbEVHeU1rXG5HNjR5SGs1aGlkTEYyZTNPTXlXYWRtc2hXZ2h3UmUyMC9QMFp3N2hDVkJIbUtPTGE3RGR2ZDZxcmQxK3BUVXJJXG5KYkxkQmxETHZ0cUxKQjYycU1kRXNnPT18fFUyRnNkR1ZrWDE4a2ZFa0p5THFSZmhjVDhTY0hYM3hTN0VDSzM2XG5vOEhYREFPTjh3QzRwSWU0c1V2d1d6K1VFTWIybHFra2ZScHdLWnZvbTdKMWpvUGR3NDZaQ2JBTUw3Uks0ZWZEXG54SjQ0c1g3VFhQOHcrVjNDbDBJWTgxNzNTZFkrb1F1R3pkeUN2MGZ0RGpyVEFRaktSYWRmdHRWMklMN3VOYVByXG5UWXRDZURVOHRxNTZJRCtDTnl5b2lUTktwSnRibnlVZGJzNTJaR3V2Y2pybEMyOUVhVmlkZFU0Q2VOQzUzQmNWXG5TYU1RYXkzZWZrSnpRVmJCNzR5S3cyRlhoNzNaRFlWYmYyQnRESTFrRGFCa2xPZWE1Skp0THVFSVNFdms1aWd0XG5QZlZQSW56UzhFajljL3ZoZjVjekJrMHh0d21qNHB5VllHVmQwQXVkeFNsN2E3MW5rblMrc3l4cWlKN2FnK05rXG44ME9rZGdqN3BuS3lzaDV2VEVIbUo2MkZPTXNEREQvVnhld0RTdkw5ZkVoUlZHVFhSRFhaRTBRSlEyanpVenY1XG43TkpZQ2grNWRxblVtZUFERGxtWGIwUEtmOWEwZDFxZTYxVVhubWo2Ni9ybXZlaUl6NXlGdnRmU2J4Mjh0V0xHXG50bXNlMkhrc0NwTEc2SEg4TVpFWXBWN041aUVsd2wwNkY2TnNubWN0L2JZM1o0UjJGb1F3aXVud2NUeGpLQ1ZuXG5CM01PTEJHVnRITWdheDFIMUZVL3JvK1dJb3pjZGJqendDZHBDOW5RcXVzazlCYnd2OU9tVWNra2djTmRQR3FmXG4vRHFHV1RvcUZVanNsZmJGbnY3THY1eXZMRTBFWElGZEhlQTVPZEZubUFhNzVBUmt3eU5MZmNxUlBmcVRSTlFKXG50N1hCTkNmRUFQbHJVVHFWNjRsK2lvdUdCRFdUMlgzNCs0dnJvdjVMMTcvZ1JzcUQ0VktpQVZLSkJwME9EN1Q1XG5EOGl5OU9VZVNaOWVmK05oakp6UjdLckM3eEkwdDFEVVhqRS9CRHB5VTh4WUFXNVBpaWVSL2FhV3lWQkJGcU1XXG5mQ3ZJcWNGQTZWQ3UzRElkTjVQTXBydWRjN1NaRmp3KzBBRzVEcHltNTJ3b0NURDA3M29CQzBaQ2pSaldneDNiXG5XVDh2Q3NRR2NCdXNFdFhXMmhDQW1hY2VHNzZBTmNoMHlVZlBIZklVY2VxcUJCSjVvZ1VONnZVUDJPVmlYZGxrXG5DTW5NbDZwK1hqTUVjZFNoTTVQbk5ZTFBIQkxGN3BtUnNEODczWmVwK2RubGI2UkFJOE02RkZNZUoyOGVCZWpJXG4wYmRDMFFFaGIwOXFuUXkwS3NjT2ZXMlB6YTREK0RESWZLNllsZGl4YThUcE9LVXdlbXVhTnlhc2tobVozR2ppXG5ZYngrRjdOdXJjRFEwRGNWT0hPUlZXNzV5K2lTMjNaZlluWlhGUEVXeEhCS1NuOSt1bnlYVGdFblVXL09UU1kyXG50WnBTRE0yMkZHSFZObEVUWDRXelNEMG1mMnVxNGN2aXlZYkJRY3ltNXU4VVhDMFJ0QUE4bXVEM2FzYVp3NWt5XG5sWHg1L2dOaG9XUTc5anEyZm96Mk9kM2tsMTErOHJtamZtQWZsTVBxTGZGOWVnSklsQmkycEs2b2VoRWs5b1VoXG5vd1VJRGJMT2tBNkRCb3BSNHdPL3dja1BzV3dnWXJHaFl1Q2Ryd2I0NktqQno3S2dsL241SHRKK1dvRWlaeERYXG5wQndUbDUyRkRZbUx1bStJenM4TXlJZ1BIc1RJdlUvMnFiSlhmVUdrVGgySU5jN1RHQ25FRFUxRC9JdGd5ZkwwXG5pd3VBNW1qUHZLQXlwYWYzcmE1bjMyZlZCWERtYXVZa3RObkhKZjQvNFFzNmp1QmdkSCt2Vm9iY2dzblF4NDRQXG5zaXNISkNxWGp4Y0k1UWlMZ2N1VEpZY25QRU4zeDdsN0dhWk9mME93VUdHRXhDQUhUOGFEMlhIZUxkNWhxaWFEXG5NeE01QzlhRFRCQUk4czdibTNzbTF5cTdDMUpLTFk3eTU0QVVLdGU0cEp6N0VLdVVsT090YzBkdXdUMFBzbG9LXG5CMzNCZUVyR1U1VFE4aUFmNkowRzJZMklhSGpIV09rd0dRSFh5cTdkZjkvbHNMdUpwb3c4Z2hKWU92TWpCcktNXG43ZHprSXlvOURGMllVUk5TYTRVTCtOaTFKaXdRcEQ1ekNuangyaHdIdzRsT2s3c1FZUytzV3ZldVJ0blBzRVZPXG5BTDMwVGUvQjBBUDArQTlVV1k2WHlaRitVdXJLV2FFU2ZKZVlFL0NrNXQvYVV3VlV3UFRyQUo5UG9CUXFqUlFHXG52MTA5QXRNMEF5a3VzMnFxTDdSeW9uT045V2d0M3pCWTFWMFdzaWhsaHFEaS9SSENjYzhiOHhPK2FnVDF3OUNCXG5vU3UvQVdSRmExRjNRNWQ2RGdqUUFiNDhsZTk1UHRTRW42OThKa3BqVS9jeUtsaWVBaVl4Nlc0eC9XZmlKYmlTXG5GSURHUUU1Y3pQR1F6QmRhUEFlTFpHVzhBT2hReU44cnNtMTdwNEw5aFl0cW5yd0U0Tm5uUFFTYS9GNHZmKzVsXG42QWxmSHpQWHJVTW9hcHJLWFhxckJmWFhzM3RGS3lDZWhORWtBS0tRTU4yUXVSTS9NN1lxa0FmRzFxdzBlSWxkXG4xNVBET1ZPZUVtTHNEWEJDbTVWWHltdEVzYzRjckx2d0tneTlWTlAzdUtycGhnQ0Q0NC9tTmtzVnlaNWhSYlM0XG5tR0RTNTBLYUI0cHRTcGFQS2xLTjA2SU13ckxXajNvT0U4SElRWkRMZFdoQjVXZjVkV0w2VkQxRWxicFJyMk0yXG5QTTFUd3N5WVBzWURlLzR1Yzh0SUNLdEg0bXllQ2JNV3o2UUJvWUlUYXE5R1ptZXlUZnBBU0xmYml5K2tKWUpNXG5keVhsMm9QMTRjRnYyZmlRNlgzcDN1akY4aHBmTVRCYVVtUWRGbHVrY0E3eGdIbjdzb2orUGZXUmJVblJ5ckhvXG5xek5VSng4dVpaUnpmcjRCZHlya2JJR2xYSDYxcUpUR0p3c0FJR3N4alk1RUdhRVE9PXx8RzJtUVpJMmVFNE1YXG5OQzRVUUJzclVUYWQySG91QVY5OWtxYmZjMm8vUCtGeG52dkZzeHJyMVdkWkNycm5LUXl4NzBITmdaTTVJS1FuXG5XTm9TZjZ5QWhMZXRzK3NZcEVWbkpzMnhpYk9FQThUaGpSTTVrZDcxQVNQRDlCMzBDMnpNV3FvUFBEcGsrajZ5XG5pYStLcmtoWDNjcXd6Y2RTL3dnSTNOU3ljNDJLS2pCNUFFQ0Zjc2U0b1ZNZWZJRmRUT3pwYlFiWlBTcjRscFVDXG5nWEd5N1NqY2dRWC9JallJUGdwZ0xKbUJaWE9ManZTWmJxTzVqTTdEYUpjOTIyZjkwdzFlNUtBNzZzRS82NjF6XG5LUWNaSUtSaGNCMFZiQVdnMW03R0s4RWt2OERadlowelZ1WmlaTTRFSXFyaWlsT29JcUVkMlNTazdvQkhHTy9YXG5SSWkyMHU3L013PT1cbi0tLS0tRU5EIExJQ0VOU0UgS0VZLS0tLS0iLCJ4NTA5IjoiLS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tXG5NSUlFRERDQ0FmUUNDUUNxZzJvRFQ4MHh3akFOQmdrcWhraUc5dzBCQVFVRkFEQklNUXN3Q1FZRFZRUUdFd0pFXG5SVEVQTUEwR0ExVUVDQXdHUW1WeWJHbHVNUTh3RFFZRFZRUUhEQVpDWlhKc2FXNHhGekFWQmdOVkJBTU1EbXhwXG5ZMlZ1YzJVdWJqaHVMbWx2TUI0WERUSXlNRFl5TkRBME1UQTBNRm9YRFRJek1EWXlOREEwTVRBME1Gb3dTREVMXG5NQWtHQTFVRUJoTUNSRVV4RHpBTkJnTlZCQWdNQmtKbGNteHBiakVQTUEwR0ExVUVCd3dHUW1WeWJHbHVNUmN3XG5GUVlEVlFRRERBNXNhV05sYm5ObExtNDRiaTVwYnpDQ0FTSXdEUVlKS29aSWh2Y05BUUVCQlFBRGdnRVBBRENDXG5BUW9DZ2dFQkFNQk0wNVhCNDRnNXhmbUNMd2RwVVR3QVQ4K0NCa3lMS0ZzZXprRDVLLzZXaGFYL1hyc2QvUWQwXG4yMEo3d2w1V2RIVTRjVkJtRlJqVndWemtsQ0syeVlKaThtang4c1hzR3E5UTFsYlVlTUtmVjlkc2dmdWhubEFTXG50blFaZ2x1Z09uRjJGZ1JoWGIvakswdHhUb2FvK2JORTZyNGdJRXpwa3RITEJUWXZ2aXVKbXJlZjdXYlBSdDRJXG5uZDlEN2xoeWJlYnloVjdrdXpqUUEvcFBLSFRGczhNVEhaOGhZVXhSeXJwbTMrTVl6UUQrYmpBMlUxRkljdGFVXG53UVhZV2FON3QydVR3Q3Q5ekFLc21ZL1dlT2J2bDNUWk41T05MQXp5V0dDdWxtNWN3S1IzeGJsQlp6WG5CNmdzXG5Pbk4yT0FkU3RjelRWQ3ljbThwY0ZVcnl0S1NLa0dFQ0F3RUFBVEFOQmdrcWhraUc5dzBCQVFVRkFBT0NBZ0VBXG5sSjAxd2NuMXZqWFhDSHVvaTdSMERKMWxseDErZGFmcXlFcVBBMjdKdStMWG1WVkdYUW9yUzFiOHhqVXFVa2NaXG5UQndiV0ZPNXo1ZFptTnZuYnlqYXptKzZvT2cwUE1hWXhoNlRGd3NJMlBPYmM3YkZ2MmVheXdQdC8xQ3BuYzQwXG5xVU1oZnZSeC9HQ1pQQ1d6My8yUlBKV1g5alFEU0hYQ1hxOEJXK0kvM2N1TERaeVkzZkVZQkIwcDNEdlZtYWQ2XG42V0hRYVVyaU4wL0xxeVNPcC9MWmdsbC90MDI5Z1dWdDA1WmliR29LK2NWaFpFY3NMY1VJaHJqMnVGR0ZkM0ltXG5KTGcxSktKN2pLU0JVUU9kSU1EdnNGVUY3WWRNdk11ckNZQTJzT05OOENaK0k1eFFWMUtTOWV2R0hNNWZtd2dTXG5PUEZ2UHp0RENpMC8xdVc5dE9nSHBvcnVvZGFjdCtFWk5rQVRYQ3ZaaXUydy9xdEtSSkY0VTRJVEVtNWFXMGt3XG42enVDOHh5SWt0N3ZoZHM0OFV1UlNHSDlqSnJBZW1sRWl6dEdJTGhHRHF6UUdZYmxoVVFGR01iQmI3amhlTHlDXG5MSjFXT0c2MkYxc3B4Q0tCekVXNXg2cFIxelQxbWhFZ2Q0TWtMYTZ6UFRwYWNyZDk1QWd4YUdLRUxhMVJXU0ZwXG5NdmRoR2s0TnY3aG5iOHIrQnVNUkM2aWVkUE1DelhxL001MGNOOEFnOGJ3K0oxYUZvKzBFSzJoV0phN2tpRStzXG45R3ZGalNkekNGbFVQaEtra1Vaa1NvNWFPdGNRcTdKdTZrV0JoTG9GWUtncHJscDFRVkIwc0daQTZvNkR0cWphXG5HNy9SazZ2YmFZOHdzTllLMnpCWFRUOG5laDVab1JaL1BKTFV0RUV0YzdZPVxuLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLSJ9	f
\.


--
-- Data for Name: shared_credentials; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."shared_credentials" ("credentialsId", "projectId", "role", "createdAt", "updatedAt") FROM stdin;
PjaCjvaf5KOsNqft	Gqyvau1J0jhxsayS	credential:owner	2025-08-25 09:29:28.939+00	2025-08-25 09:29:28.939+00
ZjecAniKUeVCtLmf	Gqyvau1J0jhxsayS	credential:owner	2025-09-10 12:17:50.686+00	2025-09-10 12:17:50.686+00
niYLd01AlzxzgedU	Gqyvau1J0jhxsayS	credential:owner	2025-09-13 12:43:00.481+00	2025-09-13 12:43:00.481+00
2CuCJbUJUCOx6wBX	Gqyvau1J0jhxsayS	credential:owner	2025-09-15 12:25:02.369+00	2025-09-15 12:25:02.369+00
o3gL0KyijArFTKh3	Gqyvau1J0jhxsayS	credential:owner	2025-10-05 04:54:22.266+00	2025-10-05 04:54:22.266+00
qNbjIsLUBt9HpEJI	Gqyvau1J0jhxsayS	credential:owner	2025-10-05 05:12:22.437+00	2025-10-05 05:12:22.437+00
NlGQmL390hyTfNkF	Gqyvau1J0jhxsayS	credential:owner	2025-10-05 13:13:49.362+00	2025-10-05 13:13:49.362+00
pY7cG33GlwsAymsS	Gqyvau1J0jhxsayS	credential:owner	2025-10-25 12:13:02.867+00	2025-10-25 12:13:02.867+00
asVcrivPTD2PjvM0	Gqyvau1J0jhxsayS	credential:owner	2025-10-25 13:11:38.643+00	2025-10-25 13:11:38.643+00
mF9J64M4a05QO5LT	Gqyvau1J0jhxsayS	credential:owner	2025-10-25 13:48:47.036+00	2025-10-25 13:48:47.036+00
frbHQbI6lXUwm2Iz	Gqyvau1J0jhxsayS	credential:owner	2025-10-25 14:05:34.085+00	2025-10-25 14:05:34.085+00
JbkdHlQQ6XLLIty7	Gqyvau1J0jhxsayS	credential:owner	2025-10-25 14:21:13.328+00	2025-10-25 14:21:13.328+00
yyujYkvS9NvqqOTt	Gqyvau1J0jhxsayS	credential:owner	2025-10-27 13:02:37.53+00	2025-10-27 13:02:37.53+00
Vugl1EUivGrZp9Gx	Gqyvau1J0jhxsayS	credential:owner	2025-10-27 13:38:20.913+00	2025-10-27 13:38:20.913+00
\.


--
-- Data for Name: shared_workflow; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."shared_workflow" ("workflowId", "projectId", "role", "createdAt", "updatedAt") FROM stdin;
7SYp4LtZMlKoLDW5	Gqyvau1J0jhxsayS	workflow:owner	2025-08-25 12:14:14.732+00	2025-08-25 12:14:14.732+00
gTHlpEOcrsWKg05t	Gqyvau1J0jhxsayS	workflow:owner	2025-09-10 09:29:31.256+00	2025-09-10 09:29:31.256+00
piCfMWSd4xk3pcwk	Gqyvau1J0jhxsayS	workflow:owner	2025-09-10 09:29:34.215+00	2025-09-10 09:29:34.215+00
5ExHRD33qqGixcpd	Gqyvau1J0jhxsayS	workflow:owner	2025-09-10 10:56:40.305+00	2025-09-10 10:56:40.305+00
VpCtchh4w62rujD6	Gqyvau1J0jhxsayS	workflow:owner	2025-09-10 10:56:43.907+00	2025-09-10 10:56:43.907+00
BDMnLCyG7skIJznf	Gqyvau1J0jhxsayS	workflow:owner	2025-09-13 12:44:02.897+00	2025-09-13 12:44:02.897+00
Gp3nFT5Mxy8vB0p2	Gqyvau1J0jhxsayS	workflow:owner	2025-09-15 11:30:50.514+00	2025-09-15 11:30:50.514+00
ApTJoTTmil4T4YJ3	Gqyvau1J0jhxsayS	workflow:owner	2025-09-15 11:30:54.29+00	2025-09-15 11:30:54.29+00
a9szlrQBELM41VLk	Gqyvau1J0jhxsayS	workflow:owner	2025-10-05 04:20:07.623+00	2025-10-05 04:20:07.623+00
UIutZLI6CFmRCLJr	Gqyvau1J0jhxsayS	workflow:owner	2025-10-06 21:06:42.892+00	2025-10-06 21:06:42.892+00
gPFk43OJPOEF13xw	Gqyvau1J0jhxsayS	workflow:owner	2025-10-25 12:23:52.774+00	2025-10-25 12:23:52.774+00
lS2swzVkegeU0Jjg	Gqyvau1J0jhxsayS	workflow:owner	2025-10-25 12:23:54.561+00	2025-10-25 12:23:54.561+00
jVqcK7FSG34yWerz	Gqyvau1J0jhxsayS	workflow:owner	2025-10-27 12:33:02.662+00	2025-10-27 12:33:02.662+00
TcDc1kBJ1jpWfvii	Gqyvau1J0jhxsayS	workflow:owner	2025-10-27 12:33:06.309+00	2025-10-27 12:33:06.309+00
\.


--
-- Data for Name: test_run; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."test_run" ("id", "workflowId", "status", "errorCode", "errorDetails", "runAt", "completedAt", "metrics", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: test_case_execution; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."test_case_execution" ("id", "testRunId", "executionId", "status", "runAt", "completedAt", "errorCode", "errorDetails", "metrics", "createdAt", "updatedAt", "inputs", "outputs") FROM stdin;
\.


--
-- Data for Name: user_api_keys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user_api_keys" ("id", "userId", "label", "apiKey", "createdAt", "updatedAt", "scopes") FROM stdin;
\.


--
-- Data for Name: variables; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."variables" ("key", "type", "value", "id") FROM stdin;
\.


--
-- Data for Name: webhook_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."webhook_entity" ("webhookPath", "method", "node", "webhookId", "pathLength", "workflowId") FROM stdin;
\.


--
-- Data for Name: workflow_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_history" ("versionId", "workflowId", "authors", "createdAt", "updatedAt", "nodes", "connections") FROM stdin;
\.


--
-- Data for Name: workflow_statistics; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_statistics" ("count", "latestEvent", "name", "workflowId", "rootCount") FROM stdin;
5	2025-09-15 12:48:18.554+00	manual_success	ApTJoTTmil4T4YJ3	0
1	2025-08-25 12:40:54.232+00	data_loaded	7SYp4LtZMlKoLDW5	1
7	2025-09-15 12:56:24.835+00	manual_error	ApTJoTTmil4T4YJ3	0
6	2025-08-25 12:43:51.415+00	manual_success	7SYp4LtZMlKoLDW5	0
1	2025-09-10 09:29:39.656+00	manual_success	gTHlpEOcrsWKg05t	0
1	2025-09-10 09:29:41.255+00	manual_success	piCfMWSd4xk3pcwk	0
3	2025-09-10 10:47:22.166+00	manual_error	piCfMWSd4xk3pcwk	0
1	2025-09-10 10:56:53+00	data_loaded	5ExHRD33qqGixcpd	1
1	2025-09-10 10:56:55.232+00	manual_success	5ExHRD33qqGixcpd	0
1	2025-09-10 10:56:57.35+00	data_loaded	VpCtchh4w62rujD6	1
21	2025-10-07 13:43:19.713+00	manual_success	UIutZLI6CFmRCLJr	0
21	2025-10-09 12:26:47.257+00	manual_success	a9szlrQBELM41VLk	0
1	2025-10-05 04:58:41.636+00	data_loaded	a9szlrQBELM41VLk	1
1	2025-10-25 12:24:00.955+00	manual_error	gPFk43OJPOEF13xw	0
1	2025-10-25 12:30:34.527+00	data_loaded	lS2swzVkegeU0Jjg	1
20	2025-09-10 21:59:28.171+00	manual_error	VpCtchh4w62rujD6	0
99	2025-10-29 21:19:16.803+00	manual_success	TcDc1kBJ1jpWfvii	0
18	2025-10-29 21:25:36.792+00	manual_error	a9szlrQBELM41VLk	0
8	2025-10-25 13:49:52.101+00	manual_error	lS2swzVkegeU0Jjg	0
10	2025-10-25 14:21:55.051+00	manual_success	lS2swzVkegeU0Jjg	0
1	2025-10-27 12:33:17.742+00	data_loaded	TcDc1kBJ1jpWfvii	1
121	2025-09-10 22:24:58.642+00	manual_success	VpCtchh4w62rujD6	0
2	2025-09-13 12:44:14.605+00	manual_error	BDMnLCyG7skIJznf	0
1	2025-09-13 12:47:51.234+00	data_loaded	BDMnLCyG7skIJznf	1
1	2025-10-06 21:06:51.249+00	data_loaded	UIutZLI6CFmRCLJr	1
8	2025-09-13 22:51:07.041+00	manual_success	BDMnLCyG7skIJznf	0
1	2025-09-15 11:31:03.388+00	data_loaded	Gp3nFT5Mxy8vB0p2	1
1	2025-09-15 11:31:12.463+00	manual_success	Gp3nFT5Mxy8vB0p2	0
1	2025-09-15 11:31:10.473+00	data_loaded	ApTJoTTmil4T4YJ3	1
2	2025-10-06 21:50:55.058+00	manual_error	UIutZLI6CFmRCLJr	0
2	2025-10-06 23:01:04.94+00	production_success	a9szlrQBELM41VLk	2
7	2025-10-27 13:38:57.201+00	manual_error	TcDc1kBJ1jpWfvii	0
\.


--
-- Data for Name: workflows_tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflows_tags" ("workflowId", "tagId") FROM stdin;
\.


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id") FROM stdin;
\.


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads" ("id", "in_progress_size", "upload_signature", "bucket_id", "key", "version", "owner_id", "created_at", "user_metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads_parts" ("id", "upload_id", "size", "part_number", "bucket_id", "key", "etag", "owner_id", "version", "created_at") FROM stdin;
\.


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 1, false);


--
-- Name: auth_provider_sync_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."auth_provider_sync_history_id_seq"', 1, false);


--
-- Name: execution_annotations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."execution_annotations_id_seq"', 1, false);


--
-- Name: execution_entity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."execution_entity_id_seq"', 365, true);


--
-- Name: execution_metadata_temp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."execution_metadata_temp_id_seq"', 1, false);


--
-- Name: insights_by_period_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."insights_by_period_id_seq"', 4, true);


--
-- Name: insights_metadata_metaId_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."insights_metadata_metaId_seq"', 2, true);


--
-- Name: insights_raw_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."insights_raw_id_seq"', 4, true);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."migrations_id_seq"', 100, true);


--
-- PostgreSQL database dump complete
--

-- \unrestrict 4RgYBIG9jf06nOWdlhEjsNGocwDAVMZKMehHUtryBxJumCR7i3S57dyjnMi8exw

RESET ALL;
