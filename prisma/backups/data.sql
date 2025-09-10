SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

\restrict GUpnXe5s4oToHFat5vRoFb0TfQw9UaDW5ucXr9hvQgHAhl0Ok4iJcbirmLHYwcC

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
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag") FROM stdin;
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
\.


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_factors" ("id", "user_id", "friendly_name", "factor_type", "status", "created_at", "updated_at", "secret", "phone", "last_challenged_at", "web_authn_credential", "web_authn_aaguid") FROM stdin;
\.


--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_challenges" ("id", "factor_id", "created_at", "verified_at", "ip_address", "otp_code", "web_authn_session_data") FROM stdin;
\.


--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_clients" ("id", "client_id", "client_secret_hash", "registration_type", "redirect_uris", "grant_types", "client_name", "client_uri", "logo_uri", "created_at", "updated_at", "deleted_at") FROM stdin;
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
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user" ("id", "email", "firstName", "lastName", "password", "personalizationAnswers", "createdAt", "updatedAt", "settings", "disabled", "mfaEnabled", "mfaSecret", "mfaRecoveryCodes", "role", "lastActiveAt") FROM stdin;
f72059c4-d73c-460f-b3d9-5c2e1e562c80	keithergt@gmail.com	Keith Walter	Torreblanca	$2a$10$AWbQHaoL9pH/nhBaBX9SseUHyR3lB36gRaF3Pcznbk3k8xsD0k3u6	{"version":"v4","personalization_survey_submitted_at":"2025-08-25T07:02:04.655Z","personalization_survey_n8n_version":"1.107.4","automationGoalDevops":["ticketing-systems-integrations"],"companySize":"<20","companyType":"systems-integrator","role":"it","reportedSource":"google"}	2025-08-25 06:53:06.753+00	2025-08-25 12:09:34.747+00	{"userActivated": false}	f	f	\N	\N	global:owner	2025-08-25
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
Google Sheets account	U2FsdGVkX1/DHZgWJH5LTCpWfimLLYHmlm93vJUZJ18vxao/cpHgWQ7B4EfgqvYvXmT+boMlfpKWedDiooU5aKc4oiMf32JdtjsUYumRtkp37T4K2hr7nF6TSjolDscqnseA7QmZHNUklOejtw9NPUZE66CQVt2Cepm29SVNhmGtwERrmc70T7YEYhso0lHlxZf0Y6WZ2xK2niN1K7m5eue00Xk19LYQy8zAL2AkHTtDZmuDxDyCevKJIm1+MyQtl60KD6VdJRD+iPtpDgyz+cF2R8gcmCV+3Rwt7WEUxYXpYpoU0cNeWWPmqwNKS5MvxO0nWkPCmYPY+b9Y6580eqMoOewLpjaBgSIGkYXGtb+ZMQz2uw6Cbr1AiP2lWg+PXqY1iR8R6BFx/MHWQjy2AScFcEqg7h1rSEPexQ3oo9WBSft2Nb3XKJp3rPMgP3NjrTQV+v7ADprqsztNcY59/imP3ZdcTyt+PDOV3qFBX0YDPkPYbqDFAxAkzcrV67zdmQup0VDHdNDZduE4QznNJrMfxj0Ht5t0rDkKIuzHDGUwAJxNIw2n1F5oFS2UrRFmOQMmObBqlXRJLYVBfowviK/uZhJYfJkpN4uxhbEA3ksbJ35D/su3+o58OZp265kRz2YEOhJklFDUvgPtKuXd58Ben6+FRcEvPkg5IaWOVHQk+sozJuOQfuQBnyy0J9ozOlliVjfOO4IFJksdgKRThXOsr7df1CfeZddz8mGlGiIH2piZwm3n98VxulnwrMPYUdzFFwwEHJLUQa8LaKb15PsQhtGqu5R5bjdsxga3/3vUrSZzo9r9phM61BVc8SGItDY13dx472lpYrsQUIvplnmfPepRARscv27W1HvEBcUEdykTRJHk4tSjpcIDNhcLwXZx/33SxKIRgVyww4bq7IfmMxwZpNE4fdEc2lBrLoUBD7cmgO9LVZ6huEpkOLscF3CNoAjViH2LquP6eiUvGe4RB8Vi1yEE09/GnJRVhn9JAEzb/tDCUmFQTY6/nmwUkSurzNg+00zy+VfqlsfzS5mEMNxbpZd7v0zq+jLE3Wh1foOBBDSID0s2D2ZKXquR5xN4Hp0KyEFPai9z3pWefzpPrYi4Q+2UNaFBla6M1FsNMY57AT3dopZ2BpDgApGuO2FNsEmIzVdv+tUWAVFw5NNdwtRzMZGOMtukMT3UQRv6Tx7n7JoVMOa+Sv4FuUsHaBZHEVCdpXO2/xoUVpiipnwRIO13Tr1VvdwMe76Rh7pqitr5zdGCipaUIrf2tc9X	googleSheetsOAuth2Api	2025-08-25 12:33:10.478+00	2025-08-25 12:34:48.297+00	wvkkbCisx7mUaNMg	f
Google Gemini(PaLM) Api account	U2FsdGVkX18S1y1V9/6YpDWY2ysToS+/lsItstY4Py8MAKOliL+HVcLQTE4Ckm7gizEh/sYmJnhAzLEILO8AfO6bDwYPHnG1xEa/Va+jUzM=	googlePalmApi	2025-08-25 21:27:05.17+00	2025-08-25 21:27:04.941+00	35M91pJIz1MAtd3q	f
Google Drive account	U2FsdGVkX1+rZzygaXF8W9dtzghJ6nxG74KKfp0Wo+/JN1b2Ee5+lJjDv7pxaoDSGIsQiP+hTyQUWSUkbP2lqrVr6AttmvPO979Mj6NwGN534bEXdJcDel9xe74LBbNJA9f/ut5KSTa25Bt3bobD6YE0mLnmCVbzJEnzayb0stRiEVpmXro+aVaDEpHjV9lxI9uz9Z3B8sCav+0Q68HrEaOB2T84jxjupmwFjBwU+PwZINQF3owSwbekUTFqYCITv9ajd0A1L01KHPByzCdjTLpLNg2fISlWgLUlb2ttstGyZ9XydLHhoVOa0f0tiNbLNFTLZfFMCwv7X+V6gYorU8mqDDVWTmtW20z04nheyynYR0k5XYWLZqvuJcO78ON1DVcOhqLc/W8WwrjbEQV+DUpIsdE0KARczC9NN2OxHu5J3aP9q7BQG0YJYAc2v7aZAfd41uWxFEH4xPDsxvntgV7QJKeZPm63919IAXZYk0jTD6pf8eG9HSYEIknec88/+aiWWzgz/c/zz4X5wlO4fHS8ieDobHjS9Kvp6s5XcED6vLNAGrfY/AxyvR9sTtoZByWbgr3jh1VFqF2a4oEi9hweeTGC32FthuEjqHaWx1i7eUAutWknELFyXTS5Rtn/0hlByQdBRNntXZYItmCTnXaCDHcyNtdzBAXptgsccEv0lutqAxgUtlW6VzHgGvt8umm+qr91vlxxtqwjLaToqYAewo+RIJ/jqpniEDB6ksA9r+Ow+UBd+BySjRDZnl+vDc7v9LyigiIqXpNwDc39sUYfSwZgeBMecOqObCSpL0zXqhQJHusxN2cTwCzG7tAKjdXXcoSY0mjxOE6N6nTiW52aCJJIp2hGd0E+WCDHpijRG1uaV0LV+32/qxZaFgAGXimDDioOKAEtdFhAAooJRmY5iObl8SFj1vZmXZxBrqi/T2atWNxB5waPsOJZkWHpY8sKhiNKtjB3RwK0E7bV2Kiax5F+I5ctJAAPWmK/e6yU7lvwoTEDLxir85XNOrf6QbgIS15fITqAREsygSStY9jPWVxvBkce9lwl9hp93ESqXhn1CXKySKMZwNlA7w2oTewNXDSGIzwjfA7WHXmh2ZM224eeG9mRt0yGffN/k9EQrcES5lIPIkJwb7VsCEemUCS2h3B4n2svSknw1RfDZAF+OMAunlJKDqlmUmVhRS9nkyPt4KjPQf82MYm67UiUVLZeTwTKADqGW6Soa69IYnnbgplWDo/SfB9a2PyAePKMJRHvHhJ/iYbfbKQMPgZNDl2TyIfDRMwoHZ+GBylw1US/NUmexhFFBov7qvytJO4f3cuSBJ0OzsqlYhb9daUD	googleDriveOAuth2Api	2025-08-25 09:29:28.939+00	2025-08-25 12:12:21.131+00	PjaCjvaf5KOsNqft	f
\.


--
-- Data for Name: event_destinations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."event_destinations" ("id", "destination", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."project" ("id", "name", "type", "createdAt", "updatedAt", "icon", "description") FROM stdin;
Gqyvau1J0jhxsayS	Keith Walter Torreblanca <keithergt@gmail.com>	personal	2025-08-25 06:56:24.731+00	2025-08-25 07:01:27.107+00	\N	\N
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
My workflow	f	[{"parameters":{},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"cd6a47d2-bb2e-472e-91cb-59c861891c62","name":"When clicking ‘Execute workflow’"},{"parameters":{"resource":"folder","driveId":{"__rl":true,"mode":"list","value":"My Drive"},"folderId":{"__rl":true,"mode":"list","value":"root","cachedResultName":"/ (Root folder)"},"options":{}},"type":"n8n-nodes-base.googleDrive","typeVersion":3,"position":[208,0],"id":"5a39c8bd-347b-4ca7-bfd2-a2e58c408e74","name":"Create folder","credentials":{"googleDriveOAuth2Api":{"id":"PjaCjvaf5KOsNqft","name":"Google Drive account"}}}]	{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create folder","type":"main","index":0}]]}}	2025-08-25 12:14:14.732+00	2025-08-25 12:14:14.732+00	{"executionOrder":"v1"}	\N	{}	b62559d4-8c34-42e2-9718-fa2523cc3866	0	7SYp4LtZMlKoLDW5	{"templateCredsSetupCompleted":true}	\N	f
\.


--
-- Data for Name: execution_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_entity" ("id", "finished", "mode", "retryOf", "retrySuccessId", "startedAt", "stoppedAt", "waitTill", "status", "workflowId", "deletedAt", "createdAt") FROM stdin;
1	t	manual	\N	\N	2025-08-25 12:14:21.803+00	2025-08-25 12:14:22.934+00	\N	success	7SYp4LtZMlKoLDW5	\N	2025-08-25 12:14:20.172+00
2	t	manual	\N	\N	2025-08-25 12:15:38.453+00	2025-08-25 12:15:39.548+00	\N	success	7SYp4LtZMlKoLDW5	\N	2025-08-25 12:15:37.632+00
3	t	manual	\N	\N	2025-08-25 12:35:30.825+00	2025-08-25 12:35:32.002+00	\N	success	7SYp4LtZMlKoLDW5	\N	2025-08-25 12:35:30.001+00
4	t	manual	\N	\N	2025-08-25 12:40:53.074+00	2025-08-25 12:40:54.57+00	\N	success	7SYp4LtZMlKoLDW5	\N	2025-08-25 12:40:52.25+00
5	t	manual	\N	\N	2025-08-25 12:43:03.406+00	2025-08-25 12:43:06.596+00	\N	success	7SYp4LtZMlKoLDW5	\N	2025-08-25 12:43:02.587+00
6	t	manual	\N	\N	2025-08-25 12:43:46.965+00	2025-08-25 12:43:50.009+00	\N	success	7SYp4LtZMlKoLDW5	\N	2025-08-25 12:43:46.137+00
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
1	{"id":"7SYp4LtZMlKoLDW5","name":"My workflow","active":false,"nodes":[{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"cd6a47d2-bb2e-472e-91cb-59c861891c62","name":"When clicking ‘Execute workflow’"},{"parameters":{"preBuiltAgentsCalloutGoogleDrive":"","authentication":"oAuth2","resource":"folder","operation":"create","name":"","driveId":{"__rl":true,"mode":"list","value":"My Drive"},"folderId":{"__rl":true,"mode":"list","value":"root","cachedResultName":"/ (Root folder)"},"options":{}},"type":"n8n-nodes-base.googleDrive","typeVersion":3,"position":[208,0],"id":"5a39c8bd-347b-4ca7-bfd2-a2e58c408e74","name":"Create folder","credentials":{"googleDriveOAuth2Api":{"id":"PjaCjvaf5KOsNqft","name":"Google Drive account"}}}],"connections":{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create folder","type":"main","index":0}]]}},"settings":{"executionOrder":"v1"},"pinData":{}}	[{"startData":"1","resultData":"2","executionData":"3"},{"destinationNode":"4","runNodeFilter":"5"},{"runData":"6","pinData":"7","lastNodeExecuted":"4"},{"contextData":"8","nodeExecutionStack":"9","metadata":"10","waitingExecution":"11","waitingExecutionSource":"12"},"Create folder",["13","4"],{"When clicking ‘Execute workflow’":"14","Create folder":"15"},{},{},[],{},{},{},"When clicking ‘Execute workflow’",["16"],["17"],{"startTime":1756124062132,"executionIndex":0,"source":"18","hints":"19","executionTime":2,"executionStatus":"20","data":"21"},{"startTime":1756124062135,"executionIndex":1,"source":"22","hints":"23","executionTime":798,"executionStatus":"20","data":"24"},[],[],"success",{"main":"25"},["26"],[],{"main":"27"},["28"],{"previousNode":"13"},["29"],["30"],["31"],{"json":"32","pairedItem":"33"},{"json":"34","pairedItem":"35"},{},{"item":0},{"kind":"36","id":"37","name":"38","mimeType":"39"},{"item":0},"drive#file","1avJOdIDpy_Xl9D9n3O-e39UnmqjRdWN8","Untitled","application/vnd.google-apps.folder"]
2	{"id":"7SYp4LtZMlKoLDW5","name":"My workflow","active":false,"nodes":[{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"cd6a47d2-bb2e-472e-91cb-59c861891c62","name":"When clicking ‘Execute workflow’"},{"parameters":{"preBuiltAgentsCalloutGoogleDrive":"","authentication":"oAuth2","resource":"folder","operation":"create","name":"n8n Testing","driveId":{"__rl":true,"mode":"list","value":"My Drive"},"folderId":{"__rl":true,"mode":"list","value":"root","cachedResultName":"/ (Root folder)"},"options":{}},"type":"n8n-nodes-base.googleDrive","typeVersion":3,"position":[208,0],"id":"5a39c8bd-347b-4ca7-bfd2-a2e58c408e74","name":"Create folder","credentials":{"googleDriveOAuth2Api":{"id":"PjaCjvaf5KOsNqft","name":"Google Drive account"}}}],"connections":{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create folder","type":"main","index":0}]]}},"settings":{"executionOrder":"v1"},"pinData":{}}	[{"startData":"1","resultData":"2","executionData":"3"},{"destinationNode":"4","runNodeFilter":"5"},{"runData":"6","pinData":"7","lastNodeExecuted":"4"},{"contextData":"8","nodeExecutionStack":"9","metadata":"10","waitingExecution":"11","waitingExecutionSource":"12"},"Create folder",["13","4"],{"When clicking ‘Execute workflow’":"14","Create folder":"15"},{},{},[],{},{},{},"When clicking ‘Execute workflow’",["16"],["17"],{"startTime":1756124062132,"executionIndex":0,"source":"18","hints":"19","executionTime":2,"executionStatus":"20","data":"21"},{"startTime":1756124138787,"executionIndex":1,"source":"22","hints":"23","executionTime":760,"executionStatus":"20","data":"24"},[],[],"success",{"main":"25"},["26"],[],{"main":"27"},["28"],{"previousNode":"13","previousNodeOutput":0,"previousNodeRun":0},["29"],["30"],["31"],{"json":"32","pairedItem":"33"},{"json":"34","pairedItem":"35"},{},{"item":0},{"kind":"36","id":"37","name":"38","mimeType":"39"},{"item":0},"drive#file","124jW-8q3Yq9ToYnwnjJkhghbmVDf0B0R","n8n Testing","application/vnd.google-apps.folder"]
3	{"id":"7SYp4LtZMlKoLDW5","name":"My workflow","active":false,"nodes":[{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[-48,0],"id":"cd6a47d2-bb2e-472e-91cb-59c861891c62","name":"When clicking ‘Execute workflow’"},{"parameters":{"preBuiltAgentsCalloutGoogleDrive":"","authentication":"oAuth2","resource":"folder","operation":"create","name":"","driveId":{"__rl":true,"mode":"list","value":"My Drive"},"folderId":{"__rl":true,"mode":"list","value":"root","cachedResultName":"/ (Root folder)"},"options":{}},"type":"n8n-nodes-base.googleDrive","typeVersion":3,"position":[160,160],"id":"80d82b04-8e7a-4b7e-b2eb-f3d9c399daf4","name":"Create folder","credentials":{"googleDriveOAuth2Api":{"id":"PjaCjvaf5KOsNqft","name":"Google Drive account"}}},{"parameters":{"preBuiltAgentsCalloutGoogleSheets":"","authentication":"oAuth2","resource":"spreadsheet","operation":"create","title":"","sheetsUi":{},"options":{}},"type":"n8n-nodes-base.googleSheets","typeVersion":4.7,"position":[464,0],"id":"4eb81918-5eb7-4b81-98a8-5204901cd12b","name":"Create spreadsheet","credentials":{"googleSheetsOAuth2Api":{"id":"wvkkbCisx7mUaNMg","name":"Google Sheets account"}}}],"connections":{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create folder","type":"main","index":0}]]},"Create folder":{"main":[[{"node":"Create spreadsheet","type":"main","index":0}]]}},"settings":{"executionOrder":"v1"},"pinData":{}}	[{"startData":"1","resultData":"2","executionData":"3"},{"destinationNode":"4","runNodeFilter":"5"},{"runData":"6","pinData":"7","lastNodeExecuted":"4"},{"contextData":"8","nodeExecutionStack":"9","metadata":"10","waitingExecution":"11","waitingExecutionSource":"12"},"Create folder",["13","4"],{"When clicking ‘Execute workflow’":"14","Create folder":"15"},{},{},[],{},{},{},"When clicking ‘Execute workflow’",["16"],["17"],{"startTime":1756125331152,"executionIndex":0,"source":"18","hints":"19","executionTime":1,"executionStatus":"20","data":"21"},{"startTime":1756125331153,"executionIndex":1,"source":"22","hints":"23","executionTime":848,"executionStatus":"20","data":"24"},[],[],"success",{"main":"25"},["26"],[],{"main":"27"},["28"],{"previousNode":"13"},["29"],["30"],["31"],{"json":"32","pairedItem":"33"},{"json":"34","pairedItem":"35"},{},{"item":0},{"kind":"36","id":"37","name":"38","mimeType":"39"},{"item":0},"drive#file","1GtmhSxCJedgXSvzHAOESEEyP6_PttMSf","Untitled","application/vnd.google-apps.folder"]
4	{"id":"7SYp4LtZMlKoLDW5","name":"My workflow","active":false,"nodes":[{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[-48,0],"id":"cd6a47d2-bb2e-472e-91cb-59c861891c62","name":"When clicking ‘Execute workflow’"},{"parameters":{"preBuiltAgentsCalloutGoogleDrive":"","authentication":"oAuth2","resource":"folder","operation":"create","name":"","driveId":{"__rl":true,"mode":"list","value":"My Drive"},"folderId":{"__rl":true,"mode":"list","value":"root","cachedResultName":"/ (Root folder)"},"options":{}},"type":"n8n-nodes-base.googleDrive","typeVersion":3,"position":[160,160],"id":"80d82b04-8e7a-4b7e-b2eb-f3d9c399daf4","name":"Create folder","credentials":{"googleDriveOAuth2Api":{"id":"PjaCjvaf5KOsNqft","name":"Google Drive account"}}},{"parameters":{"preBuiltAgentsCalloutGoogleSheets":"","authentication":"oAuth2","resource":"sheet","operation":"update","documentId":{"__rl":true,"value":"15b_eyrhTyAUIS6X-r4yo9EfVJ95VCcdXFo2-JbUPAf4","mode":"list","cachedResultName":"n8n Testing","cachedResultUrl":"https://docs.google.com/spreadsheets/d/15b_eyrhTyAUIS6X-r4yo9EfVJ95VCcdXFo2-JbUPAf4/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":"gid=0","mode":"list","cachedResultName":"Sheet1","cachedResultUrl":"https://docs.google.com/spreadsheets/d/15b_eyrhTyAUIS6X-r4yo9EfVJ95VCcdXFo2-JbUPAf4/edit#gid=0"},"columns":{"mappingMode":"defineBelow","value":{"Folder name":"={{ $json.name }}","Folder Link":"={{ $json.mimeType }}"},"matchingColumns":["Folder name"],"schema":[{"id":"Folder name","displayName":"Folder name","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true,"removed":false},{"id":"Folder Link","displayName":"Folder Link","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true,"removed":false},{"id":"row_number","displayName":"row_number","required":false,"defaultMatch":false,"display":true,"type":"number","canBeUsedToMatch":true,"readOnly":true,"removed":true}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.googleSheets","typeVersion":4.7,"position":[368,160],"id":"808570a4-d3dd-4b9d-97a8-706118f4153a","name":"Update row in sheet","credentials":{"googleSheetsOAuth2Api":{"id":"wvkkbCisx7mUaNMg","name":"Google Sheets account"}}}],"connections":{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create folder","type":"main","index":0}]]},"Create folder":{"main":[[{"node":"Update row in sheet","type":"main","index":0}]]}},"settings":{"executionOrder":"v1"},"pinData":{}}	[{"startData":"1","resultData":"2","executionData":"3"},{"destinationNode":"4","runNodeFilter":"5"},{"runData":"6","pinData":"7","lastNodeExecuted":"4"},{"contextData":"8","nodeExecutionStack":"9","metadata":"10","waitingExecution":"11","waitingExecutionSource":"12"},"Update row in sheet",["13","14","4"],{"When clicking ‘Execute workflow’":"15","Create folder":"16","Update row in sheet":"17"},{},{},[],{},{},{},"When clicking ‘Execute workflow’","Create folder",["18"],["19"],["20"],{"startTime":1756125331152,"executionIndex":0,"source":"21","hints":"22","executionTime":1,"executionStatus":"23","data":"24"},{"startTime":1756125331153,"executionIndex":1,"source":"25","hints":"26","executionTime":848,"executionStatus":"23","data":"27"},{"startTime":1756125653405,"executionIndex":2,"source":"28","hints":"29","executionTime":1165,"executionStatus":"23","data":"30"},[],[],"success",{"main":"31"},["32"],[],{"main":"33"},["34"],[],{"main":"35"},["36"],{"previousNode":"13"},["37"],{"previousNode":"14","previousNodeOutput":0,"previousNodeRun":0},["38"],["39"],["40"],[],{"json":"41","pairedItem":"42"},{"json":"43","pairedItem":"44"},{},{"item":0},{"kind":"45","id":"46","name":"47","mimeType":"48"},{"item":0},"drive#file","1GtmhSxCJedgXSvzHAOESEEyP6_PttMSf","Untitled","application/vnd.google-apps.folder"]
5	{"id":"7SYp4LtZMlKoLDW5","name":"My workflow","active":false,"nodes":[{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[-48,0],"id":"cd6a47d2-bb2e-472e-91cb-59c861891c62","name":"When clicking ‘Execute workflow’"},{"parameters":{"preBuiltAgentsCalloutGoogleDrive":"","authentication":"oAuth2","resource":"folder","operation":"create","name":"","driveId":{"__rl":true,"mode":"list","value":"My Drive"},"folderId":{"__rl":true,"mode":"list","value":"root","cachedResultName":"/ (Root folder)"},"options":{}},"type":"n8n-nodes-base.googleDrive","typeVersion":3,"position":[160,160],"id":"80d82b04-8e7a-4b7e-b2eb-f3d9c399daf4","name":"Create folder","credentials":{"googleDriveOAuth2Api":{"id":"PjaCjvaf5KOsNqft","name":"Google Drive account"}}},{"parameters":{"preBuiltAgentsCalloutGoogleSheets":"","authentication":"oAuth2","resource":"sheet","operation":"append","documentId":{"__rl":true,"value":"15b_eyrhTyAUIS6X-r4yo9EfVJ95VCcdXFo2-JbUPAf4","mode":"list","cachedResultName":"n8n Testing","cachedResultUrl":"https://docs.google.com/spreadsheets/d/15b_eyrhTyAUIS6X-r4yo9EfVJ95VCcdXFo2-JbUPAf4/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":"gid=0","mode":"list","cachedResultName":"Sheet1","cachedResultUrl":"https://docs.google.com/spreadsheets/d/15b_eyrhTyAUIS6X-r4yo9EfVJ95VCcdXFo2-JbUPAf4/edit#gid=0"},"columns":{"mappingMode":"defineBelow","value":{"Folder name":"={{ $json.name }}","Folder Link":"={{ $json.mimeType }}"},"matchingColumns":[],"schema":[{"id":"Folder name","displayName":"Folder name","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Folder Link","displayName":"Folder Link","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.googleSheets","typeVersion":4.7,"position":[368,160],"id":"a5fa89e1-2220-45d8-9cdf-a1119354aedb","name":"Append row in sheet","credentials":{"googleSheetsOAuth2Api":{"id":"wvkkbCisx7mUaNMg","name":"Google Sheets account"}}}],"connections":{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create folder","type":"main","index":0}]]},"Create folder":{"main":[[{"node":"Append row in sheet","type":"main","index":0}]]}},"settings":{"executionOrder":"v1"},"pinData":{}}	[{"startData":"1","resultData":"2","executionData":"3"},{"destinationNode":"4","runNodeFilter":"5"},{"runData":"6","pinData":"7","lastNodeExecuted":"4"},{"contextData":"8","nodeExecutionStack":"9","metadata":"10","waitingExecution":"11","waitingExecutionSource":"12"},"Append row in sheet",["13","14","4"],{"When clicking ‘Execute workflow’":"15","Create folder":"16","Append row in sheet":"17"},{},{},[],{},{},{},"When clicking ‘Execute workflow’","Create folder",["18"],["19"],["20"],{"startTime":1756125331152,"executionIndex":0,"source":"21","hints":"22","executionTime":1,"executionStatus":"23","data":"24"},{"startTime":1756125331153,"executionIndex":1,"source":"25","hints":"26","executionTime":848,"executionStatus":"23","data":"27"},{"startTime":1756125783736,"executionIndex":2,"source":"28","hints":"29","executionTime":2860,"executionStatus":"23","data":"30"},[],[],"success",{"main":"31"},["32"],[],{"main":"33"},["34"],[],{"main":"35"},["36"],{"previousNode":"13"},["37"],{"previousNode":"14","previousNodeOutput":0,"previousNodeRun":0},["38"],["39"],["40"],["41"],{"json":"42","pairedItem":"43"},{"json":"44","pairedItem":"45"},{"json":"46","pairedItem":"47"},{},{"item":0},{"kind":"48","id":"49","name":"50","mimeType":"51"},{"item":0},{"Folder name":"50","Folder Link":"51"},{"item":0},"drive#file","1GtmhSxCJedgXSvzHAOESEEyP6_PttMSf","Untitled","application/vnd.google-apps.folder"]
6	{"id":"7SYp4LtZMlKoLDW5","name":"My workflow","active":false,"nodes":[{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[-48,0],"id":"cd6a47d2-bb2e-472e-91cb-59c861891c62","name":"When clicking ‘Execute workflow’"},{"parameters":{"preBuiltAgentsCalloutGoogleDrive":"","authentication":"oAuth2","resource":"folder","operation":"create","name":"","driveId":{"__rl":true,"mode":"list","value":"My Drive"},"folderId":{"__rl":true,"mode":"list","value":"root","cachedResultName":"/ (Root folder)"},"options":{}},"type":"n8n-nodes-base.googleDrive","typeVersion":3,"position":[160,160],"id":"80d82b04-8e7a-4b7e-b2eb-f3d9c399daf4","name":"Create folder","credentials":{"googleDriveOAuth2Api":{"id":"PjaCjvaf5KOsNqft","name":"Google Drive account"}}},{"parameters":{"preBuiltAgentsCalloutGoogleSheets":"","authentication":"oAuth2","resource":"sheet","operation":"append","documentId":{"__rl":true,"value":"15b_eyrhTyAUIS6X-r4yo9EfVJ95VCcdXFo2-JbUPAf4","mode":"list","cachedResultName":"n8n Testing","cachedResultUrl":"https://docs.google.com/spreadsheets/d/15b_eyrhTyAUIS6X-r4yo9EfVJ95VCcdXFo2-JbUPAf4/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":"gid=0","mode":"list","cachedResultName":"Sheet1","cachedResultUrl":"https://docs.google.com/spreadsheets/d/15b_eyrhTyAUIS6X-r4yo9EfVJ95VCcdXFo2-JbUPAf4/edit#gid=0"},"columns":{"mappingMode":"defineBelow","value":{"Folder name":"={{ $json.name }}","Folder Link":"={{ $execution.resumeUrl }}"},"matchingColumns":[],"schema":[{"id":"Folder name","displayName":"Folder name","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Folder Link","displayName":"Folder Link","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.googleSheets","typeVersion":4.7,"position":[368,160],"id":"a5fa89e1-2220-45d8-9cdf-a1119354aedb","name":"Append row in sheet","credentials":{"googleSheetsOAuth2Api":{"id":"wvkkbCisx7mUaNMg","name":"Google Sheets account"}}}],"connections":{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create folder","type":"main","index":0}]]},"Create folder":{"main":[[{"node":"Append row in sheet","type":"main","index":0}]]}},"settings":{"executionOrder":"v1"},"pinData":{}}	[{"startData":"1","resultData":"2","executionData":"3"},{"destinationNode":"4","runNodeFilter":"5"},{"runData":"6","pinData":"7","lastNodeExecuted":"4"},{"contextData":"8","nodeExecutionStack":"9","metadata":"10","waitingExecution":"11","waitingExecutionSource":"12"},"Append row in sheet",["13","14","4"],{"When clicking ‘Execute workflow’":"15","Create folder":"16","Append row in sheet":"17"},{},{},[],{},{},{},"When clicking ‘Execute workflow’","Create folder",["18"],["19"],["20"],{"startTime":1756125331152,"executionIndex":0,"source":"21","hints":"22","executionTime":1,"executionStatus":"23","data":"24"},{"startTime":1756125331153,"executionIndex":1,"source":"25","hints":"26","executionTime":848,"executionStatus":"23","data":"27"},{"startTime":1756125827295,"executionIndex":2,"source":"28","hints":"29","executionTime":2713,"executionStatus":"23","data":"30"},[],[],"success",{"main":"31"},["32"],[],{"main":"33"},["34"],[],{"main":"35"},["36"],{"previousNode":"13"},["37"],{"previousNode":"14","previousNodeOutput":0,"previousNodeRun":0},["38"],["39"],["40"],["41"],{"json":"42","pairedItem":"43"},{"json":"44","pairedItem":"45"},{"json":"46","pairedItem":"47"},{},{"item":0},{"kind":"48","id":"49","name":"50","mimeType":"51"},{"item":0},{"Folder name":"50","Folder Link":"52"},{"item":0},"drive#file","1GtmhSxCJedgXSvzHAOESEEyP6_PttMSf","Untitled","application/vnd.google-apps.folder","https://n8n-kwtorreblanca.onrender.com/webhook-waiting/6"]
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
\.


--
-- Data for Name: insights_by_period; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."insights_by_period" ("id", "metaId", "type", "value", "periodUnit", "periodStart") FROM stdin;
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
license.cert	eyJsaWNlbnNlS2V5IjoiLS0tLS1CRUdJTiBMSUNFTlNFIEtFWS0tLS0tXG5ab1pLUjMvNHlHUGlNOXNNelhHd3NTNFpqZ3JIVDV2eW5SZnNVRk5YRE9mQW9KMzFXdCtzSnBQbnJHU2VnNXhCXG54M2IwOG9oQ25URUdJL2E2MitDd08wUUZkS0pXUUN2UzVyZWcrZE9HczRab0dyMHI3NUJHSTBzT1U2aTlGdXRnXG43cnlpSjducVh2a0k1NXI3SkFYZnNTS0RPWWJ2d3plNjZhRi9LcXZROFpWem9jKzFFMkFydnNJVU5aMWtrNnZEXG53ejNlVmVYcEJwUWxCK3VRN1VIeXpoRW1kN3JjTzJ6S1hHbWJBYUtESWRQYVhjMjQ2SlM5ejY5RzRBak9sOVJvXG5PaWlCNWF0YXo5NlRGdDk1bVQ3KytsUEdOM09RNnVVV1ZKUGRIVVZaMzRMeXROVDdrQVVXa2ZhMFp6NnlvVTFxXG53eE0vY1BmL0ozMWRsU1FpdlhqV2N3PT18fFUyRnNkR1ZrWDEvVTNqTmx0RG5qOGwxT2RwVHdlbWRJZTZLSzUyXG5maUVGeDNTYjJvQVUzM05yZ0l2QmplSXR4MGxXNEFLRTJMbnUrdmxjZG1NQkx6elV6OXNaMm11bkNRWTJsQXpsXG5EMG1Ccm9MeHkvM29wNUgvNStnR09hTzEwWUl5T3lteDRxa0xxbWRGMXhuYW1LRmRhL04vbExHZ2RWS2gxSnRHXG5vWE85bkc1elhGc0dwamY3bTZwNm9veGFEcWYvTFplMnNLc3JMV0p0YVhYOUpDUnF2SXF6M0kxaHYxeFYzZVMzXG5pRHNEYXVUa3NYWSthM1A4aG1kczJ4ckEzTU5IQ2FHQVI2aFhwZlhOTEFvaUhiV3h3WVFtZVh5WnVyMmxjelB1XG52UTVSWjBqdjVFN0hOVlVOQldyOEN6bUw2a3kxSXg0N05Ca3RDU2k0R25JOFZQU0xSeCtHUWpxdnZsYlVndmg2XG5SbEVLM1AwemZxdysrbXUrSDEvUW9JMjdnK2xTZHRYR2UxOTZOSnNxdjlFS3o0VUN4eWUxMHlrQTBxVmwvNTliXG5GYUJBMVlMdXFIdkcveCtIWGo2RXRibkF2RWo3TTRHMEJFSVdOYmx1blc5SGx4bEZtTndSb2d2aUlHVm54dGtPXG5RQVhPQnpOMnB4S2lFbFpLR2lmemwzQTlCdlpaU1VRUGhPeWt4YWN6dFpDenBramd2bThBNFgzWWlNY1FYLzdoXG4wcDdMeVRheDdMbkFFY3JHSk5sV2RNc3JxZjMrSzk4VHRwV2doTWQ3a0J2TW9WU0pZbGVKMTM1NmR4dXNrM3lMXG5uZ1JCMlJDNkJtSUVSZEtJdm1PR2hiRmJFT0VENEM2QlY0TGM0eEUxd0lwUUcrQWVOcHUrODEyeGZ3Q1krYzZ3XG5mcHFONjFHQjVpVXhGelNCanlsZGNlcmx1UDNQTzAzZVR6M0VnMEdWbnRlMEZSUnB4Rjd5bWhJNnVJd2Mrc0FiXG5CUHp0ZkZMYXRsNVIzbXd1bkpBcWlNNVhZM2dhMDFuNkdPbUk1cWZRY1IxN3A1cGpGeVkwQ2VYai8yMlUrQkY5XG5yUGRKUUdRK3pWN1hmUi90UmRnTGdEcW1VVmR4UkhsbzNZWlVKOENlb3dTdjlEcTJWVWFRdXNFVkV5VUxzNDFjXG5oajdWUGlOaWh5QUZkN2YrYUVWejJKeTFnWDljV21XNGRVbG5SSXRBNUxSdzdtTjVnbkErSFIvT09SdXV5NWYxXG5mMFFqNDVJVTFob1hzSlg2bnJYRFZGZ3IxTlBOMG9UdUpyM3JxdWZKVVphVDVFeVJIdnMxdzNIRm14ejBWNjRzXG5UM1FKUFdyUHhYZ3BXbFA3MFlmZHBnV3lmRUxtbFJ0T2J3dm5vUlFGdXNBV1pFb2c4d0toa3h5T2JVZmg1aTE2XG5SNXZsRkpWeVJCNlhiYjJSblhBL3Ztc1VlKzhVdnRqRkk0NUgvQkF5MS9BQVAxNW1zQzFwb3FWTXdRY0xvT3lrXG4wRmpRblRQeDlCb3RXNmpSdGd1RGVFbHRmeFlIbHdicFBITGt1aW9QWkd1QytwZnQrVzVWc05wOS9WNGhvT3kwXG5WZzZ3MEcyZWNvbnZkUXNVU0dWancyYllTbEdLRU1KcjQvdWtKa21LczQyYkJ1aUdDSEg5M0plNnI1dXVWalNwXG5qaVpWdjVKajRQQWdXMlZFV09kRzN1cnJaZUNNdmE3RzVKb3dZSCtMT0xZbk9ZdEhTMzB0b0htTytkZHRROGQyXG5laWEwLzdUTXdacFN3OVNqajVDNGtLaDM2aW5KUk9TRWV3bk15T3FVYVU4c3VtOWVZNVBic3VFMThuYkZnemNTXG5COE9FR1lMRmNmcmVuSTJadXpTdHVxQkE2L0lEQ3BjTWw2bFdtWmFyKzhhWlZ2TlM2alNaMWkrbGtuMTQ3OTJBXG4wY0FoSzE2STVJWUpLckZwMFF0cE5taHF1M0doNjdZSmdZcDA4WEZzNkdNa3RVZ1B4eU5XbWo5dTVQbFNwMjQvXG5zQy9KQXZuR09UMXdYSUVuOHNOa0JYNFdHZFpvcFBwRExxNm1kSExSaUd5bHE3UmdldmFiVlpTTTAwbEw3THZ6XG5oN0ZSSEVKOTRIM2srT2p6YVJGeHVnZTd2cE5jTFZqRXlneUJlRGlZYm41bjlNaUtQa0xWaDl3WVR1WVUxQ3lMXG40QUxNL3dUQm5lT01mNlFDYjVZVTlFUG5ydlNBMUFMY2hCYUMwTmhHV0tqVll2dlBwTFBlZER4M3RUaEVDQU5lXG53MkU1allSUkRSRUhyTzJDaVVEek1RU1k4Q3BJcEMzdWw4c2FlUjZVNzVNK3B2dWFuQXk2L1R5VnpjeUQrUTRlXG5pRGpHZXUrNlIydTk2N21JbVMwdmdtbHlXdmwrRm96Q1h3M0JvTmdwVGVIY1FxSS9wR2ZWZ0Y1R091ZkhYMHpQXG5hU3R1M3lZVEVsTXQxdjlVOXpJdUxOUGdkYmh4RHViT0lPRndhOWxEbGpzb0Q2UktRZzhKWWZmT0h6RWFlOXR0XG5Sd2RheFVJbEMzd29EY2ZuMG02eVNaVGw2MkdnczNRMnpSM3F5TkRDNWFUMVNMRnZZVUFuVlNid1RuNmcrd01PXG5SWXlOb0hsK3JGbERibHFxY2JpRER5VWpHeEs3dXZFcFJVbTNUanVJOGFxZjlYSjB2c3lvN09tbTliS1YwdVZ3XG5rcHI5N3ltTk5lanpCMEYzeEJEU2RBeDA2ejFHVE91a2wzeFgzNnU2MGs3a1laMGljb0RSZU1rTkEwc0tLeTdiXG53aFZwVTFDTGlEbU1qNmkzRWVYS3ZEbTYxTHdzczV5NythbW1lZHpoYlRac1RTM0FHZHJqbmx4NTF3WDgxemdjXG53bHEzMTh0VGw3QTM4dnN0dDg4Vkc1RFA2dGdzRVU0VHZKUmg1MXZvQTNRNkhvcGd4NnJqbDM3cFZIWGpseVc5XG5uS3czRWYxeXFFeXRRRUhva2Z2aE54emJkSnR1UldaSFZ0OHE3TXBMaE93dlBhQ0JBQVdHQmNqSTNoL29hd0p6XG5kZ0MzZFZNNkVIcVJ2amo3L0EwWmdNZVZ4UnROMXF5QkN3SzZIZElUZ2plNUZnV3c9PXx8b2tzYzJqRXNkV0hRXG5EYjkyVU1XOU1oN2xGbEJYcUFnL2d1bEJ6Q2t6Tlp4c3o2QnR3NkJDRmdjeGc0T0x3VWlhT1FMWjZLcnN5STVTXG5sdU1QeWprQXozdEpUZWZrMzk5TzYzRVlKT1dxNVIxeGZrcEFTMGdlTDNrenpOVzVaZlM0aUVnSURLQ3BiK3puXG45ZSs4Wjk5enZLNjJocnpiZnhhWkxZYTk0Q05Jb2JxTzZIT2w3SFZHTlM2elRna05NS0I1cWJBaWRrQTFRLzRhXG42ZW1YVEFURnB6Z09HWmsrQkttd20wNkhsbWhmL0ZHS09zSXEybUx3YVBoMkR5akZmelA0N2RLbWdTN0xFaTdTXG4xbkNYOFZORktHdktNR1lqKzlOZENJREJoakppQkVOMUhFSHRMVEI1ZE8vM2xJdVoyYkl6Rll0T1JwREtNdmc5XG5Ha0VHZngybUtRPT1cbi0tLS0tRU5EIExJQ0VOU0UgS0VZLS0tLS0iLCJ4NTA5IjoiLS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tXG5NSUlFRERDQ0FmUUNDUUNxZzJvRFQ4MHh3akFOQmdrcWhraUc5dzBCQVFVRkFEQklNUXN3Q1FZRFZRUUdFd0pFXG5SVEVQTUEwR0ExVUVDQXdHUW1WeWJHbHVNUTh3RFFZRFZRUUhEQVpDWlhKc2FXNHhGekFWQmdOVkJBTU1EbXhwXG5ZMlZ1YzJVdWJqaHVMbWx2TUI0WERUSXlNRFl5TkRBME1UQTBNRm9YRFRJek1EWXlOREEwTVRBME1Gb3dTREVMXG5NQWtHQTFVRUJoTUNSRVV4RHpBTkJnTlZCQWdNQmtKbGNteHBiakVQTUEwR0ExVUVCd3dHUW1WeWJHbHVNUmN3XG5GUVlEVlFRRERBNXNhV05sYm5ObExtNDRiaTVwYnpDQ0FTSXdEUVlKS29aSWh2Y05BUUVCQlFBRGdnRVBBRENDXG5BUW9DZ2dFQkFNQk0wNVhCNDRnNXhmbUNMd2RwVVR3QVQ4K0NCa3lMS0ZzZXprRDVLLzZXaGFYL1hyc2QvUWQwXG4yMEo3d2w1V2RIVTRjVkJtRlJqVndWemtsQ0syeVlKaThtang4c1hzR3E5UTFsYlVlTUtmVjlkc2dmdWhubEFTXG50blFaZ2x1Z09uRjJGZ1JoWGIvakswdHhUb2FvK2JORTZyNGdJRXpwa3RITEJUWXZ2aXVKbXJlZjdXYlBSdDRJXG5uZDlEN2xoeWJlYnloVjdrdXpqUUEvcFBLSFRGczhNVEhaOGhZVXhSeXJwbTMrTVl6UUQrYmpBMlUxRkljdGFVXG53UVhZV2FON3QydVR3Q3Q5ekFLc21ZL1dlT2J2bDNUWk41T05MQXp5V0dDdWxtNWN3S1IzeGJsQlp6WG5CNmdzXG5Pbk4yT0FkU3RjelRWQ3ljbThwY0ZVcnl0S1NLa0dFQ0F3RUFBVEFOQmdrcWhraUc5dzBCQVFVRkFBT0NBZ0VBXG5sSjAxd2NuMXZqWFhDSHVvaTdSMERKMWxseDErZGFmcXlFcVBBMjdKdStMWG1WVkdYUW9yUzFiOHhqVXFVa2NaXG5UQndiV0ZPNXo1ZFptTnZuYnlqYXptKzZvT2cwUE1hWXhoNlRGd3NJMlBPYmM3YkZ2MmVheXdQdC8xQ3BuYzQwXG5xVU1oZnZSeC9HQ1pQQ1d6My8yUlBKV1g5alFEU0hYQ1hxOEJXK0kvM2N1TERaeVkzZkVZQkIwcDNEdlZtYWQ2XG42V0hRYVVyaU4wL0xxeVNPcC9MWmdsbC90MDI5Z1dWdDA1WmliR29LK2NWaFpFY3NMY1VJaHJqMnVGR0ZkM0ltXG5KTGcxSktKN2pLU0JVUU9kSU1EdnNGVUY3WWRNdk11ckNZQTJzT05OOENaK0k1eFFWMUtTOWV2R0hNNWZtd2dTXG5PUEZ2UHp0RENpMC8xdVc5dE9nSHBvcnVvZGFjdCtFWk5rQVRYQ3ZaaXUydy9xdEtSSkY0VTRJVEVtNWFXMGt3XG42enVDOHh5SWt0N3ZoZHM0OFV1UlNHSDlqSnJBZW1sRWl6dEdJTGhHRHF6UUdZYmxoVVFGR01iQmI3amhlTHlDXG5MSjFXT0c2MkYxc3B4Q0tCekVXNXg2cFIxelQxbWhFZ2Q0TWtMYTZ6UFRwYWNyZDk1QWd4YUdLRUxhMVJXU0ZwXG5NdmRoR2s0TnY3aG5iOHIrQnVNUkM2aWVkUE1DelhxL001MGNOOEFnOGJ3K0oxYUZvKzBFSzJoV0phN2tpRStzXG45R3ZGalNkekNGbFVQaEtra1Vaa1NvNWFPdGNRcTdKdTZrV0JoTG9GWUtncHJscDFRVkIwc0daQTZvNkR0cWphXG5HNy9SazZ2YmFZOHdzTllLMnpCWFRUOG5laDVab1JaL1BKTFV0RUV0YzdZPVxuLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLSJ9	f
\.


--
-- Data for Name: shared_credentials; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."shared_credentials" ("credentialsId", "projectId", "role", "createdAt", "updatedAt") FROM stdin;
PjaCjvaf5KOsNqft	Gqyvau1J0jhxsayS	credential:owner	2025-08-25 09:29:28.939+00	2025-08-25 09:29:28.939+00
wvkkbCisx7mUaNMg	Gqyvau1J0jhxsayS	credential:owner	2025-08-25 12:33:10.478+00	2025-08-25 12:33:10.478+00
35M91pJIz1MAtd3q	Gqyvau1J0jhxsayS	credential:owner	2025-08-25 21:27:05.17+00	2025-08-25 21:27:05.17+00
\.


--
-- Data for Name: shared_workflow; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."shared_workflow" ("workflowId", "projectId", "role", "createdAt", "updatedAt") FROM stdin;
7SYp4LtZMlKoLDW5	Gqyvau1J0jhxsayS	workflow:owner	2025-08-25 12:14:14.732+00	2025-08-25 12:14:14.732+00
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
1	2025-08-25 12:40:54.232+00	data_loaded	7SYp4LtZMlKoLDW5	1
6	2025-08-25 12:43:51.415+00	manual_success	7SYp4LtZMlKoLDW5	0
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

SELECT pg_catalog.setval('"public"."execution_entity_id_seq"', 6, true);


--
-- Name: execution_metadata_temp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."execution_metadata_temp_id_seq"', 1, false);


--
-- Name: insights_by_period_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."insights_by_period_id_seq"', 1, false);


--
-- Name: insights_metadata_metaId_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."insights_metadata_metaId_seq"', 1, false);


--
-- Name: insights_raw_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."insights_raw_id_seq"', 1, false);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."migrations_id_seq"', 92, true);


--
-- PostgreSQL database dump complete
--

\unrestrict GUpnXe5s4oToHFat5vRoFb0TfQw9UaDW5ucXr9hvQgHAhl0Ok4iJcbirmLHYwcC

RESET ALL;
