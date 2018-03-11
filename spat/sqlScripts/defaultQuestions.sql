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

insert into surveyQuestions(QuestionText, QuestionDescription, QuestionType)
values('What is your gender?','I dont know why this question is important',0)
insert into Answers(QuestionId,AnswerText,AnswerWeight)
values(1,'Male','0.5')
insert into Answers(QuestionId,AnswerText,AnswerWeight)
values(1,'Female','0')

insert into surveyQuestions(QuestionText, QuestionDescription, QuestionType)
values('At which age did the symptoms begin?','I dont know why this question is important',0)
insert into Answers(QuestionId,AnswerText,AnswerWeight)
values(2,'45','1')

insert into surveyQuestions(QuestionText, QuestionDescription, QuestionType)
values('Do you currently or have you smoked cigarettes in the past?','I dont know why this question is important',0)
insert into Answers(QuestionId,AnswerText,AnswerWeight)
values(3,'Yes','0.5')
insert into Answers(QuestionId,AnswerText,AnswerWeight)
values(3,'No','0')

insert into surveyQuestions(QuestionText, QuestionDescription, QuestionType)
values('Which joints are affected?','I dont know why this question is important',3)

insert into surveyQuestions(QuestionText, QuestionDescription, QuestionType)
values('Duration of joint symptoms','I dont know why this question is important',0)
insert into Answers(QuestionId,AnswerText,AnswerWeight)
values(5,'Less than 3 months','0')
insert into Answers(QuestionId,AnswerText,AnswerWeight)
values(5,'More than 3 months','?')

insert into surveyQuestions(QuestionText, QuestionDescription, QuestionType)
values('Do you have morning stiffness for more than one hour?','I dont know why this question is important',0)
insert into Answers(QuestionId,AnswerText,AnswerWeight)
values(6,'Yes','?')
insert into Answers(QuestionId,AnswerText,AnswerWeight)
values(6,'No','?')

insert into surveyQuestions(QuestionText, QuestionDescription, QuestionType)
values('Is pain and stiffness improved or worsened with activity?','I dont know why this question is important',0)
insert into Answers(QuestionId,AnswerText,AnswerWeight)
values(7,'Improved','?')
insert into Answers(QuestionId,AnswerText,AnswerWeight)
values(7,'Worse','?')

insert into surveyQuestions(QuestionText, QuestionDescription, QuestionType)
values('Is your pain relieved with hot showers/baths or heating pads?','I dont know why this question is important',0)
insert into Answers(QuestionId,AnswerText,AnswerWeight)
values(8,'Yes','?')
insert into Answers(QuestionId,AnswerText,AnswerWeight)
values(8,'No','?')

insert into surveyQuestions(QuestionText, QuestionDescription, QuestionType)
values('Do you have relief with Advil/Ibuprofen/Aleve/Naproxen/other NSAIDs?','I dont know why this question is important',0)
insert into Answers(QuestionId,AnswerText,AnswerWeight)
values(9,'Yes','?')
insert into Answers(QuestionId,AnswerText,AnswerWeight)
values(9,'No','?')

insert into surveyQuestions(QuestionText, QuestionDescription, QuestionType)
values('Have you ever had any of the following symptoms?','I dont know why this question is important',2)
insert into Answers(QuestionId,AnswerText,AnswerDescription,AnswerWeight,AnswerImagePath)
values(10,'Uveitis','Uveitis description','?','/Images/Disease.png')
insert into Answers(QuestionId,AnswerText,AnswerDescription,AnswerWeight,AnswerImagePath)
values(10,'Enthesitis','Enthesitis description','?','/Images/Disease.png')
insert into Answers(QuestionId,AnswerText,AnswerDescription,AnswerWeight,AnswerImagePath)
values(10,'Dactylitis','Dactylitis description','?','/Images/Disease.png')
insert into Answers(QuestionId,AnswerText,AnswerDescription,AnswerWeight,AnswerImagePath)
values(10,'Psoriasis','Psoriasis description','?','/Images/Disease.png')
insert into Answers(QuestionId,AnswerText,AnswerDescription,AnswerWeight,AnswerImagePath)
values(10,'Psoriatic nail changes','Psoriatic nail changes description','?','/Images/Disease.png')

insert into surveyQuestions(QuestionText, QuestionDescription, QuestionType)
values('One month prior to the onset of your symptoms, did you have an episode of urethritis, cervicitis, or infectious diarrhea?','I dont know why this question is important',0)
insert into Answers(QuestionId,AnswerText,AnswerWeight)
values(11,'Yes','1')
insert into Answers(QuestionId,AnswerText,AnswerWeight)
values(11,'No','0')

insert into surveyQuestions(QuestionText, QuestionDescription, QuestionType)
values('Do you have a history of inflammatory bowel disease (Crohn’s Disease or Ulcerative Colitis) diagnosed by a gastroenterologist?','I dont know why this question is important',0) -- This makes no sense
insert into Answers(QuestionId,AnswerText,AnswerDescription,AnswerWeight)
values(12,'Chronic diarrhea more than three weeks associated with blood and/or unintended weight loss?','this needs a description','?')

insert into surveyQuestions(QuestionText, QuestionDescription, QuestionType)
values('Do you have a family history of any of the following?','I dont know why this question is important',2)
insert into Answers(QuestionId,AnswerText,AnswerDescription,AnswerWeight, AnswerImagePath)
values(13,'Seronegative arthritis','Seronegative arthritis decription','?','/Images/Disease.png')
insert into Answers(QuestionId,AnswerText,AnswerDescription,AnswerWeight, AnswerImagePath)
values(13,'Ankylosing spondylitis','Ankylosing spondylitis decription','?','/Images/Disease.png')
insert into Answers(QuestionId,AnswerText,AnswerDescription,AnswerWeight, AnswerImagePath)
values(13,'Psoriasis','Psoriasis decription','?','/Images/Disease.png')
insert into Answers(QuestionId,AnswerText,AnswerDescription,AnswerWeight, AnswerImagePath)
values(13,'Psoriatic Arthritis','Psoriatic Arthritis decription','?','/Images/Disease.png')
insert into Answers(QuestionId,AnswerText,AnswerDescription,AnswerWeight, AnswerImagePath)
values(13,'Enteropathic arthritis','Enteropathic arthritis decription','?','/Images/Disease.png')
insert into Answers(QuestionId,AnswerText,AnswerDescription,AnswerWeight, AnswerImagePath)
values(13,'Inflammatory bowel disease Crohn’s Disease or Ulcerative Colitis','Inflammatory bowel disease Crohn’s Disease or Ulcerative Colitis decription','?','/Images/Disease.png')
insert into Answers(QuestionId,AnswerText,AnswerDescription,AnswerWeight, AnswerImagePath)
values(13,'Reactive arthritis','Reactive arthritis decription','?','/Images/Disease.png')