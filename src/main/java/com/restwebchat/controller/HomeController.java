package com.restwebchat.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
* Created with IntelliJ IDEA.
* User: theon
* Date: 8/24/16
* Time: 10:01 AM
* To change this template use File | Settings | File Templates.
*/

@Controller
public class HomeController {

//    @Autowired
    private List<User> users = new ArrayList<User>();
    private Data userData = new Data();


    @RequestMapping(value="/login", method = RequestMethod.GET )
    public ModelAndView login() {
        return new ModelAndView("login");

    }
    @RequestMapping(value="/addUsers{data}", method = RequestMethod.POST )
    public ModelAndView addUsers(@RequestBody String data) {


        ObjectMapper mapper = new ObjectMapper();
        Data items = null;
        try {
            items = mapper.readValue(data, Data.class);
        } catch (IOException e) {
            e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
        }
        System.out.println(items);

        return new ModelAndView("addUsers");

    }
    @RequestMapping(value="/addUsers/add", method = RequestMethod.GET )
    public ModelAndView add() {

        ModelAndView model = new ModelAndView("addUsers");
        model.addObject("usr_sgn_p_pwd","vouchfor00");
        return model;

    }
    @RequestMapping(value="/logUsersToChat{data}", method = RequestMethod.POST )
    public ModelAndView logUsersToChat(@RequestBody String data) {


        ObjectMapper chatMapper = new ObjectMapper();
//        User users = null;
        try {
            userData = chatMapper.readValue(data, Data.class);
            User user = new User();
            user = userData.getItems().get(0).getUser();
            users.add(1,user);
        } catch (IOException e) {
            e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
        }
//        System.out.println(users);
//        items.setCurrent_page(data.getCurrent_page());
//        String name = data;
//        getDialogUser("LeoC");
        return new ModelAndView("chatNew");
//        return getDialogUser("LeoC");

    }

    @RequestMapping(value="/logUsers{data}", method = RequestMethod.POST )
    public ModelAndView logUsers(@RequestBody String data) {


        ObjectMapper mapper = new ObjectMapper();
//        User users = null;
        try {
            users.add(0, mapper.readValue(data, User.class));
        } catch (IOException e) {
            e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
        }
        return new ModelAndView("getDialogUser");

    }

    @RequestMapping(value="/error", method = RequestMethod.GET)
    public ModelAndView error(){
        ModelAndView model = new ModelAndView("error");
        model.addObject("error","User not found.");
        model.addObject("error2","Maybe user has not been added to VouchFor Chat Engine.");
        model.addObject("error3","Please contact VouchFor during business hours to enquire about this user.");
        return model;
    }

    @RequestMapping(value="/chatNew/chat", method = RequestMethod.GET )
    public ModelAndView chatNew() {

        String userId = users.get(0).getId();
        String login = users.get(0).getLogin();

        String chatUserId = users.get(1).getId();
        String chatLogin = users.get(1).getLogin();

//        String user = "user3";
        ModelAndView model = new ModelAndView("chatNew");
        model.addObject("user","");
        model.addObject("id",userId);
        model.addObject("name","");
        model.addObject("login",login);
        model.addObject("pass","vouchfor00");

        model.addObject("secuser","");
        model.addObject("id",chatUserId);
        model.addObject("secname","");
        model.addObject("seclogin",chatLogin);
        model.addObject("secpass","vouchfor00");

        return model;


    }


    @RequestMapping(value="/chatNew/{user}", method = RequestMethod.GET )
    public ModelAndView chatNew(@PathVariable String user) {

//        String user = "user3";
        ModelAndView model = new ModelAndView("chatNew");
        model.addObject("user",user);
        model.addObject("id","17098034");
        model.addObject("name","");
        model.addObject("login","arelc@vouchfor.com.au");
        model.addObject("pass","vouchfor00");
        return model;

    }

    @RequestMapping(value="/loginUser/{user}/", method = RequestMethod.GET )
    public ModelAndView loginUser(@PathVariable String user) {

        String password = "vouchfor00";
        ModelAndView model = new ModelAndView("loginUsers");
        model.addObject("usr_sgn_n_lgn",user);
        model.addObject("usr_sgn_n_pwd",password);
        return model;

    }
    @RequestMapping(value="/getUserToChat", method = RequestMethod.GET )
    public ModelAndView getUserToChat() {

        String password = "vouchfor00";
        ModelAndView model = new ModelAndView("getDialogUser");
        model.addObject("userLogin","Leo Coutinho");
//        model.addObject("usr_sgn_n_pwd",password);
        return model;

    }

    @RequestMapping(value="/getUser/{user}/", method = RequestMethod.GET )
    public ModelAndView getUser(@PathVariable String user) {

        String password = "vouchfor00";
        ModelAndView model = new ModelAndView("getUser");
        model.addObject("userLogin",user);
//        model.addObject("usr_sgn_n_pwd",password);
        return model;

    }

    @RequestMapping(value="/getDialogUser/{user}/", method = RequestMethod.GET )
    public ModelAndView getDialogUser(@PathVariable String user) {

        String password = "vouchfor00";
        ModelAndView model = new ModelAndView("getDialogUser");
        model.addObject("userLogin",user);
//        model.addObject("usr_sgn_n_pwd",password);
        return model;

    }

    @RequestMapping(value="/newPage/{user}", method = RequestMethod.GET )
    public ModelAndView newPage(@PathVariable String user) {

//        String user = "user3";
        ModelAndView model = new ModelAndView("newPage");
        model.addObject("user",user);
        return model;

    }


}
