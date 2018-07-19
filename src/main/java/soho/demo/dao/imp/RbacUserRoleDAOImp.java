package soho.demo.dao.imp;

import com.soho.mybatis.crud.dao.imp.MyBatisDAOImp;
import org.springframework.stereotype.Repository;
import soho.demo.dao.RbacUserRoleDAO;
import soho.demo.domain.RbacUserRole;

@Repository
public class RbacUserRoleDAOImp extends MyBatisDAOImp<RbacUserRole> implements RbacUserRoleDAO {
}