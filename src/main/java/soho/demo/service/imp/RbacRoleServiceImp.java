package soho.demo.service.imp;

import com.soho.mybatis.crud.dao.MyBatisDAO;
import com.soho.mybatis.crud.service.imp.BaseServiceImp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import soho.demo.dao.RbacRoleDAO;
import soho.demo.domain.RbacRole;
import soho.demo.service.RbacRoleService;

@Service
public class RbacRoleServiceImp extends BaseServiceImp<RbacRole, Long> implements RbacRoleService {
    @Autowired
    private RbacRoleDAO rbacroleDAO;

    public MyBatisDAO<RbacRole, Long> getMybatisDAO() {
        return rbacroleDAO;
    }
}