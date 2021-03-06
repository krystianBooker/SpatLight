--Question types:
--0: Radio buttons
--2: Check box
--3: Fancy medical chart thing
drop table Answers
drop table SurveyQuestions

CREATE TABLE [dbo].[SurveyQuestions](
	QuestionId int IDENTITY(1,1),
	QuestionText varchar(max) NOT NULL,
	QuestionDescription varchar(max) NOT NULL,
	QuestionType int NOT NULL,
	PRIMARY KEY (QuestionId)
);

CREATE TABLE Answers (
    AnswerId int IDENTITY(1,1),
    QuestionId int NOT NULL,
    AnswerText varchar(max),
	AnswerDescription varchar(max),
	AnswerWeight varchar(max),
	AnswerImagePath varchar(max),
    PRIMARY KEY (AnswerId),
    FOREIGN KEY (QuestionId) REFERENCES SurveyQuestions(QuestionId)
);

INSERT [dbo].[SurveyQuestions] ([QuestionId], [QuestionDescription], [QuestionText], [QuestionType]) VALUES (1, N'Males are at higher risk for some forms of rheumatoid arthritis.', N'What is your gender?', 0)
INSERT [dbo].[SurveyQuestions] ([QuestionId], [QuestionDescription], [QuestionText], [QuestionType]) VALUES (2, N'Some types of rheumatoid arthritis typically develop before the age of 45.', N'At what age did your symptoms begin?', 0)
INSERT [dbo].[SurveyQuestions] ([QuestionId], [QuestionDescription], [QuestionText], [QuestionType]) VALUES (3, N'Smoking is associated with a higher risk of rheumatoid arthritis.', N'Do you smoke, or have you ever been a smoker?', 0)
INSERT [dbo].[SurveyQuestions] ([QuestionId], [QuestionDescription], [QuestionText], [QuestionType]) VALUES (4, N'Please indicate which joints have been affected by pain or inflamation:', N'Certain patterns of joint pain are associated with different types of arthritis and related conditions.', 3)
INSERT [dbo].[SurveyQuestions] ([QuestionId], [QuestionDescription], [QuestionText], [QuestionType]) VALUES (5, N'Symptoms lasting longer than 3 months are more likely to be associated with rheumatoid arthritis and related conditions.', N'Duration of joint symptoms?', 0)
INSERT [dbo].[SurveyQuestions] ([QuestionId], [QuestionDescription], [QuestionText], [QuestionType]) VALUES (6, N'Morning joint or back stiffness lasting longer than an hour may be associated with arthritis or related conditions.', N'Do you have morning stiffness for longer than 1 hour?', 0)
INSERT [dbo].[SurveyQuestions] ([QuestionId], [QuestionDescription], [QuestionText], [QuestionType]) VALUES (7, N'Rheumatoid arthritis often improves with activity. Pain and stiffness that worsens with activity may be associated with some other type of injury or condition.', N'Is pain and stiffness improved or worsened with activity?', 0)
INSERT [dbo].[SurveyQuestions] ([QuestionId], [QuestionDescription], [QuestionText], [QuestionType]) VALUES (8, N'Heat can often provide relief from rheumatoid arthritis symptoms.', N'Is your pain relieved with hot showers/baths or heating pads?', 0)
INSERT [dbo].[SurveyQuestions] ([QuestionId], [QuestionDescription], [QuestionText], [QuestionType]) VALUES (9, N'These medications can often provide relief from rheumatoid arthritis symptoms.', N'Do you have relief with Advil, Ibuprofen, Aleve, Naproxen or other NSAIDs?', 0)
INSERT [dbo].[SurveyQuestions] ([QuestionId], [QuestionDescription], [QuestionText], [QuestionType]) VALUES (10, N'These symptoms are associated with a higher risk of rheumatoid arthritis.', N'Have you ever had any of the following symptoms?', 2)
INSERT [dbo].[SurveyQuestions] ([QuestionId], [QuestionDescription], [QuestionText], [QuestionType]) VALUES (11, N'These conditions are associated with a higher risk of rheumatoid arthritis.', N'1 month prior to the onset of your symptoms, did you have an episode of urethritis, cervicitis, or infections diarrhea?', 0)
INSERT [dbo].[SurveyQuestions] ([QuestionId], [QuestionDescription], [QuestionText], [QuestionType]) VALUES (12, N'Symptoms of inflammatory bowel disease are associated with a higher risk of rheumatoid arthritis.', N' Do you have a history of inflammatory bowel disease (Crohn’s Disease or Ulcerative Colitis) diagnosed by a gastroenterologist? OR have you had chronic diarrhea (longer than 3 weeks) associated with blood and/or unintended weight loss?', 0)
INSERT [dbo].[SurveyQuestions] ([QuestionId], [QuestionDescription], [QuestionText], [QuestionType]) VALUES (13, N'Inflammatory bowel disease (IBD) refers to chronic inflammation of the colon and small intestine. Symptoms may include diarrhea associated with blood, unintended weight loss, pain and cramping.', N'Do you have a family history of any of the following?', 2)

update Answers set AnswerText = 'Inflammatory bowel disease' where AnswerId = 31
update Answers set AnswerImagePath = '../Images/Uveitis.jpg' where AnswerId = 17
update Answers set AnswerImagePath = '../Images/Enthesitis.jpeg' where AnswerId = 18
update Answers set AnswerImagePath = '../Images/Dactylitis.jpg' where AnswerId = 19
update Answers set AnswerImagePath = '../Images/Psoriasis.jpg' where AnswerId = 20
update Answers set AnswerImagePath = '../Images/PsoriasisNails.jpg' where AnswerId = 21
update Answers set AnswerText = 'Psoriasis nails' where AnswerId = 21

update Answers set AnswerImagePath = '../Images/arthritis.jpg' where QuestionId = 13