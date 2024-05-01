package com.umut.devops;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class Controller {

    @GetMapping("/getProjeBilgileri")
    public String getProjeBilgileri(){
        return "Glass: Spring boot github jenkins ve docker baglantisi\n";
    }


    @GetMapping("/getIsimler")
    public String getIsimler(){
        return "Umut Sefkan SAK <br></br> Samet EROĞLU <br></br> Taşkın KIŞLAK <br></br> ";
    }

    @GetMapping("/getAdminBilgileri")
    public String getAdminBilgileri(){
        return "Umut Sefkan Sak\n Yazilim Muhendisligi 3. Sınıf\n 02210224071";
    }



}
