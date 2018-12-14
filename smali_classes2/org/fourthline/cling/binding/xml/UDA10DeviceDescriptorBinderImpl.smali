.class public Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;
.super Ljava/lang/Object;
.source "UDA10DeviceDescriptorBinderImpl.java"

# interfaces
.implements Lorg/fourthline/cling/binding/xml/DeviceDescriptorBinder;
.implements Lorg/xml/sax/ErrorHandler;


# static fields
.field private static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    const-class v0, Lorg/fourthline/cling/binding/xml/DeviceDescriptorBinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static parseURI(Ljava/lang/String;)Ljava/net/URI;
    .locals 4

    const-string v0, "www."

    .line 580
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v0, " "

    .line 586
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " "

    const-string v1, "%20"

    .line 590
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 594
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 607
    sget-object v1, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal URI, trying with ./ prefix: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 618
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "./"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    .line 620
    sget-object v1, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal URI \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\', ignoring value: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public buildDOM(Lorg/fourthline/cling/model/meta/Device;Lorg/fourthline/cling/model/profile/RemoteClientInfo;Lorg/fourthline/cling/model/Namespace;)Lorg/w3c/dom/Document;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/binding/xml/DescriptorBindingException;
        }
    .end annotation

    .line 393
    :try_start_0
    sget-object v0, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Generating DOM from device model: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 395
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v1, 0x1

    .line 396
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 398
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 399
    invoke-virtual {p0, p3, p1, v0, p2}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->generateRoot(Lorg/fourthline/cling/model/Namespace;Lorg/fourthline/cling/model/meta/Device;Lorg/w3c/dom/Document;Lorg/fourthline/cling/model/profile/RemoteClientInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 404
    new-instance p2, Lorg/fourthline/cling/binding/xml/DescriptorBindingException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not generate device descriptor: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/fourthline/cling/binding/xml/DescriptorBindingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public buildInstance(Lorg/fourthline/cling/model/meta/Device;Lorg/fourthline/cling/binding/staging/MutableDevice;)Lorg/fourthline/cling/model/meta/Device;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lorg/fourthline/cling/model/meta/Device;",
            ">(TD;",
            "Lorg/fourthline/cling/binding/staging/MutableDevice;",
            ")TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 128
    invoke-virtual {p2, p1}, Lorg/fourthline/cling/binding/staging/MutableDevice;->build(Lorg/fourthline/cling/model/meta/Device;)Lorg/fourthline/cling/model/meta/Device;

    move-result-object p1

    return-object p1
.end method

.method public describe(Lorg/fourthline/cling/model/meta/Device;Ljava/lang/String;)Lorg/fourthline/cling/model/meta/Device;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lorg/fourthline/cling/model/meta/Device;",
            ">(TD;",
            "Ljava/lang/String;",
            ")TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/binding/xml/DescriptorBindingException;,
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 73
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    :try_start_0
    sget-object v0, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Populating device from XML descriptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 87
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v1, 0x1

    .line 88
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 89
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 90
    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 92
    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/StringReader;

    .line 95
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 92
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p2

    .line 99
    invoke-virtual {p0, p1, p2}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->describe(Lorg/fourthline/cling/model/meta/Device;Lorg/w3c/dom/Document;)Lorg/fourthline/cling/model/meta/Device;

    move-result-object p1
    :try_end_0
    .catch Lorg/fourthline/cling/model/ValidationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 104
    new-instance p2, Lorg/fourthline/cling/binding/xml/DescriptorBindingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not parse device descriptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/fourthline/cling/binding/xml/DescriptorBindingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 102
    throw p1

    .line 74
    :cond_1
    :goto_0
    new-instance p1, Lorg/fourthline/cling/binding/xml/DescriptorBindingException;

    const-string p2, "Null or empty descriptor"

    invoke-direct {p1, p2}, Lorg/fourthline/cling/binding/xml/DescriptorBindingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public describe(Lorg/fourthline/cling/model/meta/Device;Lorg/w3c/dom/Document;)Lorg/fourthline/cling/model/meta/Device;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lorg/fourthline/cling/model/meta/Device;",
            ">(TD;",
            "Lorg/w3c/dom/Document;",
            ")TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/binding/xml/DescriptorBindingException;,
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 110
    :try_start_0
    sget-object v0, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Populating device from DOM: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 113
    new-instance v0, Lorg/fourthline/cling/binding/staging/MutableDevice;

    invoke-direct {v0}, Lorg/fourthline/cling/binding/staging/MutableDevice;-><init>()V

    .line 114
    invoke-interface {p2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p2

    .line 115
    invoke-virtual {p0, v0, p2}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->hydrateRoot(Lorg/fourthline/cling/binding/staging/MutableDevice;Lorg/w3c/dom/Element;)V

    .line 118
    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->buildInstance(Lorg/fourthline/cling/model/meta/Device;Lorg/fourthline/cling/binding/staging/MutableDevice;)Lorg/fourthline/cling/model/meta/Device;

    move-result-object p1
    :try_end_0
    .catch Lorg/fourthline/cling/model/ValidationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 123
    new-instance p2, Lorg/fourthline/cling/binding/xml/DescriptorBindingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not parse device DOM: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/fourthline/cling/binding/xml/DescriptorBindingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 121
    throw p1
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 570
    throw p1
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 574
    throw p1
.end method

.method public generate(Lorg/fourthline/cling/model/meta/Device;Lorg/fourthline/cling/model/profile/RemoteClientInfo;Lorg/fourthline/cling/model/Namespace;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/binding/xml/DescriptorBindingException;
        }
    .end annotation

    .line 381
    :try_start_0
    sget-object v0, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Generating XML descriptor from device model: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0, p1, p2, p3}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->buildDOM(Lorg/fourthline/cling/model/meta/Device;Lorg/fourthline/cling/model/profile/RemoteClientInfo;Lorg/fourthline/cling/model/Namespace;)Lorg/w3c/dom/Document;

    move-result-object p1

    invoke-static {p1}, Lorg/fourthline/cling/model/XMLUtil;->documentToString(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 386
    new-instance p2, Lorg/fourthline/cling/binding/xml/DescriptorBindingException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not build DOM: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/fourthline/cling/binding/xml/DescriptorBindingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected generateDevice(Lorg/fourthline/cling/model/Namespace;Lorg/fourthline/cling/model/meta/Device;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/fourthline/cling/model/profile/RemoteClientInfo;)V
    .locals 7

    .line 432
    sget-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->device:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-static {p3, p4, v0}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 434
    sget-object p4, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->deviceType:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/Device;->getType()Lorg/fourthline/cling/model/types/DeviceType;

    move-result-object v0

    invoke-static {p3, v5, p4, v0}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 436
    invoke-virtual {p2, p5}, Lorg/fourthline/cling/model/meta/Device;->getDetails(Lorg/fourthline/cling/model/profile/RemoteClientInfo;)Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object p4

    .line 437
    sget-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->friendlyName:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    .line 439
    invoke-virtual {p4}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v1

    .line 437
    invoke-static {p3, v5, v0, v1}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 441
    invoke-virtual {p4}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getManufacturerDetails()Lorg/fourthline/cling/model/meta/ManufacturerDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 442
    sget-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->manufacturer:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    .line 444
    invoke-virtual {p4}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getManufacturerDetails()Lorg/fourthline/cling/model/meta/ManufacturerDetails;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/ManufacturerDetails;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    .line 442
    invoke-static {p3, v5, v0, v1}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 446
    sget-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->manufacturerURL:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    .line 448
    invoke-virtual {p4}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getManufacturerDetails()Lorg/fourthline/cling/model/meta/ManufacturerDetails;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/ManufacturerDetails;->getManufacturerURI()Ljava/net/URI;

    move-result-object v1

    .line 446
    invoke-static {p3, v5, v0, v1}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 451
    :cond_0
    invoke-virtual {p4}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getModelDetails()Lorg/fourthline/cling/model/meta/ModelDetails;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 452
    sget-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->modelDescription:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    .line 454
    invoke-virtual {p4}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getModelDetails()Lorg/fourthline/cling/model/meta/ModelDetails;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/ModelDetails;->getModelDescription()Ljava/lang/String;

    move-result-object v1

    .line 452
    invoke-static {p3, v5, v0, v1}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 456
    sget-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->modelName:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    .line 458
    invoke-virtual {p4}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getModelDetails()Lorg/fourthline/cling/model/meta/ModelDetails;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/ModelDetails;->getModelName()Ljava/lang/String;

    move-result-object v1

    .line 456
    invoke-static {p3, v5, v0, v1}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 460
    sget-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->modelNumber:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    .line 462
    invoke-virtual {p4}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getModelDetails()Lorg/fourthline/cling/model/meta/ModelDetails;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/ModelDetails;->getModelNumber()Ljava/lang/String;

    move-result-object v1

    .line 460
    invoke-static {p3, v5, v0, v1}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 464
    sget-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->modelURL:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    .line 466
    invoke-virtual {p4}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getModelDetails()Lorg/fourthline/cling/model/meta/ModelDetails;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/ModelDetails;->getModelURI()Ljava/net/URI;

    move-result-object v1

    .line 464
    invoke-static {p3, v5, v0, v1}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 469
    :cond_1
    sget-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->serialNumber:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    .line 471
    invoke-virtual {p4}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    .line 469
    invoke-static {p3, v5, v0, v1}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 473
    sget-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->UDN:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/Device;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v1

    invoke-static {p3, v5, v0, v1}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 474
    sget-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->presentationURL:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    .line 476
    invoke-virtual {p4}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getPresentationURI()Ljava/net/URI;

    move-result-object v1

    .line 474
    invoke-static {p3, v5, v0, v1}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 478
    sget-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->UPC:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    .line 480
    invoke-virtual {p4}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getUpc()Ljava/lang/String;

    move-result-object v1

    .line 478
    invoke-static {p3, v5, v0, v1}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 483
    invoke-virtual {p4}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getDlnaDocs()[Lorg/fourthline/cling/model/types/DLNADoc;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 484
    invoke-virtual {p4}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getDlnaDocs()[Lorg/fourthline/cling/model/types/DLNADoc;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 485
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dlna:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->X_DLNADOC:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "urn:schemas-dlna-org:device-1-0"

    invoke-static {p3, v5, v4, v3, v6}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/w3c/dom/Element;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 491
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dlna:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->X_DLNACAP:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 493
    invoke-virtual {p4}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getDlnaCaps()Lorg/fourthline/cling/model/types/DLNACaps;

    move-result-object v1

    const-string v2, "urn:schemas-dlna-org:device-1-0"

    .line 491
    invoke-static {p3, v5, v0, v1, v2}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sec:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->ProductCap:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 498
    invoke-virtual {p4}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getSecProductCaps()Lorg/fourthline/cling/model/types/DLNACaps;

    move-result-object v1

    const-string v2, "http://www.sec.co.kr/dlna"

    .line 496
    invoke-static {p3, v5, v0, v1, v2}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sec:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->X_ProductCap:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 503
    invoke-virtual {p4}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getSecProductCaps()Lorg/fourthline/cling/model/types/DLNACaps;

    move-result-object p4

    const-string v1, "http://www.sec.co.kr/dlna"

    .line 501
    invoke-static {p3, v5, v0, p4, v1}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 506
    invoke-virtual {p0, p1, p2, p3, v5}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->generateIconList(Lorg/fourthline/cling/model/Namespace;Lorg/fourthline/cling/model/meta/Device;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    .line 507
    invoke-virtual {p0, p1, p2, p3, v5}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->generateServiceList(Lorg/fourthline/cling/model/Namespace;Lorg/fourthline/cling/model/meta/Device;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    .line 508
    invoke-virtual/range {v1 .. v6}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->generateDeviceList(Lorg/fourthline/cling/model/Namespace;Lorg/fourthline/cling/model/meta/Device;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/fourthline/cling/model/profile/RemoteClientInfo;)V

    return-void
.end method

.method protected generateDeviceList(Lorg/fourthline/cling/model/Namespace;Lorg/fourthline/cling/model/meta/Device;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/fourthline/cling/model/profile/RemoteClientInfo;)V
    .locals 8

    .line 556
    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/Device;->hasEmbeddedDevices()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 558
    :cond_0
    sget-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->deviceList:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-static {p3, p4, v0}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;)Lorg/w3c/dom/Element;

    move-result-object p4

    .line 560
    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/Device;->getEmbeddedDevices()[Lorg/fourthline/cling/model/meta/Device;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v0, :cond_1

    aget-object v3, p2, v7

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 561
    invoke-virtual/range {v1 .. v6}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->generateDevice(Lorg/fourthline/cling/model/Namespace;Lorg/fourthline/cling/model/meta/Device;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/fourthline/cling/model/profile/RemoteClientInfo;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected generateIconList(Lorg/fourthline/cling/model/Namespace;Lorg/fourthline/cling/model/meta/Device;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V
    .locals 7

    .line 512
    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/Device;->hasIcons()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 514
    :cond_0
    sget-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->iconList:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-static {p3, p4, v0}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;)Lorg/w3c/dom/Element;

    move-result-object p4

    .line 516
    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/Device;->getIcons()[Lorg/fourthline/cling/model/meta/Icon;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 517
    sget-object v4, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->icon:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-static {p3, p4, v4}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 519
    sget-object v5, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->mimetype:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/Icon;->getMimeType()Lorg/seamless/util/MimeType;

    move-result-object v6

    invoke-static {p3, v4, v5, v6}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 520
    sget-object v5, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->width:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/Icon;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p3, v4, v5, v6}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 521
    sget-object v5, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->height:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/Icon;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p3, v4, v5, v6}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 522
    sget-object v5, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->depth:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/Icon;->getDepth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p3, v4, v5, v6}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 523
    instance-of v5, p2, Lorg/fourthline/cling/model/meta/RemoteDevice;

    if-eqz v5, :cond_1

    .line 524
    sget-object v5, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->url:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/Icon;->getUri()Ljava/net/URI;

    move-result-object v3

    invoke-static {p3, v4, v5, v3}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    goto :goto_1

    .line 525
    :cond_1
    instance-of v5, p2, Lorg/fourthline/cling/model/meta/LocalDevice;

    if-eqz v5, :cond_2

    .line 526
    sget-object v5, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->url:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {p1, v3}, Lorg/fourthline/cling/model/Namespace;->getIconPath(Lorg/fourthline/cling/model/meta/Icon;)Ljava/net/URI;

    move-result-object v3

    invoke-static {p3, v4, v5, v3}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected generateRoot(Lorg/fourthline/cling/model/Namespace;Lorg/fourthline/cling/model/meta/Device;Lorg/w3c/dom/Document;Lorg/fourthline/cling/model/profile/RemoteClientInfo;)V
    .locals 8

    const-string v0, "urn:schemas-upnp-org:device-1-0"

    .line 410
    sget-object v1, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->root:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 411
    invoke-interface {p3, v6}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 413
    invoke-virtual {p0, p1, p2, p3, v6}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->generateSpecVersion(Lorg/fourthline/cling/model/Namespace;Lorg/fourthline/cling/model/meta/Device;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    .line 421
    invoke-virtual/range {v2 .. v7}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->generateDevice(Lorg/fourthline/cling/model/Namespace;Lorg/fourthline/cling/model/meta/Device;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/fourthline/cling/model/profile/RemoteClientInfo;)V

    return-void
.end method

.method protected generateServiceList(Lorg/fourthline/cling/model/Namespace;Lorg/fourthline/cling/model/meta/Device;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V
    .locals 6

    .line 532
    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/Device;->hasServices()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 534
    :cond_0
    sget-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->serviceList:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-static {p3, p4, v0}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;)Lorg/w3c/dom/Element;

    move-result-object p4

    .line 536
    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/Device;->getServices()[Lorg/fourthline/cling/model/meta/Service;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p2, v1

    .line 537
    sget-object v3, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->service:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-static {p3, p4, v3}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 539
    sget-object v4, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->serviceType:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/Service;->getServiceType()Lorg/fourthline/cling/model/types/ServiceType;

    move-result-object v5

    invoke-static {p3, v3, v4, v5}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 540
    sget-object v4, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->serviceId:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/Service;->getServiceId()Lorg/fourthline/cling/model/types/ServiceId;

    move-result-object v5

    invoke-static {p3, v3, v4, v5}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 541
    instance-of v4, v2, Lorg/fourthline/cling/model/meta/RemoteService;

    if-eqz v4, :cond_1

    .line 542
    check-cast v2, Lorg/fourthline/cling/model/meta/RemoteService;

    .line 543
    sget-object v4, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->SCPDURL:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/RemoteService;->getDescriptorURI()Ljava/net/URI;

    move-result-object v5

    invoke-static {p3, v3, v4, v5}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 544
    sget-object v4, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->controlURL:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/RemoteService;->getControlURI()Ljava/net/URI;

    move-result-object v5

    invoke-static {p3, v3, v4, v5}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 545
    sget-object v4, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->eventSubURL:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/RemoteService;->getEventSubscriptionURI()Ljava/net/URI;

    move-result-object v2

    invoke-static {p3, v3, v4, v2}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    goto :goto_1

    .line 546
    :cond_1
    instance-of v4, v2, Lorg/fourthline/cling/model/meta/LocalService;

    if-eqz v4, :cond_2

    .line 547
    check-cast v2, Lorg/fourthline/cling/model/meta/LocalService;

    .line 548
    sget-object v4, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->SCPDURL:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {p1, v2}, Lorg/fourthline/cling/model/Namespace;->getDescriptorPath(Lorg/fourthline/cling/model/meta/Service;)Ljava/net/URI;

    move-result-object v5

    invoke-static {p3, v3, v4, v5}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 549
    sget-object v4, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->controlURL:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {p1, v2}, Lorg/fourthline/cling/model/Namespace;->getControlPath(Lorg/fourthline/cling/model/meta/Service;)Ljava/net/URI;

    move-result-object v5

    invoke-static {p3, v3, v4, v5}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 550
    sget-object v4, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->eventSubURL:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {p1, v2}, Lorg/fourthline/cling/model/Namespace;->getEventSubscriptionPath(Lorg/fourthline/cling/model/meta/Service;)Ljava/net/URI;

    move-result-object v2

    invoke-static {p3, v3, v4, v2}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected generateSpecVersion(Lorg/fourthline/cling/model/Namespace;Lorg/fourthline/cling/model/meta/Device;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V
    .locals 1

    .line 425
    sget-object p1, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->specVersion:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-static {p3, p4, p1}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;)Lorg/w3c/dom/Element;

    move-result-object p1

    .line 426
    sget-object p4, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->major:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/Device;->getVersion()Lorg/fourthline/cling/model/meta/UDAVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/UDAVersion;->getMajor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p3, p1, p4, v0}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 427
    sget-object p4, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->minor:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/Device;->getVersion()Lorg/fourthline/cling/model/meta/UDAVersion;

    move-result-object p2

    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/UDAVersion;->getMinor()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3, p1, p4, p2}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    return-void
.end method

.method public hydrateDevice(Lorg/fourthline/cling/binding/staging/MutableDevice;Lorg/w3c/dom/Node;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/binding/xml/DescriptorBindingException;
        }
    .end annotation

    .line 210
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p2

    const/4 v0, 0x0

    .line 211
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_12

    .line 212
    invoke-interface {p2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 214
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto/16 :goto_1

    .line 217
    :cond_0
    sget-object v2, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->deviceType:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v2, v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 218
    invoke-static {v1}, Lorg/fourthline/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lorg/fourthline/cling/binding/staging/MutableDevice;->deviceType:Ljava/lang/String;

    goto/16 :goto_1

    .line 219
    :cond_1
    sget-object v2, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->friendlyName:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v2, v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 220
    invoke-static {v1}, Lorg/fourthline/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lorg/fourthline/cling/binding/staging/MutableDevice;->friendlyName:Ljava/lang/String;

    goto/16 :goto_1

    .line 221
    :cond_2
    sget-object v2, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->manufacturer:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v2, v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 222
    invoke-static {v1}, Lorg/fourthline/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lorg/fourthline/cling/binding/staging/MutableDevice;->manufacturer:Ljava/lang/String;

    goto/16 :goto_1

    .line 223
    :cond_3
    sget-object v2, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->manufacturerURL:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v2, v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 224
    invoke-static {v1}, Lorg/fourthline/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->parseURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    iput-object v1, p1, Lorg/fourthline/cling/binding/staging/MutableDevice;->manufacturerURI:Ljava/net/URI;

    goto/16 :goto_1

    .line 225
    :cond_4
    sget-object v2, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->modelDescription:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v2, v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 226
    invoke-static {v1}, Lorg/fourthline/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lorg/fourthline/cling/binding/staging/MutableDevice;->modelDescription:Ljava/lang/String;

    goto/16 :goto_1

    .line 227
    :cond_5
    sget-object v2, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->modelName:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v2, v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 228
    invoke-static {v1}, Lorg/fourthline/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lorg/fourthline/cling/binding/staging/MutableDevice;->modelName:Ljava/lang/String;

    goto/16 :goto_1

    .line 229
    :cond_6
    sget-object v2, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->modelNumber:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v2, v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 230
    invoke-static {v1}, Lorg/fourthline/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lorg/fourthline/cling/binding/staging/MutableDevice;->modelNumber:Ljava/lang/String;

    goto/16 :goto_1

    .line 231
    :cond_7
    sget-object v2, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->modelURL:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v2, v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 232
    invoke-static {v1}, Lorg/fourthline/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->parseURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    iput-object v1, p1, Lorg/fourthline/cling/binding/staging/MutableDevice;->modelURI:Ljava/net/URI;

    goto/16 :goto_1

    .line 233
    :cond_8
    sget-object v2, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->presentationURL:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v2, v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 234
    invoke-static {v1}, Lorg/fourthline/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->parseURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    iput-object v1, p1, Lorg/fourthline/cling/binding/staging/MutableDevice;->presentationURI:Ljava/net/URI;

    goto/16 :goto_1

    .line 235
    :cond_9
    sget-object v2, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->UPC:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v2, v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 236
    invoke-static {v1}, Lorg/fourthline/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lorg/fourthline/cling/binding/staging/MutableDevice;->upc:Ljava/lang/String;

    goto/16 :goto_1

    .line 237
    :cond_a
    sget-object v2, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->serialNumber:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v2, v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 238
    invoke-static {v1}, Lorg/fourthline/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lorg/fourthline/cling/binding/staging/MutableDevice;->serialNumber:Ljava/lang/String;

    goto/16 :goto_1

    .line 239
    :cond_b
    sget-object v2, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->UDN:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v2, v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 240
    invoke-static {v1}, Lorg/fourthline/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/fourthline/cling/model/types/UDN;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/UDN;

    move-result-object v1

    iput-object v1, p1, Lorg/fourthline/cling/binding/staging/MutableDevice;->udn:Lorg/fourthline/cling/model/types/UDN;

    goto/16 :goto_1

    .line 241
    :cond_c
    sget-object v2, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->iconList:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v2, v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 242
    invoke-virtual {p0, p1, v1}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->hydrateIconList(Lorg/fourthline/cling/binding/staging/MutableDevice;Lorg/w3c/dom/Node;)V

    goto/16 :goto_1

    .line 243
    :cond_d
    sget-object v2, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->serviceList:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v2, v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 244
    invoke-virtual {p0, p1, v1}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->hydrateServiceList(Lorg/fourthline/cling/binding/staging/MutableDevice;Lorg/w3c/dom/Node;)V

    goto :goto_1

    .line 245
    :cond_e
    sget-object v2, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->deviceList:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v2, v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 246
    invoke-virtual {p0, p1, v1}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->hydrateDeviceList(Lorg/fourthline/cling/binding/staging/MutableDevice;Lorg/w3c/dom/Node;)V

    goto :goto_1

    .line 247
    :cond_f
    sget-object v2, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->X_DLNADOC:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v2, v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "dlna"

    .line 248
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 249
    invoke-static {v1}, Lorg/fourthline/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    .line 251
    :try_start_0
    iget-object v2, p1, Lorg/fourthline/cling/binding/staging/MutableDevice;->dlnaDocs:Ljava/util/List;

    invoke-static {v1}, Lorg/fourthline/cling/model/types/DLNADoc;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/DLNADoc;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/fourthline/cling/model/types/InvalidValueException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 253
    :catch_0
    sget-object v2, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid X_DLNADOC value, ignoring value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 255
    :cond_10
    sget-object v2, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->X_DLNACAP:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v2, v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "dlna"

    .line 256
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 257
    invoke-static {v1}, Lorg/fourthline/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/fourthline/cling/model/types/DLNACaps;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/DLNACaps;

    move-result-object v1

    iput-object v1, p1, Lorg/fourthline/cling/binding/staging/MutableDevice;->dlnaCaps:Lorg/fourthline/cling/model/types/DLNACaps;

    :cond_11
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_12
    return-void
.end method

.method public hydrateDeviceList(Lorg/fourthline/cling/binding/staging/MutableDevice;Lorg/w3c/dom/Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/binding/xml/DescriptorBindingException;
        }
    .end annotation

    .line 362
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p2

    const/4 v0, 0x0

    .line 363
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 364
    invoke-interface {p2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 366
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 369
    :cond_0
    sget-object v2, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->device:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v2, v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 370
    new-instance v2, Lorg/fourthline/cling/binding/staging/MutableDevice;

    invoke-direct {v2}, Lorg/fourthline/cling/binding/staging/MutableDevice;-><init>()V

    .line 371
    iput-object p1, v2, Lorg/fourthline/cling/binding/staging/MutableDevice;->parentDevice:Lorg/fourthline/cling/binding/staging/MutableDevice;

    .line 372
    iget-object v3, p1, Lorg/fourthline/cling/binding/staging/MutableDevice;->embeddedDevices:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    invoke-virtual {p0, v2, v1}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->hydrateDevice(Lorg/fourthline/cling/binding/staging/MutableDevice;Lorg/w3c/dom/Node;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public hydrateIconList(Lorg/fourthline/cling/binding/staging/MutableDevice;Lorg/w3c/dom/Node;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/binding/xml/DescriptorBindingException;
        }
    .end annotation

    .line 264
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 265
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 266
    invoke-interface {p2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 268
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    goto/16 :goto_3

    .line 271
    :cond_0
    sget-object v3, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->icon:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v3, v2}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 273
    new-instance v3, Lorg/fourthline/cling/binding/staging/MutableIcon;

    invoke-direct {v3}, Lorg/fourthline/cling/binding/staging/MutableIcon;-><init>()V

    .line 275
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v5, 0x0

    .line 277
    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 278
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 280
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    if-eq v7, v4, :cond_1

    goto/16 :goto_2

    .line 283
    :cond_1
    sget-object v7, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->width:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v7, v6}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 284
    invoke-static {v6}, Lorg/fourthline/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v3, Lorg/fourthline/cling/binding/staging/MutableIcon;->width:I

    goto/16 :goto_2

    .line 285
    :cond_2
    sget-object v7, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->height:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v7, v6}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 286
    invoke-static {v6}, Lorg/fourthline/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v3, Lorg/fourthline/cling/binding/staging/MutableIcon;->height:I

    goto/16 :goto_2

    .line 287
    :cond_3
    sget-object v7, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->depth:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v7, v6}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 288
    invoke-static {v6}, Lorg/fourthline/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    .line 290
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v3, Lorg/fourthline/cling/binding/staging/MutableIcon;->depth:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v7

    .line 292
    sget-object v8, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid icon depth \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\', using 16 as default: "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const/16 v6, 0x10

    .line 293
    iput v6, v3, Lorg/fourthline/cling/binding/staging/MutableIcon;->depth:I

    goto :goto_2

    .line 295
    :cond_4
    sget-object v7, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->url:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v7, v6}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 296
    invoke-static {v6}, Lorg/fourthline/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->parseURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v6

    iput-object v6, v3, Lorg/fourthline/cling/binding/staging/MutableIcon;->uri:Ljava/net/URI;

    goto :goto_2

    .line 297
    :cond_5
    sget-object v7, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->mimetype:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v7, v6}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 299
    :try_start_1
    invoke-static {v6}, Lorg/fourthline/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lorg/fourthline/cling/binding/staging/MutableIcon;->mimeType:Ljava/lang/String;

    .line 300
    iget-object v6, v3, Lorg/fourthline/cling/binding/staging/MutableIcon;->mimeType:Ljava/lang/String;

    invoke-static {v6}, Lorg/seamless/util/MimeType;->valueOf(Ljava/lang/String;)Lorg/seamless/util/MimeType;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 302
    :catch_1
    sget-object v6, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring invalid icon mime type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lorg/fourthline/cling/binding/staging/MutableIcon;->mimeType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const-string v6, ""

    .line 303
    iput-object v6, v3, Lorg/fourthline/cling/binding/staging/MutableIcon;->mimeType:Ljava/lang/String;

    :cond_6
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 309
    :cond_7
    iget-object v2, p1, Lorg/fourthline/cling/binding/staging/MutableDevice;->icons:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method protected hydrateRoot(Lorg/fourthline/cling/binding/staging/MutableDevice;Lorg/w3c/dom/Element;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/binding/xml/DescriptorBindingException;
        }
    .end annotation

    .line 133
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    const-string v1, "urn:schemas-upnp-org:device-1-0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    :cond_0
    sget-object v0, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong XML namespace declared on root element: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 137
    :cond_1
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->root:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 138
    new-instance p1, Lorg/fourthline/cling/binding/xml/DescriptorBindingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Root element name is not <root>: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/fourthline/cling/binding/xml/DescriptorBindingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 141
    :cond_2
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 145
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 146
    invoke-interface {p2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 148
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    goto/16 :goto_1

    .line 151
    :cond_3
    sget-object v3, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->specVersion:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v3, v2}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 152
    invoke-virtual {p0, p1, v2}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->hydrateSpecVersion(Lorg/fourthline/cling/binding/staging/MutableDevice;Lorg/w3c/dom/Node;)V

    goto :goto_1

    .line 153
    :cond_4
    sget-object v3, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->URLBase:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v3, v2}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 155
    :try_start_0
    invoke-static {v2}, Lorg/fourthline/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 156
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8

    .line 158
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v3, p1, Lorg/fourthline/cling/binding/staging/MutableDevice;->baseURL:Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 161
    new-instance p2, Lorg/fourthline/cling/binding/xml/DescriptorBindingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid URLBase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/fourthline/cling/binding/xml/DescriptorBindingException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 163
    :cond_5
    sget-object v3, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->device:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v3, v2}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v0, :cond_6

    .line 166
    new-instance p1, Lorg/fourthline/cling/binding/xml/DescriptorBindingException;

    const-string p2, "Found multiple <device> elements in <root>"

    invoke-direct {p1, p2}, Lorg/fourthline/cling/binding/xml/DescriptorBindingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    move-object v0, v2

    goto :goto_1

    .line 169
    :cond_7
    sget-object v3, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring unknown element: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    :cond_8
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_9
    if-nez v0, :cond_a

    .line 174
    new-instance p1, Lorg/fourthline/cling/binding/xml/DescriptorBindingException;

    const-string p2, "No <device> element in <root>"

    invoke-direct {p1, p2}, Lorg/fourthline/cling/binding/xml/DescriptorBindingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 176
    :cond_a
    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->hydrateDevice(Lorg/fourthline/cling/binding/staging/MutableDevice;Lorg/w3c/dom/Node;)V

    return-void
.end method

.method public hydrateServiceList(Lorg/fourthline/cling/binding/staging/MutableDevice;Lorg/w3c/dom/Node;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/binding/xml/DescriptorBindingException;
        }
    .end annotation

    .line 316
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 317
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 318
    invoke-interface {p2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 320
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    goto/16 :goto_3

    .line 323
    :cond_0
    sget-object v3, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->service:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v3, v2}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 325
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 328
    :try_start_0
    new-instance v3, Lorg/fourthline/cling/binding/staging/MutableService;

    invoke-direct {v3}, Lorg/fourthline/cling/binding/staging/MutableService;-><init>()V

    const/4 v5, 0x0

    .line 330
    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 331
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 333
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    if-eq v7, v4, :cond_1

    goto :goto_2

    .line 336
    :cond_1
    sget-object v7, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->serviceType:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v7, v6}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 337
    invoke-static {v6}, Lorg/fourthline/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/fourthline/cling/model/types/ServiceType;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/ServiceType;

    move-result-object v6

    iput-object v6, v3, Lorg/fourthline/cling/binding/staging/MutableService;->serviceType:Lorg/fourthline/cling/model/types/ServiceType;

    goto :goto_2

    .line 338
    :cond_2
    sget-object v7, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->serviceId:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v7, v6}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 339
    invoke-static {v6}, Lorg/fourthline/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/fourthline/cling/model/types/ServiceId;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/ServiceId;

    move-result-object v6

    iput-object v6, v3, Lorg/fourthline/cling/binding/staging/MutableService;->serviceId:Lorg/fourthline/cling/model/types/ServiceId;

    goto :goto_2

    .line 340
    :cond_3
    sget-object v7, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->SCPDURL:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v7, v6}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 341
    invoke-static {v6}, Lorg/fourthline/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->parseURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v6

    iput-object v6, v3, Lorg/fourthline/cling/binding/staging/MutableService;->descriptorURI:Ljava/net/URI;

    goto :goto_2

    .line 342
    :cond_4
    sget-object v7, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->controlURL:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v7, v6}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 343
    invoke-static {v6}, Lorg/fourthline/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->parseURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v6

    iput-object v6, v3, Lorg/fourthline/cling/binding/staging/MutableService;->controlURI:Ljava/net/URI;

    goto :goto_2

    .line 344
    :cond_5
    sget-object v7, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->eventSubURL:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v7, v6}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 345
    invoke-static {v6}, Lorg/fourthline/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->parseURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v6

    iput-object v6, v3, Lorg/fourthline/cling/binding/staging/MutableService;->eventSubscriptionURI:Ljava/net/URI;

    :cond_6
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 350
    :cond_7
    iget-object v2, p1, Lorg/fourthline/cling/binding/staging/MutableDevice;->services:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/fourthline/cling/model/types/InvalidValueException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    .line 352
    sget-object v3, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UPnP specification violation, skipping invalid service declaration. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {v2}, Lorg/fourthline/cling/model/types/InvalidValueException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 352
    invoke-virtual {v3, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_8
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public hydrateSpecVersion(Lorg/fourthline/cling/binding/staging/MutableDevice;Lorg/w3c/dom/Node;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/binding/xml/DescriptorBindingException;
        }
    .end annotation

    .line 181
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p2

    const/4 v0, 0x0

    .line 182
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 183
    invoke-interface {p2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 185
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto/16 :goto_1

    .line 188
    :cond_0
    sget-object v2, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->major:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v2, v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 189
    invoke-static {v1}, Lorg/fourthline/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    .line 190
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 191
    sget-object v2, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported UDA major version, ignoring: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const-string v1, "1"

    .line 194
    :cond_1
    iget-object v2, p1, Lorg/fourthline/cling/binding/staging/MutableDevice;->udaVersion:Lorg/fourthline/cling/binding/staging/MutableUDAVersion;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v2, Lorg/fourthline/cling/binding/staging/MutableUDAVersion;->major:I

    goto :goto_1

    .line 195
    :cond_2
    sget-object v2, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->minor:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v2, v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 196
    invoke-static {v1}, Lorg/fourthline/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    .line 197
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 198
    sget-object v2, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported UDA minor version, ignoring: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const-string v1, "0"

    .line 201
    :cond_3
    iget-object v2, p1, Lorg/fourthline/cling/binding/staging/MutableDevice;->udaVersion:Lorg/fourthline/cling/binding/staging/MutableUDAVersion;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v2, Lorg/fourthline/cling/binding/staging/MutableUDAVersion;->minor:I

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 566
    sget-object v0, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void
.end method
