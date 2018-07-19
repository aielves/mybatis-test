package soho.demo.dao.imp;

import com.soho.mybatis.crud.dao.imp.MyBatisDAOImp;
import org.springframework.stereotype.Repository;
import soho.demo.dao.RbacRoleDAO;
import soho.demo.domain.RbacRole;

@Repository
public class RbacRoleDAOImp extends MyBatisDAOImp<RbacRole> implements RbacRoleDAO {
}