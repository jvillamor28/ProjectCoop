/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.catapult.spring.shoping.auth;

import com.catapult.spring.shoping.common.Criteria;
import com.catapult.spring.shoping.common.EntityDAO;
import com.catapult.spring.shoping.dao.DAORepository;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;


/**
 *
 * @author jc
 */
@Service
public class UserService implements UserDetailsService {

    @Resource(name="shopingrepository")
    private DAORepository repository;
    
    /**
     *
     * @param username
     * @return
     * @throws UsernameNotFoundException
     * @throws Exception
     */
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        
        EntityDAO<AppUserDetails> userCredentialDao = repository.lookup(AppUserDetails.class);
        
        List<GrantedAuthority> authorities = new ArrayList();
        authorities.add(new SimpleGrantedAuthority(username.toUpperCase()));
        AppUserDetails currentUser = new AppUserDetails();
        
        try {
            currentUser = userCredentialDao.single(Criteria.where("username").equal(username));    
        } catch(Exception e) { 
            throw new UsernameNotFoundException(e.getMessage());
        }
        
        return currentUser;
    }
    
}
