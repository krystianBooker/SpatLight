﻿using spat.Models;
using System.Collections.Generic;
using System.Data;

namespace spat.Managers
{
    public interface IServerConnectionManager
    {
        List<QuestionModel> GetSurveyQuestions();
        List<AnswerModel> GetSurveyAnswers(int QuestionId);
        DataTable ValidateLoginCredentials(string username, string password);
        void SaveSurveyQuestions(List<QuestionModel> questionList, List<AnswerModel> AnswerList);
        List<Stats> GetAnswerStats();
    }
}