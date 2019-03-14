package com.zhangying.po;

import java.io.Serializable;
import java.util.Date;

public class Users implements Serializable {
    private Long id;	//Ա�����
    private String username;//Ա���û���
    private String password;//��¼����
    private Byte sex;		//�Ա�
    private Date birthday;	//����
    private Date createtime;//����ʱ��
    private Byte isadmin;	//�Ƿ�Ϊ����Ա
    private String content;	//��Ա���
    public Users(Long id,String username, String password, Byte sex, Date birthday, Date createtime, Byte isadmin, String content) {
        this.id=id;
        this.username = username;
        this.password = password;
        this.sex = sex;
        this.birthday = birthday;
        this.createtime = createtime;
        this.isadmin = isadmin;
        this.content = content;
    }
    public Users() {
    }

    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return this.username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Byte getSex() {
        return this.sex;
    }

    public void setSex(Byte sex) {
        this.sex = sex;
    }

    public Date getBirthday() {
        return this.birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public Date getCreatetime() {
        return this.createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public Byte getIsadmin() {
        return this.isadmin;
    }

    public void setIsadmin(Byte isadmin) {
        this.isadmin = isadmin;
    }

    public String getContent() {
        return this.content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String toString() {
        StringBuffer toStr = new StringBuffer();
        toStr.append("[Users] = [\n");
        toStr.append("    id = " + this.id + ";\n");
        toStr.append("    username = " + this.username + ";\n");
        toStr.append("    password = " + this.password + ";\n");
        toStr.append("    sex = " + this.sex + ";\n");
        toStr.append("    birthday = " + this.birthday+ ";\n");
        toStr.append("    createtime = " + this.createtime+ ";\n");
        toStr.append("    isadmin = " + this.isadmin + ";\n");
        toStr.append("    content = " + this.content + ";\n");
        toStr.append("    ];\n");
        return toStr.toString();
    }
}
