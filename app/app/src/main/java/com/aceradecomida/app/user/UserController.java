package com.aceradecomida.app.user;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(path="api/user")

public class UserController {

    @GetMapping
    public List<User> getUsers(){
        return List.of(new User(1, 1, "Israel", "Uchiha", "Aldea de Kanoha", "www.http"),
                new User(1, 2, "Pain", "Uchiha", "Aldea de Kanoha", "www.http")
        );
    }//getUsers

}//UserController
