-- SQLBook: Code
INSERT INTO "client" ("email", "company") VALUES 
('client1@test.test', 'Company 1'),
('client2@test.test', 'Company 2'),
('client3@test.test', 'Company 3'),
('client4@test.test', 'Company 4'),
('client5@test.test', 'Company 5');

INSERT INTO "employee" ("firstname", "lastname", "email", "password", "role") VALUES 
('Prénom employee 1', 'Nom employee 1', 'employee1@test.test', '$2b$10$gCy4Ly5qxv93CpcUJraPNOCKlYBB6tUYxqM7dKxlm1oxzj5/tcMrq', 'admin'),
('Prénom employee 2', 'Nom employee 2', 'employee2@test.test', '$2b$10$x2JmdEEvjyKpZOZsypqEpOdjNtW6rcc8GvkXgpoovMWy6QnQg8AbC', 'lead'),
('Prénom employee 3', 'Nom employee 3', 'employee3@test.test', '$2b$10$1Tx/AREHFScfNTXDKlS57.KB//i4wjwQgtQ4G1Vo1ugMONj.Z4ZvC', 'intervenor'),
('Prénom employee 4', 'Nom employee 4', 'employee4@test.test', '$2b$10$ijAEMAxlT7QDun9ZXALKneg8qDCzRlOljlnDxCvcnLXNAjP37kwXm', 'intervenor'),
('Prénom employee 5', 'Nom employee 5', 'employee5@test.test', '$2b$10$.nogxltL0SmvKihbJxlqROd67pga.HfXEvaapYAbp/sMWr1.eBTES', 'intervenor');

INSERT INTO "ticket" ("title", "content", "status", "client_id") VALUES 
('Titre Ticket 1', 'Ticket content 1', 'open', 1),
('Titre Ticket 2', 'Ticket content 2', 'closed', 2),
('Titre Ticket 3', 'Ticket content 3', 'underway', 3),
('Titre Ticket 4', 'Ticket content 4', 'open', 4),
('Titre Ticket 5', 'Ticket content 5', 'open', 5),
('Titre Ticket 6', 'Ticket content 6', 'underway', 1),
('Titre Ticket 7', 'Ticket content 7', 'underway', 1),
('Titre Ticket 8', 'Ticket content 8', 'underway', 1),
('Titre Ticket 9', 'Ticket content 9', 'underway', 1),
('Titre Ticket 10', 'Ticket content 10', 'underway', 1),
('Titre Ticket 11', 'Ticket content 11', 'underway', 1),
('Titre Ticket 12', 'Ticket content 12', 'underway', 1),
('Titre Ticket 13', 'Ticket content 13', 'underway', 1);

INSERT INTO "message" ("content", "ticket_id", "client_id", "employee_id") VALUES 
('Message content 1', 1, NULL, 1),
('Message content 2', 2, 2, NULL),
('Message content 3', 3, NULL, 3),
('Message content 4', 4, 4, NULL),
('Message content 5', 5, NULL, 5),
('Message content 6', 1, 1, NULL),
('Message content 7', 1, NULL, 1);

INSERT INTO "ticket_employee" ("ticket_id", "employee_id") VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 1),
(6, 2);