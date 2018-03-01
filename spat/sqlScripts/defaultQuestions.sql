--Question types:
--0: Radio buttons
--1: Text input
--2: Check box
--3: Fancy medical chart thing

delete from SurveyQuestions

insert into surveyQuestions(id, Question, Answer, QuestionDescription, Type)
values(1,'What is your gender?', '(Male,0.5) (Female,0)','I dont know why this question is important',0)

insert into surveyQuestions(id, Question, Answer, QuestionDescription, Type)
values(2,'At which age did the symptoms begin?', '(45,1)','I dont know why this question is important',1)

insert into surveyQuestions(id, Question, Answer, QuestionDescription, Type)
values(3,'Do you currently or have you smoked cigarettes in the past?', '(Yes,0.5) (No,0)','I dont know why this question is important',0)

insert into surveyQuestions(id, Question, Answer, QuestionDescription, Type)
values(4,'Which joints are affected?', '(?,?) (?,?)','I dont know why this question is important',3)
insert into surveyQuestions(id, Question, Answer, QuestionDescription, Type)
values(5,'Duration of joint symptoms', '(Less than 3 months,0) (More than 3 months,?)','I dont know why this question is important',0)

insert into surveyQuestions(id, Question, Answer, QuestionDescription, Type)
values(6,'Do you have morning stiffness for more than one hour?', '(Yes,?) (Female,?)','I dont know why this question is important',0)

insert into surveyQuestions(id, Question, Answer, QuestionDescription, Type)
values(7,'Is pain and stiffness improved or worsened with activity?', '(Improved,?) (Worse,?)','I dont know why this question is important',0)

insert into surveyQuestions(id, Question, Answer, QuestionDescription, Type)
values(8,'Is your pain relieved with hot showers/baths or heating pads?', '(Yes,?) (No,?)','I dont know why this question is important',0)

insert into surveyQuestions(id, Question, Answer, QuestionDescription, Type)
values(9,'Do you have relief with Advil/Ibuprofen/Aleve/Naproxen/other NSAIDs?', '(Yes,?) (No,?)','I dont know why this question is important',0)

insert into surveyQuestions(id, Question, Answer, QuestionDescription, Type)
values(10,'Have you ever had any of the following symptoms?', '(Uveitis,?,Description,ImageName) (Enthesitis,?,Description,ImageName) (Dactylitis,?,Description,ImageName) (Psoriasis,?,Description,ImageName) (Psoriatic nail changes,?,Description,ImageName)','I dont know why this question is important',2)

insert into surveyQuestions(id, Question, Answer, QuestionDescription, Type)
values(11,'One month prior to the onset of your symptoms, did you have an episode of urethritis, cervicitis, or infectious diarrhea?', '(Yes,1) (No,0)','I dont know why this question is important',0)

insert into surveyQuestions(id, Question, Answer, QuestionDescription, Type)
values(12,'Do you have a history of inflammatory bowel disease (Crohn’s Disease or Ulcerative Colitis) diagnosed by a gastroenterologist?', '(Chronic diarrhea more than three weeks associated with blood and/or unintended weight loss?,?)','I dont know why this question is important',0) -- This makes no sense

insert into surveyQuestions(id, Question, Answer, QuestionDescription, Type)
values(13,'Do you have a family history of any of the following?', '(Seronegative arthritis,?) (Ankylosing spondylitis,?) (Psoriasis,?) (Psoriatic Arthritis,?) (Enteropathic arthritis,?) (Inflammatory bowel disease Crohn’s Disease or Ulcerative Colitis,?) (Reactive arthritis,?)','I dont know why this question is important',2)