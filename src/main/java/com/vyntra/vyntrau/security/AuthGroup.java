package com.vyntra.vyntrau.security;

import java.io.Serializable;

import javax.persistence.*;

import com.vyntra.vyntrau.model.Vyntrauser;

@Entity
@Table(name = "AUTH_USER_GROUP")
public class AuthGroup implements Serializable{
    @Id
    @Column(name = "USERNAME",unique=true)
    private String username;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getAuthgroup() {
		return authgroup;
	}

	public void setAuthgroup(String authgroup) {
		this.authgroup = authgroup;
	}

	@Column(name = "AUTH_GROUP")
    private String authgroup;
	
    
	 public AuthGroup() {
		// TODO Auto-generated constructor stub
	}
    public AuthGroup(String username, String authgroup) {
        this.username = username;
        this.authgroup = authgroup;
    }

}
