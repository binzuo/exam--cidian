package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import com.example.model.Dictionary;
import com.example.service.DictionaryService;

@Controller
@RequestMapping("dictionary")
public class DictionaryController extends BaseController {

    private final DictionaryService dictionaryService;

    @Autowired
    public DictionaryController(DictionaryService dictionaryService) {
        this.dictionaryService = dictionaryService;
    }

    @RequestMapping("add")
    private String add(Dictionary dictionary) {
        dictionaryService.add(dictionary);
        return "redirect:/dictionary/list";
    }

    @RequestMapping("remove/{id}")
    private String remove(@PathVariable("id") Integer id) {
        dictionaryService.remove(id);
        return "redirect:/dictionary/list";
    }

    @RequestMapping("modify")
    private String modify(Dictionary dictionary) {
        dictionaryService.modify(dictionary);
        return "redirect:/dictionary/list";
    }

    @RequestMapping("list/{page}")
    private String list(@PathVariable int page) {
        getSession().setAttribute("pagination", dictionaryService.list(page));
        return "redirect:/dictionary/list.jsp";
    }

    @RequestMapping("list")
    private String list() {
        return list(1);
    }

    @RequestMapping("search/{id}")
    private String search(@PathVariable("id") Integer id){
        getSession().setAttribute("dictionary", dictionaryService.search(id));
        return "redirect:/dictionary/edit.jsp";
    }
    @RequestMapping("queryAll")
    private String queryAll(@RequestParam String string) {
        getSession().setAttribute("dictionary", dictionaryService.queryAll("queryAll",new Dictionary(null,string,string,null,null)));
        return "redirect:/user.jsp";
    }

}