// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package edu.cmucdu.ecommerce.dao.user;

import edu.cmucdu.ecommerce.dao.user.UserDetailDao;
import edu.cmucdu.ecommerce.domain.user.UserDetail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

privileged aspect UserDetailDao_Roo_Jpa_Repository {
    
    declare parents: UserDetailDao extends JpaRepository<UserDetail, Long>;
    
    declare parents: UserDetailDao extends JpaSpecificationExecutor<UserDetail>;
    
    declare @type: UserDetailDao: @Repository;
    
}