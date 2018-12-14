.class public Lorg/fourthline/cling/transport/impl/GENAEventProcessorImpl;
.super Ljava/lang/Object;
.source "GENAEventProcessorImpl.java"

# interfaces
.implements Lorg/fourthline/cling/transport/spi/GENAEventProcessor;
.implements Lorg/xml/sax/ErrorHandler;


# static fields
.field private static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lorg/fourthline/cling/transport/spi/GENAEventProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/transport/impl/GENAEventProcessorImpl;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected createDocumentBuilderFactory()Ljavax/xml/parsers/DocumentBuilderFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/FactoryConfigurationError;
        }
    .end annotation

    .line 54
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    return-object v0
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 213
    throw p1
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 217
    throw p1
.end method

.method protected getMessageBody(Lorg/fourthline/cling/model/message/UpnpMessage;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/UnsupportedDataException;
        }
    .end annotation

    .line 185
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/UpnpMessage;->isBodyNonEmptyString()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lorg/fourthline/cling/model/UnsupportedDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t transform null or non-string/zero-length body of: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/fourthline/cling/model/UnsupportedDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/UpnpMessage;->getBodyString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getUnprefixedNodeName(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1

    .line 203
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 205
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public readBody(Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/UnsupportedDataException;
        }
    .end annotation

    .line 84
    sget-object v0, Lorg/fourthline/cling/transport/impl/GENAEventProcessorImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading body of: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 85
    sget-object v0, Lorg/fourthline/cling/transport/impl/GENAEventProcessorImpl;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    sget-object v0, Lorg/fourthline/cling/transport/impl/GENAEventProcessorImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "===================================== GENA BODY BEGIN ============================================"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 87
    sget-object v0, Lorg/fourthline/cling/transport/impl/GENAEventProcessorImpl;->log:Ljava/util/logging/Logger;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;->getBody()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;->getBody()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 88
    sget-object v0, Lorg/fourthline/cling/transport/impl/GENAEventProcessorImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "-===================================== GENA BODY END ============================================"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 91
    :cond_1
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/transport/impl/GENAEventProcessorImpl;->getMessageBody(Lorg/fourthline/cling/model/message/UpnpMessage;)Ljava/lang/String;

    move-result-object v0

    .line 94
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/GENAEventProcessorImpl;->createDocumentBuilderFactory()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    const/4 v2, 0x1

    .line 95
    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 96
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 97
    invoke-virtual {v1, p0}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 99
    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 103
    invoke-virtual {p0, v1}, Lorg/fourthline/cling/transport/impl/GENAEventProcessorImpl;->readPropertysetElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 105
    invoke-virtual {p0, v1, p1}, Lorg/fourthline/cling/transport/impl/GENAEventProcessorImpl;->readProperties(Lorg/w3c/dom/Element;Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 108
    new-instance v1, Lorg/fourthline/cling/model/UnsupportedDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t transform message payload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1, v0}, Lorg/fourthline/cling/model/UnsupportedDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;)V

    throw v1
.end method

.method protected readProperties(Lorg/w3c/dom/Element;Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;)V
    .locals 12

    .line 145
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 147
    invoke-virtual {p2}, Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;->getService()Lorg/fourthline/cling/model/meta/RemoteService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/RemoteService;->getStateVariables()[Lorg/fourthline/cling/model/meta/StateVariable;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 149
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 150
    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 152
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    goto :goto_4

    .line 155
    :cond_0
    invoke-virtual {p0, v3}, Lorg/fourthline/cling/transport/impl/GENAEventProcessorImpl;->getUnprefixedNodeName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "property"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 157
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v4, 0x0

    .line 159
    :goto_1
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v4, v6, :cond_4

    .line 160
    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 162
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    if-eq v7, v5, :cond_1

    goto :goto_3

    .line 165
    :cond_1
    invoke-virtual {p0, v6}, Lorg/fourthline/cling/transport/impl/GENAEventProcessorImpl;->getUnprefixedNodeName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    .line 166
    array-length v8, v0

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_3

    aget-object v10, v0, v9

    .line 167
    invoke-virtual {v10}, Lorg/fourthline/cling/model/meta/StateVariable;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 168
    sget-object v8, Lorg/fourthline/cling/transport/impl/GENAEventProcessorImpl;->log:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Reading state variable value: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 169
    invoke-static {v6}, Lorg/fourthline/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    .line 170
    invoke-virtual {p2}, Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;->getStateVariableValues()Ljava/util/List;

    move-result-object v7

    new-instance v8, Lorg/fourthline/cling/model/state/StateVariableValue;

    invoke-direct {v8, v10, v6}, Lorg/fourthline/cling/model/state/StateVariableValue;-><init>(Lorg/fourthline/cling/model/meta/StateVariable;Ljava/lang/Object;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method protected readPropertysetElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 2

    .line 122
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 123
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/transport/impl/GENAEventProcessorImpl;->getUnprefixedNodeName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "propertyset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    .line 124
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Root element was not \'propertyset\'"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected toString(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 194
    invoke-static {p1}, Lorg/fourthline/cling/model/XMLUtil;->documentToString(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v0, "\n"

    .line 195
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\r"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    return-object p1

    :cond_1
    :goto_1
    const/4 v0, 0x0

    .line 196
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 209
    sget-object v0, Lorg/fourthline/cling/transport/impl/GENAEventProcessorImpl;->log:Ljava/util/logging/Logger;

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void
.end method

.method public writeBody(Lorg/fourthline/cling/model/message/gena/OutgoingEventRequestMessage;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/UnsupportedDataException;
        }
    .end annotation

    .line 58
    sget-object v0, Lorg/fourthline/cling/transport/impl/GENAEventProcessorImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing body of: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 62
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v1, 0x1

    .line 63
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 64
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 65
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/impl/GENAEventProcessorImpl;->writePropertysetElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 67
    invoke-virtual {p0, v0, v1, p1}, Lorg/fourthline/cling/transport/impl/GENAEventProcessorImpl;->writeProperties(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/fourthline/cling/model/message/gena/OutgoingEventRequestMessage;)V

    .line 69
    sget-object v1, Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/impl/GENAEventProcessorImpl;->toString(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/fourthline/cling/model/message/gena/OutgoingEventRequestMessage;->setBody(Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V

    .line 71
    sget-object v0, Lorg/fourthline/cling/transport/impl/GENAEventProcessorImpl;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    sget-object v0, Lorg/fourthline/cling/transport/impl/GENAEventProcessorImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "===================================== GENA BODY BEGIN ============================================"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 73
    sget-object v0, Lorg/fourthline/cling/transport/impl/GENAEventProcessorImpl;->log:Ljava/util/logging/Logger;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/gena/OutgoingEventRequestMessage;->getBody()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 74
    sget-object p1, Lorg/fourthline/cling/transport/impl/GENAEventProcessorImpl;->log:Ljava/util/logging/Logger;

    const-string v0, "====================================== GENA BODY END ============================================="

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 78
    new-instance v0, Lorg/fourthline/cling/model/UnsupportedDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t transform message payload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/model/UnsupportedDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected writeProperties(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/fourthline/cling/model/message/gena/OutgoingEventRequestMessage;)V
    .locals 3

    .line 132
    invoke-virtual {p3}, Lorg/fourthline/cling/model/message/gena/OutgoingEventRequestMessage;->getStateVariableValues()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/state/StateVariableValue;

    const-string v1, "urn:schemas-upnp-org:event-1-0"

    const-string v2, "e:property"

    .line 133
    invoke-interface {p1, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 134
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 138
    invoke-virtual {v0}, Lorg/fourthline/cling/model/state/StateVariableValue;->getStateVariable()Lorg/fourthline/cling/model/meta/StateVariable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/StateVariable;->getName()Ljava/lang/String;

    move-result-object v2

    .line 139
    invoke-virtual {v0}, Lorg/fourthline/cling/model/state/StateVariableValue;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {p1, v1, v2, v0}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected writePropertysetElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 2

    const-string v0, "urn:schemas-upnp-org:event-1-0"

    const-string v1, "e:propertyset"

    .line 115
    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 116
    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object v0
.end method
