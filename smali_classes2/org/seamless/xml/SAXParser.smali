.class public Lorg/seamless/xml/SAXParser;
.super Ljava/lang/Object;
.source "SAXParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/seamless/xml/SAXParser$Handler;,
        Lorg/seamless/xml/SAXParser$SimpleErrorHandler;
    }
.end annotation


# static fields
.field public static final XML_SCHEMA_NAMESPACE:Ljava/net/URI;

.field public static final XML_SCHEMA_RESOURCE:Ljava/net/URL;

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final xr:Lorg/xml/sax/XMLReader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    const-class v0, Lorg/seamless/xml/SAXParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/seamless/xml/SAXParser;->log:Ljava/util/logging/Logger;

    const-string v0, "http://www.w3.org/2001/xml.xsd"

    .line 45
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    sput-object v0, Lorg/seamless/xml/SAXParser;->XML_SCHEMA_NAMESPACE:Ljava/net/URI;

    .line 47
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "org/seamless/schemas/xml.xsd"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    sput-object v0, Lorg/seamless/xml/SAXParser;->XML_SCHEMA_RESOURCE:Ljava/net/URL;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, v0}, Lorg/seamless/xml/SAXParser;-><init>(Lorg/xml/sax/helpers/DefaultHandler;)V

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/helpers/DefaultHandler;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser;->create()Lorg/xml/sax/XMLReader;

    move-result-object v0

    iput-object v0, p0, Lorg/seamless/xml/SAXParser;->xr:Lorg/xml/sax/XMLReader;

    if-eqz p1, :cond_0

    .line 59
    iget-object v0, p0, Lorg/seamless/xml/SAXParser;->xr:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .line 41
    sget-object v0, Lorg/seamless/xml/SAXParser;->log:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method protected create()Lorg/xml/sax/XMLReader;
    .locals 2

    .line 68
    :try_start_0
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser;->getSchemaSources()[Ljavax/xml/transform/Source;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    const/4 v1, 0x1

    .line 71
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 72
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser;->getSchemaSources()[Ljavax/xml/transform/Source;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/seamless/xml/SAXParser;->createSchema([Ljavax/xml/transform/Source;)Ljavax/xml/validation/Schema;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setSchema(Ljavax/xml/validation/Schema;)V

    .line 73
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 74
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    return-object v0

    .line 77
    :cond_0
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 79
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected createSchema([Ljavax/xml/transform/Source;)Ljavax/xml/validation/Schema;
    .locals 3

    :try_start_0
    const-string v0, "http://www.w3.org/2001/XMLSchema"

    .line 85
    invoke-static {v0}, Ljavax/xml/validation/SchemaFactory;->newInstance(Ljava/lang/String;)Ljavax/xml/validation/SchemaFactory;

    move-result-object v0

    .line 86
    new-instance v1, Lorg/seamless/xml/CatalogResourceResolver;

    new-instance v2, Lorg/seamless/xml/SAXParser$1;

    invoke-direct {v2, p0}, Lorg/seamless/xml/SAXParser$1;-><init>(Lorg/seamless/xml/SAXParser;)V

    invoke-direct {v1, v2}, Lorg/seamless/xml/CatalogResourceResolver;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Ljavax/xml/validation/SchemaFactory;->setResourceResolver(Lorg/w3c/dom/ls/LSResourceResolver;)V

    .line 91
    invoke-virtual {v0, p1}, Ljavax/xml/validation/SchemaFactory;->newSchema([Ljavax/xml/transform/Source;)Ljavax/xml/validation/Schema;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 93
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    .line 102
    new-instance v0, Lorg/seamless/xml/SAXParser$SimpleErrorHandler;

    invoke-direct {v0, p0}, Lorg/seamless/xml/SAXParser$SimpleErrorHandler;-><init>(Lorg/seamless/xml/SAXParser;)V

    return-object v0
.end method

.method protected getSchemaSources()[Ljavax/xml/transform/Source;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/seamless/xml/ParserException;
        }
    .end annotation

    .line 107
    :try_start_0
    iget-object v0, p0, Lorg/seamless/xml/SAXParser;->xr:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 109
    new-instance v0, Lorg/seamless/xml/ParserException;

    invoke-direct {v0, p1}, Lorg/seamless/xml/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/seamless/xml/SAXParser;->xr:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    return-void
.end method
