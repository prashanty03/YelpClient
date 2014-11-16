/**
 * StatusVO.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package vo;

public class StatusVO  implements java.io.Serializable {
    private java.lang.Boolean isSuccessful;

    private java.lang.String messgge;

    public StatusVO() {
    }

    public StatusVO(
           java.lang.Boolean isSuccessful,
           java.lang.String messgge) {
           this.isSuccessful = isSuccessful;
           this.messgge = messgge;
    }


    /**
     * Gets the isSuccessful value for this StatusVO.
     * 
     * @return isSuccessful
     */
    public java.lang.Boolean getIsSuccessful() {
        return isSuccessful;
    }


    /**
     * Sets the isSuccessful value for this StatusVO.
     * 
     * @param isSuccessful
     */
    public void setIsSuccessful(java.lang.Boolean isSuccessful) {
        this.isSuccessful = isSuccessful;
    }


    /**
     * Gets the messgge value for this StatusVO.
     * 
     * @return messgge
     */
    public java.lang.String getMessgge() {
        return messgge;
    }


    /**
     * Sets the messgge value for this StatusVO.
     * 
     * @param messgge
     */
    public void setMessgge(java.lang.String messgge) {
        this.messgge = messgge;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof StatusVO)) return false;
        StatusVO other = (StatusVO) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            ((this.isSuccessful==null && other.getIsSuccessful()==null) || 
             (this.isSuccessful!=null &&
              this.isSuccessful.equals(other.getIsSuccessful()))) &&
            ((this.messgge==null && other.getMessgge()==null) || 
             (this.messgge!=null &&
              this.messgge.equals(other.getMessgge())));
        __equalsCalc = null;
        return _equals;
    }

    private boolean __hashCodeCalc = false;
    public synchronized int hashCode() {
        if (__hashCodeCalc) {
            return 0;
        }
        __hashCodeCalc = true;
        int _hashCode = 1;
        if (getIsSuccessful() != null) {
            _hashCode += getIsSuccessful().hashCode();
        }
        if (getMessgge() != null) {
            _hashCode += getMessgge().hashCode();
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(StatusVO.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://vo", "StatusVO"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("isSuccessful");
        elemField.setXmlName(new javax.xml.namespace.QName("http://vo", "isSuccessful"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "boolean"));
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("messgge");
        elemField.setXmlName(new javax.xml.namespace.QName("http://vo", "messgge"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
    }

    /**
     * Return type metadata object
     */
    public static org.apache.axis.description.TypeDesc getTypeDesc() {
        return typeDesc;
    }

    /**
     * Get Custom Serializer
     */
    public static org.apache.axis.encoding.Serializer getSerializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanSerializer(
            _javaType, _xmlType, typeDesc);
    }

    /**
     * Get Custom Deserializer
     */
    public static org.apache.axis.encoding.Deserializer getDeserializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanDeserializer(
            _javaType, _xmlType, typeDesc);
    }

}
