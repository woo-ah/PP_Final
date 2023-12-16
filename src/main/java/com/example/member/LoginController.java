package com.example.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping(value = "/login")
public class LoginController {

    @Autowired
    UserServiceImpl service;
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "login";
    }
    @RequestMapping(value="/loginOk",method=RequestMethod.POST)
    public String loginCheck(HttpSession session, UserVO vo){
        String returnURL = "";
        if ( session.getAttribute("login") != null ){
            session.removeAttribute("login");
        }


        UserVO loginvo = service.getUser(vo);
        if ( loginvo != null ){ // 濡쒓렇�씤 �꽦怨�
            System.out.println("濡쒓렇�씤 �꽦怨�!");
            session.setAttribute("login", loginvo);
            returnURL = "redirect:/board/list";
        } else { // 濡쒓렇�씤 �떎�뙣
            System.out.println("濡쒓렇�씤 �떎�뙣!");
            returnURL = "redirect:/login/login";
        }
        return returnURL;
    }

    // 濡쒓렇�븘�썐 �븯�뒗 遺�遺�
    @RequestMapping(value="/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/login/login";
    }
}
