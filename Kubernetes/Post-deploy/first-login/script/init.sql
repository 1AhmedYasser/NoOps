INSERT INTO public.user (login, first_name, last_name, id_code, display_name, status, created, csa_title, csa_email)
VALUES ('EE30303039914', 'OK', 'TESTNUMBER', 'EE30303039914', 'OK TESTNUMBER', 'active', now(), 'OG2', 'og@mail.ee');

INSERT INTO user_authority (user_id, authority_name, created)
VALUES ((SELECT id_code FROM public.user WHERE login = 'EE30303039914'), ARRAY['ROLE_ADMINISTRATOR'], now());
