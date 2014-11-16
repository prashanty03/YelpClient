/**
 * ReviewVO.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package vo;

public class ReviewVO  implements java.io.Serializable {
    private java.lang.String comment;

    private java.lang.Integer elementId;

    private java.lang.String elementName;

    private java.lang.String email;

    private java.lang.Long id;

    private java.lang.Long rating;

    private java.lang.String submittedOn;

    public ReviewVO() {
    }

    public ReviewVO(
           java.lang.String comment,
           java.lang.Integer elementId,
           java.lang.String elementName,
           java.lang.String email,
           java.lang.Long id,
           java.lang.Long rating,
           java.lang.String submittedOn) {
           this.comment = comment;
           this.elementId = elementId;
           this.elementName = elementName;
           this.email = email;
           this.id = id;
           this.rating = rating;
           this.submittedOn = submittedOn;
    }


    /**
     * Gets the comment value for this ReviewVO.
     * 
     * @return comment
     */
    public java.lang.String getComment() {
        return comment;
    }


    /**
     * Sets the comment value for this ReviewVO.
     * 
     * @param comment
     */
    public void setComment(java.lang.String comment) {
        this.comment = comment;
    }


    /**
     * Gets the elementId value for this ReviewVO.
     * 
     * @return elementId
     */
    public java.lang.Integer getElementId() {
        return elementId;
    }


    /**
     * Sets the elementId value for this ReviewVO.
     * 
     * @param elementId
     */
    public void setElementId(java.lang.Integer elementId) {
        this.elementId = elementId;
    }


    /**
     * Gets the elementName value for this ReviewVO.
     * 
     * @return elementName
     */
    public java.lang.String getElementName() {
        return elementName;
    }


    /**
     * Sets the elementName value for this ReviewVO.
     * 
     * @param elementName
     */
    public void setElementName(java.lang.String elementName) {
        this.elementName = elementName;
    }


    /**
     * Gets the email value for this ReviewVO.
     * 
     * @return email
     */
    public java.lang.String getEmail() {
        return email;
    }


    /**
     * Sets the email value for this ReviewVO.
     * 
     * @param email
     */
    public void setEmail(java.lang.String email) {
        this.email = email;
    }


    /**
     * Gets the id value for this ReviewVO.
     * 
     * @return id
     */
    public java.lang.Long getId() {
        return id;
    }


    /**
     * Sets the id value for this ReviewVO.
     * 
     * @param id
     */
    public void setId(java.lang.Long id) {
        this.id = id;
    }


    /**
     * Gets the rating value for this ReviewVO.
     * 
     * @return rating
     */
    public java.lang.Long getRating() {
        return rating;
    }


    /**
     * Sets the rating value for this ReviewVO.
     * 
     * @param rating
     */
    public void setRating(java.lang.Long rating) {
        this.rating = rating;
    }


    /**
     * Gets the submittedOn value for this ReviewVO.
     * 
     * @return submittedOn
     */
    public java.lang.String getSubmittedOn() {
        return submittedOn;
    }


    /**
     * Sets the submittedOn value for this ReviewVO.
     * 
     * @param submittedOn
     */
    public void setSubmittedOn(java.lang.String submittedOn) {
        this.submittedOn = submittedOn;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof ReviewVO)) return false;
        ReviewVO other = (ReviewVO) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            ((this.comment==null && other.getComment()==null) || 
             (this.comment!=null &&
              this.comment.equals(other.getComment()))) &&
            ((this.elementId==null && other.getElementId()==null) || 
             (this.elementId!=null &&
              this.elementId.equals(other.getElementId()))) &&
            ((this.elementName==null && other.getElementName()==null) || 
             (this.elementName!=null &&
              this.elementName.equals(other.getElementName()))) &&
            ((this.email==null && other.getEmail()==null) || 
             (this.email!=null &&
              this.email.equals(other.getEmail()))) &&
            ((this.id==null && other.getId()==null) || 
             (this.id!=null &&
              this.id.equals(other.getId()))) &&
            ((this.rating==null && other.getRating()==null) || 
             (this.rating!=null &&
              this.rating.equals(other.getRating()))) &&
            ((this.submittedOn==null && other.getSubmittedOn()==null) || 
             (this.submittedOn!=null &&
              this.submittedOn.equals(other.getSubmittedOn())));
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
        if (getComment() != null) {
            _hashCode += getComment().hashCode();
        }
        if (getElementId() != null) {
            _hashCode += getElementId().hashCode();
        }
        if (getElementName() != null) {
            _hashCode += getElementName().hashCode();
        }
        if (getEmail() != null) {
            _hashCode += getEmail().hashCode();
        }
        if (getId() != null) {
            _hashCode += getId().hashCode();
        }
        if (getRating() != null) {
            _hashCode += getRating().hashCode();
        }
        if (getSubmittedOn() != null) {
            _hashCode += getSubmittedOn().hashCode();
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(ReviewVO.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://vo", "ReviewVO"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("comment");
        elemField.setXmlName(new javax.xml.namespace.QName("http://vo", "comment"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("elementId");
        elemField.setXmlName(new javax.xml.namespace.QName("http://vo", "elementId"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("elementName");
        elemField.setXmlName(new javax.xml.namespace.QName("http://vo", "elementName"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("email");
        elemField.setXmlName(new javax.xml.namespace.QName("http://vo", "email"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("id");
        elemField.setXmlName(new javax.xml.namespace.QName("http://vo", "id"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "long"));
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("rating");
        elemField.setXmlName(new javax.xml.namespace.QName("http://vo", "rating"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "long"));
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("submittedOn");
        elemField.setXmlName(new javax.xml.namespace.QName("http://vo", "submittedOn"));
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
