package com.example.dao.impl;

import org.springframework.stereotype.Repository;

import com.example.dao.DictionaryDao;
import com.example.model.Dictionary;

@Repository
public class DictionaryDaoImpl extends GenericDaoImpl<Dictionary, Integer> implements DictionaryDao {}