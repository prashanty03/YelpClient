package connection;

public class ServiceProxy implements connection.Service {
  private String _endpoint = null;
  private connection.Service service = null;
  
  public ServiceProxy() {
    _initServiceProxy();
  }
  
  public ServiceProxy(String endpoint) {
    _endpoint = endpoint;
    _initServiceProxy();
  }
  
  private void _initServiceProxy() {
    try {
      service = (new connection.ServiceServiceLocator()).getService();
      if (service != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)service)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)service)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (service != null)
      ((javax.xml.rpc.Stub)service)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public connection.Service getService() {
    if (service == null)
      _initServiceProxy();
    return service;
  }
  
  public java.lang.String addElement(java.lang.String name, java.lang.String description, java.lang.String address, java.lang.String categoryName) throws java.rmi.RemoteException, exception.YelpException{
    if (service == null)
      _initServiceProxy();
    return service.addElement(name, description, address, categoryName);
  }
  
  public vo.UserVO login(java.lang.String email, java.lang.String password) throws java.rmi.RemoteException, exception.YelpException{
    if (service == null)
      _initServiceProxy();
    return service.login(email, password);
  }
  
  public java.lang.String getPassword(java.lang.String username) throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.getPassword(username);
  }
  
  public java.lang.String deleteElement(java.lang.String name) throws java.rmi.RemoteException, exception.YelpException{
    if (service == null)
      _initServiceProxy();
    return service.deleteElement(name);
  }
  
  public java.lang.String addCategory(java.lang.String name, java.lang.String description) throws java.rmi.RemoteException, exception.YelpException{
    if (service == null)
      _initServiceProxy();
    return service.addCategory(name, description);
  }
  
  public java.lang.String deleteCategory(java.lang.String name) throws java.rmi.RemoteException, exception.YelpException{
    if (service == null)
      _initServiceProxy();
    return service.deleteCategory(name);
  }
  
  public java.lang.String updateElement(java.lang.String name, java.lang.String description, java.lang.String address, java.lang.String oldName) throws java.rmi.RemoteException, exception.YelpException{
    if (service == null)
      _initServiceProxy();
    return service.updateElement(name, description, address, oldName);
  }
  
  public java.lang.String updateCategory(java.lang.String name, java.lang.String description, java.lang.String categoryName) throws java.rmi.RemoteException, exception.YelpException{
    if (service == null)
      _initServiceProxy();
    return service.updateCategory(name, description, categoryName);
  }
  
  public vo.ElementVO[] getElementList(java.lang.String categoryName) throws java.rmi.RemoteException, exception.YelpException{
    if (service == null)
      _initServiceProxy();
    return service.getElementList(categoryName);
  }
  
  public vo.StatusVO addReview(java.lang.String elementName, java.lang.String email, int rating, java.lang.String comment) throws java.rmi.RemoteException, exception.YelpException{
    if (service == null)
      _initServiceProxy();
    return service.addReview(elementName, email, rating, comment);
  }
  
  public vo.ReviewVO[] getReviews(java.lang.String elementName) throws java.rmi.RemoteException, exception.YelpException{
    if (service == null)
      _initServiceProxy();
    return service.getReviews(elementName);
  }
  
  public vo.CategoryVO[] getCategoryList() throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.getCategoryList();
  }
  
  public vo.StatusVO signUp(java.lang.String firstName, java.lang.String lastName, java.lang.String email, java.lang.String pwd) throws java.rmi.RemoteException, exception.YelpException{
    if (service == null)
      _initServiceProxy();
    return service.signUp(firstName, lastName, email, pwd);
  }
  
  
}