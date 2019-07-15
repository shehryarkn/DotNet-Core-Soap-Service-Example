<?xml version="1.0"?>

-<wsdl:definitions xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" name="ISampleService" targetNamespace="http://tempuri.org/" xmlns:wsam="http://www.w3.org/2007/05/addressing/metadata" xmlns:tns="http://tempuri.org/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:http="http://schemas.microsoft.com/ws/06/2004/policy/http" xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd" xmlns:wsp="http://schemas.xmlsoap.org/ws/2004/09/policy" xmlns:msc="http://schemas.microsoft.com/ws/2005/12/wsdl/contract" xmlns:xsd="http://www.w3.org/2001/XMLSchema">


-<wsdl:types>


-<xs:schema targetNamespace="http://tempuri.org/" elementFormDefault="qualified" xmlns:xs="http://www.w3.org/2001/XMLSchema">

<xs:import namespace="http://schemas.microsoft.com/2003/10/Serialization/Arrays"/>

<xs:import namespace="http://schemas.datacontract.org/2004/07/System"/>


-<xs:element name="Test">


-<xs:complexType>


-<xs:sequence>

<xs:element name="s" type="xs:string" maxOccurs="1" minOccurs="0"/>

</xs:sequence>

</xs:complexType>

</xs:element>


-<xs:element name="TestResponse">


-<xs:complexType>


-<xs:sequence>

<xs:element name="TestResult" type="xs:string" maxOccurs="1" minOccurs="0"/>

</xs:sequence>

</xs:complexType>

</xs:element>


-<xs:element name="XmlMethod">


-<xs:complexType>


-<xs:sequence>


-<xs:element name="xml" maxOccurs="1" minOccurs="0">


-<xs:complexType mixed="true">


-<xs:sequence>

<xs:any/>

</xs:sequence>

</xs:complexType>

</xs:element>

</xs:sequence>

</xs:complexType>

</xs:element>


-<xs:element name="XmlMethodResponse">


-<xs:complexType>

<xs:sequence/>

</xs:complexType>

</xs:element>


-<xs:element name="TestCustomModel">


-<xs:complexType>


-<xs:sequence>

<xs:element name="inputModel" type="tns:MyCustomModel" maxOccurs="1" minOccurs="0"/>

</xs:sequence>

</xs:complexType>

</xs:element>


-<xs:element name="TestCustomModelResponse">


-<xs:complexType>


-<xs:sequence>

<xs:element name="TestCustomModelResult" type="tns:MyCustomModel" maxOccurs="1" minOccurs="0"/>

</xs:sequence>

</xs:complexType>

</xs:element>


-<xs:complexType name="MyCustomModel">


-<xs:sequence>

<xs:element name="Id" type="xs:int" maxOccurs="1" minOccurs="1"/>

<xs:element name="Name" type="xs:string" maxOccurs="1" minOccurs="0"/>

<xs:element name="Email" type="xs:string" maxOccurs="1" minOccurs="0"/>

</xs:sequence>

</xs:complexType>

<xs:element name="MyCustomModel" type="tns:MyCustomModel" nillable="true"/>

</xs:schema>

</wsdl:types>


-<wsdl:message name="ISampleService_Test_InputMessage">

<wsdl:part name="parameters" element="tns:Test"/>

</wsdl:message>


-<wsdl:message name="ISampleService_Test_OutputMessage">

<wsdl:part name="parameters" element="tns:TestResponse"/>

</wsdl:message>


-<wsdl:message name="ISampleService_XmlMethod_InputMessage">

<wsdl:part name="parameters" element="tns:XmlMethod"/>

</wsdl:message>


-<wsdl:message name="ISampleService_XmlMethod_OutputMessage">

<wsdl:part name="parameters" element="tns:XmlMethodResponse"/>

</wsdl:message>


-<wsdl:message name="ISampleService_TestCustomModel_InputMessage">

<wsdl:part name="parameters" element="tns:TestCustomModel"/>

</wsdl:message>


-<wsdl:message name="ISampleService_TestCustomModel_OutputMessage">

<wsdl:part name="parameters" element="tns:TestCustomModelResponse"/>

</wsdl:message>


-<wsdl:portType name="ISampleService">


-<wsdl:operation name="Test">

<wsdl:input message="tns:ISampleService_Test_InputMessage"/>

<wsdl:output message="tns:ISampleService_Test_OutputMessage"/>

</wsdl:operation>


-<wsdl:operation name="XmlMethod">

<wsdl:input message="tns:ISampleService_XmlMethod_InputMessage"/>

<wsdl:output message="tns:ISampleService_XmlMethod_OutputMessage"/>

</wsdl:operation>


-<wsdl:operation name="TestCustomModel">

<wsdl:input message="tns:ISampleService_TestCustomModel_InputMessage"/>

<wsdl:output message="tns:ISampleService_TestCustomModel_OutputMessage"/>

</wsdl:operation>

</wsdl:portType>


-<wsdl:binding name="BasicHttpBinding_ISampleService" type="tns:ISampleService">

<soap:binding transport="http://schemas.xmlsoap.org/soap/http"/>


-<wsdl:operation name="Test">

<soap:operation style="document" soapAction="http://tempuri.org/ISampleService/Test"/>


-<wsdl:input>

<soap:body use="literal"/>

</wsdl:input>


-<wsdl:output>

<soap:body use="literal"/>

</wsdl:output>

</wsdl:operation>


-<wsdl:operation name="XmlMethod">

<soap:operation style="document" soapAction="http://tempuri.org/ISampleService/XmlMethod"/>


-<wsdl:input>

<soap:body use="literal"/>

</wsdl:input>


-<wsdl:output>

<soap:body use="literal"/>

</wsdl:output>

</wsdl:operation>


-<wsdl:operation name="TestCustomModel">

<soap:operation style="document" soapAction="http://tempuri.org/ISampleService/TestCustomModel"/>


-<wsdl:input>

<soap:body use="literal"/>

</wsdl:input>


-<wsdl:output>

<soap:body use="literal"/>

</wsdl:output>

</wsdl:operation>

</wsdl:binding>


-<wsdl:service name="ISampleService">


-<wsdl:port name="BasicHttpBinding_ISampleService" binding="tns:BasicHttpBinding_ISampleService">

<soap:address location="https://localhost:44328/Service.asmx"/>

</wsdl:port>

</wsdl:service>

</wsdl:definitions>
