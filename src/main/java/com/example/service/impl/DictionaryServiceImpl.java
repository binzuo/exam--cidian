package com.example.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.example.dao.GenericDao;
import com.example.model.Dictionary;
import com.example.service.DictionaryService;

@Service
public class DictionaryServiceImpl extends GenericServiceImpl<Dictionary, Integer> implements DictionaryService {

    @Override
    @Autowired
    @Qualifier("dictionaryDaoImpl")
    public void setGenericDao(GenericDao<Dictionary, Integer> genericDao) {
        super.genericDao = genericDao;
    }
}