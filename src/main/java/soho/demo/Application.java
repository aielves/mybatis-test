package soho.demo;

import com.soho.mybatis.exception.BizErrorEx;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import soho.demo.service.RbacUserService;

import java.util.HashMap;
import java.util.Map;

@Controller
@SpringBootApplication
@EnableAutoConfiguration
@ComponentScan(basePackages = {"com.soho", "soho.demo"})
public class Application {

    @Autowired
    private RbacUserService rbacUserService;

    @ResponseBody
    @RequestMapping("/test")
    public Object test() throws BizErrorEx {
        System.out.println(rbacUserService);
        Map<String, Object> map = new HashMap<>();
        map.put("username", "张三");
        map.put("password", "123456");
        map.put("friends", rbacUserService.countAll());
        return map;
    }

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }

}