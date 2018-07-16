package dbaccess;

public class UserDetails {
    private int userid;
    private int age;
    private String gender;

    public int getUserid(){
        return userid;
    }

    public void setUserid(int userid){
        this.userid = userid;
    }

    public int getAge(){
        return age;
    }

    public void setAge(int age){
        this.age = age;
    }

    public String getGender(){
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }
}


