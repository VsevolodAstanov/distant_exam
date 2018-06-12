package com.distant.system.service.daoservice;

import com.distant.system.dao.QuestionDao;
import com.distant.system.factory.Factory;
import com.distant.system.factory.FactoryImpl;
import com.distant.system.model.Question;

import java.util.ArrayList;
import java.util.List;

public class QuestionService {

    private Factory factory = new FactoryImpl();
    private QuestionDao questionDao = factory.createQuestionDao();

    public List<Question> getQuestions(String subject, String language) {
        return questionDao.getQuestions(subject, language);
    }

    public void add(Question question) {
        questionDao.add(question);
    }

    public Question find(int id) {
        return questionDao.find(id);
    }

    public void update(Question question){
        questionDao.update(question);
    }
}
