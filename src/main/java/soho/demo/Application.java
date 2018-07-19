package soho.demo;

import com.soho.mybatis.crud.aconst.MODE;
import com.soho.mybatis.exception.BizErrorEx;
import com.soho.mybatis.sqlcode.condition.Cnd;
import com.soho.mybatis.sqlcode.condition.imp.SQLCnd;
import com.soho.mybatis.sqlcode.domain.Join;
import freemarker.template.utility.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import soho.demo.domain.RbacRole;
import soho.demo.domain.RbacUser;
import soho.demo.service.RbacRoleService;
import soho.demo.service.RbacUserService;

import java.util.HashMap;
import java.util.List;
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
        Map<String, Object> map = new HashMap<>();
        map.put("username", "张三");
        map.put("password", "123456");
//        Cnd sql1 = new SQLCnd().eq("username", "zhangsan").gt("age", 18);
//        Cnd sql2 = new SQLCnd().between("ctime", 1531843200000l, 1531929600000l).notnull("email");
//        Cnd sql3 = new SQLCnd().or(sql1, sql2).in("state", 1, 2, 3);
//        List<RbacUser> rbacUsers = rbacUserService.findByCnd(sql3);

        Cnd sql = new SQLCnd().fields("a.id", "a.name", "a.code").from("rbac_role a").join(new Join(MODE.LEFT, "rbac_user_role b").on("a.id", "b.roleId")).join(new Join(MODE.LEFT, "rbac_user c").on("b.userId", "c.id")).eq("c.id", 1l);
        List<RbacRole> rbacRoles = rbacUserService.findMapByCnd(sql, RbacRole.class);
        return map;
    }

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }

}