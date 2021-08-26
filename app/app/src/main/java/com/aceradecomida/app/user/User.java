package com.aceradecomida.app.user;

//Plain Old Java Object --POJO
//Usuario

public class User {
    private int id_usuario;
    private int id_orden;
    private String nombreUsuario;
    private String apellidoUsuario;
    private String direccion;
    private String fotoPerfil;

    public User(int id_usuario, int id_orden, String nombreUsuario, String apellidoUsuario, String direccion, String fotoPerfil) {
        this.id_usuario = id_usuario;
        this.id_orden = id_orden;
        this.nombreUsuario = nombreUsuario;
        this.apellidoUsuario = apellidoUsuario;
        this.direccion = direccion;
        this.fotoPerfil = fotoPerfil;
    }//Constructor

    public int getId_comensal() {
        return id_usuario;
    }//getId_comensal

    public void setId_comensal(int id_comensal) {
        this.id_usuario = id_comensal;
    }//setId_comensal

    public int getId_orden() {
        return id_orden;
    }//getId_orden

    public void setId_orden(int id_orden) {
        this.id_orden = id_orden;
    }//setId_orden

    public String getNombreUsuario() {
        return nombreUsuario;
    }//getNombreUsuario

    public void setNombreUsuario(String nombreUsuario) {
        this.nombreUsuario = nombreUsuario;
    }//setNombreUsuario

    public String getApellidoUsuario() {
        return apellidoUsuario;
    }//getApellidoUsuario

    public void setApellidoUsuario(String apellidoUsuario) {
        this.apellidoUsuario = apellidoUsuario;
    }//setApellidoUsuario

    public String getDireccion() {
        return direccion;
    }//getDireccion

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }//setDireccion

    public String getFotoPerfil() {
        return fotoPerfil;
    }//getFotoPerfil

    public void setFotoPerfil(String fotoPerfil) {
        this.fotoPerfil = fotoPerfil;
    }//setFotoPerfil

    @Override
    public String toString() {
        return "User{" +
                "id_comensal=" + id_usuario +
                ", id_orden=" + id_orden +
                ", nombreUsuario='" + nombreUsuario + '\'' +
                ", apellidoUsuario='" + apellidoUsuario + '\'' +
                ", direccion='" + direccion + '\'' +
                ", fotoPerfil='" + fotoPerfil + '\'' +
                '}';
    }//toString

}//class User





