package soho.demo.service.imp;

import com.soho.mybatis.crud.dao.MyBatisDAO;
import com.soho.mybatis.crud.service.imp.BaseServiceImp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import soho.demo.dao.RbacUserRoleDAO;
import soho.demo.domain.RbacUserRole;
import soho.demo.service.RbacUserRoleService;

@Service
public class RbacUserRoleServiceImp extends BaseServiceImp<RbacUserRole, Long> implements RbacUserRoleService {
    @Autowired
    private RbacUserRoleDAO rbacuserroleDAO;

    public MyBatisDAO<RbacUserRole, Long> getMybatisDAO() {
        return rbacuserroleDAO;
    }
}