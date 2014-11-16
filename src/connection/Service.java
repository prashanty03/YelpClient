/**
 * Service.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package connection;

public interface Service extends java.rmi.Remote {
    public java.lang.String addElement(java.lang.String name, java.lang.String description, java.lang.String address, java.lang.String categoryName) throws java.rmi.RemoteException, exception.YelpException;
    public vo.UserVO login(java.lang.String email, java.lang.String password) throws java.rmi.RemoteException, exception.YelpException;
    public java.lang.String getPassword(java.lang.String username) throws java.rmi.RemoteException;
    public java.lang.String deleteElement(java.lang.String name) throws java.rmi.RemoteException, exception.YelpException;
    public java.lang.String addCategory(java.lang.String name, java.lang.String description) throws java.rmi.RemoteException, exception.YelpException;
    public java.lang.String deleteCategory(java.lang.String name) throws java.rmi.RemoteException, exception.YelpException;
    public java.lang.String updateElement(java.lang.String name, java.lang.String description, java.lang.String address, java.lang.String oldName) throws java.rmi.RemoteException, exception.YelpException;
    public java.lang.String updateCategory(java.lang.String name, java.lang.String description, java.lang.String categoryName) throws java.rmi.RemoteException, exception.YelpException;
    public vo.ElementVO[] getElementList(java.lang.String categoryName) throws java.rmi.RemoteException, exception.YelpException;
    public vo.StatusVO addReview(java.lang.String elementName, java.lang.String email, int rating, java.lang.String comment) throws java.rmi.RemoteException, exception.YelpException;
    public vo.ReviewVO[] getReviews(java.lang.String elementName) throws java.rmi.RemoteException, exception.YelpException;
    public vo.CategoryVO[] getCategoryList() throws java.rmi.RemoteException;
    public vo.StatusVO signUp(java.lang.String firstName, java.lang.String lastName, java.lang.String email, java.lang.String pwd) throws java.rmi.RemoteException, exception.YelpException;
}
