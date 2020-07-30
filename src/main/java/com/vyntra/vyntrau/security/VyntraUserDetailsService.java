package com.vyntra.vyntrau.security;

import java.util.List;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.vyntra.vyntrau.model.Vyntrauser;
import com.vyntra.vyntrau.repository.VyntraRepo;


@Service
public class VyntraUserDetailsService implements UserDetailsService{

	/*
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		return new VyntraUserDetails(username);
	}
	*/
	private final VyntraRepo vyntraRepo;

    //private final UserRepo userRepo;
    private final AuthGroupRepo authGroupRepo;
/*
    public VyntraUserDetailsService(UserRepo userRepo, AuthGroupRepo authGroupRepo) {
        super();
        this.userRepo = userRepo;
        this.authGroupRepo = authGroupRepo;
    }
  */  

    
    public VyntraUserDetailsService(VyntraRepo vyntraRepo, AuthGroupRepo authGroupRepo) {
        super();
        this.vyntraRepo = vyntraRepo;
        this.authGroupRepo = authGroupRepo;
    }
    
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Vyntrauser user = this.vyntraRepo.findByUsername(username);
        if (user == null) {
            throw new UsernameNotFoundException("No Such UserName:" + username);
           
        }
        List<AuthGroup> authGroups = this.authGroupRepo.findByUsername(username);
        return new UserPrincipal(user, authGroups);
    }

}
