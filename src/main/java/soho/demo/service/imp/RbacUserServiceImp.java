package soho.demo.service.imp;

import com.soho.mybatis.crud.dao.MyBatisDAO;
import com.soho.mybatis.crud.service.imp.BaseServiceImp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import soho.demo.dao.RbacUserDAO;
import soho.demo.domain.RbacUser;
import soho.demo.service.RbacUserService;

@Service
public class RbacUserServiceImp extends BaseServiceImp<RbacUser, Long> implements RbacUserService {
    @Autowired
    private RbacUserDAO rbacuserDAO;

    public MyBatisDAO<RbacUser, Long> getMybatisDAO() {
        return rbacuserDAO;
    }
}