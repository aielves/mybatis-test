package soho.demo.dao.imp;

import com.soho.mybatis.crud.dao.imp.MyBatisDAOImp;
import org.springframework.stereotype.Repository;
import soho.demo.dao.RbacUserDAO;
import soho.demo.domain.RbacUser;

@Repository
public class RbacUserDAOImp extends MyBatisDAOImp<RbacUser> implements RbacUserDAO {
}