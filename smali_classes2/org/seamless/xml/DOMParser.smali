.class public abstract Lorg/seamless/xml/DOMParser;
.super Ljava/lang/Object;
.source "DOMParser.java"

# interfaces
.implements Lorg/xml/sax/EntityResolver;
.implements Lorg/xml/sax/ErrorHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/seamless/xml/DOMParser$NodeVisitor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lorg/seamless/xml/DOM;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/xml/sax/EntityResolver;",
        "Lorg/xml/sax/ErrorHandler;"
    }
.end annotation


# static fields
.field public static final XML_SCHEMA_RESOURCE:Ljava/net/URL;

.field private static log:Ljava/util/logging/Logger;


# instance fields
.field protected schema:Ljavax/xml/validation/Schema;

.field protected schemaSources:[Ljavax/xml/transform/Source;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 74
    const-class v0, Lorg/seamless/xml/DOMParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/seamless/xml/DOMParser;->log:Ljava/util/logging/Logger;

    .line 76
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "org/seamless/schemas/xml.xsd"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    sput-object v0, Lorg/seamless/xml/DOMParser;->XML_SCHEMA_RESOURCE:Ljava/net/URL;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, v0}, Lorg/seamless/xml/DOMParser;-><init>([Ljavax/xml/transform/Source;)V

    return-void
.end method

.method public constructor <init>([Ljavax/xml/transform/Source;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lorg/seamless/xml/DOMParser;->schemaSources:[Ljavax/xml/transform/Source;

    return-void
.end method

.method public static accept(Lorg/w3c/dom/Node;Lorg/seamless/xml/DOMParser$NodeVisitor;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 553
    :cond_0
    invoke-virtual {p1}, Lorg/seamless/xml/DOMParser$NodeVisitor;->isHalted()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 554
    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    const/4 v0, 0x0

    .line 555
    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 556
    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 558
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    invoke-static {p1}, Lorg/seamless/xml/DOMParser$NodeVisitor;->access$000(Lorg/seamless/xml/DOMParser$NodeVisitor;)S

    move-result v3

    if-ne v2, v3, :cond_2

    .line 559
    invoke-virtual {p1, v1}, Lorg/seamless/xml/DOMParser$NodeVisitor;->visit(Lorg/w3c/dom/Node;)V

    .line 560
    invoke-virtual {p1}, Lorg/seamless/xml/DOMParser$NodeVisitor;->isHalted()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 562
    :cond_2
    invoke-static {v1, p1}, Lorg/seamless/xml/DOMParser;->accept(Lorg/w3c/dom/Node;Lorg/seamless/xml/DOMParser$NodeVisitor;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 493
    invoke-static {p0, v0, v0}, Lorg/seamless/xml/DOMParser;->escape(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static escape(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 498
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 501
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 503
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x22

    if-eq v4, v5, :cond_4

    const/16 v5, 0x26

    if-eq v4, v5, :cond_3

    const/16 v5, 0x3c

    if-eq v4, v5, :cond_2

    const/16 v5, 0x3e

    if-eq v4, v5, :cond_1

    move-object v5, v0

    goto :goto_1

    :cond_1
    const-string v5, "&#62;"

    goto :goto_1

    :cond_2
    const-string v5, "&#60;"

    goto :goto_1

    :cond_3
    const-string v5, "&#38;"

    goto :goto_1

    :cond_4
    const-string v5, "&#34;"

    :goto_1
    if-eqz v5, :cond_5

    .line 519
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 521
    :cond_5
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 524
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_9

    const-string p2, "(\\n+)(\\s*)(.*)"

    .line 527
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 528
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 529
    :goto_3
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    .line 530
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 531
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    .line 532
    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_7

    const-string v4, "&#160;"

    .line 533
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 535
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "$1"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_3

    .line 537
    :cond_8
    invoke-virtual {p0, p2}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 538
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_9
    if-eqz p1, :cond_a

    const-string p1, "\n"

    const-string p2, "<br/>"

    .line 541
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_a
    return-object p0
.end method

.method public static stripElements(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "<([a-zA-Z]|/).*?>"

    const-string v1, ""

    .line 548
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static wrap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 582
    invoke-static {p0, v0, p1}, Lorg/seamless/xml/DOMParser;->wrap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static wrap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    .line 587
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, " xmlns=\""

    .line 589
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p1, ">"

    .line 591
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</"

    .line 593
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected abstract createDOM(Lorg/w3c/dom/Document;)Lorg/seamless/xml/DOM;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            ")TD;"
        }
    .end annotation
.end method

.method public createDocument()Lorg/seamless/xml/DOM;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 199
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/seamless/xml/DOMParser;->createFactory(Z)Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/seamless/xml/DOMParser;->createDOM(Lorg/w3c/dom/Document;)Lorg/seamless/xml/DOM;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 201
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createFactory(Z)Ljavax/xml/parsers/DocumentBuilderFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/seamless/xml/ParserException;
        }
    .end annotation

    .line 122
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v1, 0x1

    .line 127
    :try_start_0
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    if-eqz p1, :cond_0

    .line 133
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setXIncludeAware(Z)V

    const-string p1, "http://apache.org/xml/features/xinclude/fixup-base-uris"

    const/4 v2, 0x0

    .line 136
    invoke-virtual {v0, p1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V

    const-string p1, "http://apache.org/xml/features/xinclude/fixup-language"

    .line 137
    invoke-virtual {v0, p1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V

    .line 141
    invoke-virtual {p0}, Lorg/seamless/xml/DOMParser;->getSchema()Ljavax/xml/validation/Schema;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setSchema(Ljavax/xml/validation/Schema;)V

    const-string p1, "http://apache.org/xml/features/validation/dynamic"

    .line 152
    invoke-virtual {v0, p1, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p1

    .line 157
    new-instance v0, Lorg/seamless/xml/ParserException;

    invoke-direct {v0, p1}, Lorg/seamless/xml/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public createTransformer(Ljava/lang/String;IZ)Ljavax/xml/transform/Transformer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/seamless/xml/ParserException;
        }
    .end annotation

    .line 164
    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-lez p2, :cond_0

    :try_start_1
    const-string v1, "indent-number"

    .line 168
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/TransformerFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 174
    :catch_0
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    const-string v1, "omit-xml-declaration"

    if-eqz p3, :cond_1

    const-string v2, "no"

    goto :goto_0

    :cond_1
    const-string v2, "yes"

    .line 175
    :goto_0
    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz p3, :cond_2

    :try_start_3
    const-string p3, "http://www.oracle.com/xml/is-standalone"

    const-string v1, "yes"

    .line 180
    invoke-virtual {v0, p3, v1}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_1
    :cond_2
    :try_start_4
    const-string p3, "indent"

    if-lez p2, :cond_3

    const-string v1, "yes"

    goto :goto_1

    :cond_3
    const-string v1, "no"

    .line 186
    :goto_1
    invoke-virtual {v0, p3, v1}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p2, :cond_4

    const-string p3, "{http://xml.apache.org/xslt}indent-amount"

    .line 188
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p3, p2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string p2, "method"

    .line 189
    invoke-virtual {v0, p2, p1}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    return-object v0

    :catch_2
    move-exception p1

    .line 193
    new-instance p2, Lorg/seamless/xml/ParserException;

    invoke-direct {p2, p1}, Lorg/seamless/xml/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public createXPath(Ljavax/xml/namespace/NamespaceContext;)Ljavax/xml/xpath/XPath;
    .locals 1

    .line 309
    invoke-virtual {p0}, Lorg/seamless/xml/DOMParser;->createXPathFactory()Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v0

    .line 310
    invoke-interface {v0, p1}, Ljavax/xml/xpath/XPath;->setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V

    return-object v0
.end method

.method public createXPath(Ljavax/xml/xpath/XPathFactory;Ljavax/xml/namespace/NamespaceContext;)Ljavax/xml/xpath/XPath;
    .locals 0

    .line 315
    invoke-virtual {p1}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object p1

    .line 316
    invoke-interface {p1, p2}, Ljavax/xml/xpath/XPath;->setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V

    return-object p1
.end method

.method public createXPathFactory()Ljavax/xml/xpath/XPathFactory;
    .locals 1

    .line 305
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    return-object v0
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 458
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Lorg/seamless/xml/ParserException;

    invoke-direct {v1, p1}, Lorg/seamless/xml/ParserException;-><init>(Lorg/xml/sax/SAXParseException;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 462
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Lorg/seamless/xml/ParserException;

    invoke-direct {v1, p1}, Lorg/seamless/xml/ParserException;-><init>(Lorg/xml/sax/SAXParseException;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getSchema()Ljavax/xml/validation/Schema;
    .locals 3

    .line 92
    iget-object v0, p0, Lorg/seamless/xml/DOMParser;->schema:Ljavax/xml/validation/Schema;

    if-nez v0, :cond_1

    :try_start_0
    const-string v0, "http://www.w3.org/2001/XMLSchema"

    .line 96
    invoke-static {v0}, Ljavax/xml/validation/SchemaFactory;->newInstance(Ljava/lang/String;)Ljavax/xml/validation/SchemaFactory;

    move-result-object v0

    .line 98
    new-instance v1, Lorg/seamless/xml/CatalogResourceResolver;

    new-instance v2, Lorg/seamless/xml/DOMParser$1;

    invoke-direct {v2, p0}, Lorg/seamless/xml/DOMParser$1;-><init>(Lorg/seamless/xml/DOMParser;)V

    invoke-direct {v1, v2}, Lorg/seamless/xml/CatalogResourceResolver;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Ljavax/xml/validation/SchemaFactory;->setResourceResolver(Lorg/w3c/dom/ls/LSResourceResolver;)V

    .line 104
    iget-object v1, p0, Lorg/seamless/xml/DOMParser;->schemaSources:[Ljavax/xml/transform/Source;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lorg/seamless/xml/DOMParser;->schemaSources:[Ljavax/xml/transform/Source;

    invoke-virtual {v0, v1}, Ljavax/xml/validation/SchemaFactory;->newSchema([Ljavax/xml/transform/Source;)Ljavax/xml/validation/Schema;

    move-result-object v0

    iput-object v0, p0, Lorg/seamless/xml/DOMParser;->schema:Ljavax/xml/validation/Schema;

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {v0}, Ljavax/xml/validation/SchemaFactory;->newSchema()Ljavax/xml/validation/Schema;

    move-result-object v0

    iput-object v0, p0, Lorg/seamless/xml/DOMParser;->schema:Ljavax/xml/validation/Schema;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 111
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 114
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/seamless/xml/DOMParser;->schema:Ljavax/xml/validation/Schema;

    return-object v0
.end method

.method public getXPathResult(Lorg/seamless/xml/DOM;Ljavax/xml/xpath/XPath;Ljava/lang/String;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .locals 0

    .line 321
    invoke-virtual {p1}, Lorg/seamless/xml/DOM;->getW3CDocument()Lorg/w3c/dom/Document;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/seamless/xml/DOMParser;->getXPathResult(Lorg/w3c/dom/Node;Ljavax/xml/xpath/XPath;Ljava/lang/String;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getXPathResult(Lorg/seamless/xml/DOMElement;Ljavax/xml/xpath/XPath;Ljava/lang/String;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .locals 0

    .line 325
    invoke-virtual {p1}, Lorg/seamless/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/seamless/xml/DOMParser;->getXPathResult(Lorg/w3c/dom/Node;Ljavax/xml/xpath/XPath;Ljava/lang/String;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getXPathResult(Lorg/w3c/dom/Node;Ljavax/xml/xpath/XPath;Ljava/lang/String;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .locals 3

    .line 330
    :try_start_0
    sget-object v0, Lorg/seamless/xml/DOMParser;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Evaluating xpath query: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 331
    invoke-interface {p2, p3, p1, p4}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 333
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public isIgnorableWSNode(Lorg/w3c/dom/Node;)Z
    .locals 2

    .line 447
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[\\t\\n\\x0B\\f\\r\\s]+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public parse(Ljava/io/File;)Lorg/seamless/xml/DOM;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/seamless/xml/ParserException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 216
    invoke-virtual {p0, p1, v0}, Lorg/seamless/xml/DOMParser;->parse(Ljava/io/File;Z)Lorg/seamless/xml/DOM;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/io/File;Z)Lorg/seamless/xml/DOM;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Z)TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/seamless/xml/ParserException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 238
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t parse null file"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 240
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/seamless/xml/DOMParser;->parse(Ljava/net/URL;Z)Lorg/seamless/xml/DOM;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    .line 242
    new-instance v0, Lorg/seamless/xml/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parsing file failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lorg/seamless/xml/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public parse(Ljava/io/InputStream;)Lorg/seamless/xml/DOM;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/seamless/xml/ParserException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 220
    invoke-virtual {p0, p1, v0}, Lorg/seamless/xml/DOMParser;->parse(Ljava/io/InputStream;Z)Lorg/seamless/xml/DOM;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/io/InputStream;Z)Lorg/seamless/xml/DOM;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Z)TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/seamless/xml/ParserException;
        }
    .end annotation

    .line 247
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0, p2}, Lorg/seamless/xml/DOMParser;->parse(Lorg/xml/sax/InputSource;Z)Lorg/seamless/xml/DOM;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/String;)Lorg/seamless/xml/DOM;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/seamless/xml/ParserException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 212
    invoke-virtual {p0, p1, v0}, Lorg/seamless/xml/DOMParser;->parse(Ljava/lang/String;Z)Lorg/seamless/xml/DOM;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/String;Z)Lorg/seamless/xml/DOM;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/seamless/xml/ParserException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 233
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t parse null string"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 234
    :cond_0
    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0, p2}, Lorg/seamless/xml/DOMParser;->parse(Lorg/xml/sax/InputSource;Z)Lorg/seamless/xml/DOM;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/net/URL;)Lorg/seamless/xml/DOM;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/seamless/xml/ParserException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 208
    invoke-virtual {p0, p1, v0}, Lorg/seamless/xml/DOMParser;->parse(Ljava/net/URL;Z)Lorg/seamless/xml/DOM;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/net/URL;Z)Lorg/seamless/xml/DOM;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Z)TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/seamless/xml/ParserException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 224
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t parse null URL"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 226
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/seamless/xml/DOMParser;->parse(Ljava/io/InputStream;Z)Lorg/seamless/xml/DOM;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    .line 228
    new-instance v0, Lorg/seamless/xml/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parsing URL failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lorg/seamless/xml/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public parse(Lorg/xml/sax/InputSource;Z)Lorg/seamless/xml/DOM;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xml/sax/InputSource;",
            "Z)TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/seamless/xml/ParserException;
        }
    .end annotation

    .line 253
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/seamless/xml/DOMParser;->createFactory(Z)Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object p2

    invoke-virtual {p2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p2

    .line 255
    invoke-virtual {p2, p0}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 257
    invoke-virtual {p2, p0}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 259
    invoke-virtual {p2, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p1

    .line 261
    invoke-interface {p1}, Lorg/w3c/dom/Document;->normalizeDocument()V

    .line 263
    invoke-virtual {p0, p1}, Lorg/seamless/xml/DOMParser;->createDOM(Lorg/w3c/dom/Document;)Lorg/seamless/xml/DOM;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 266
    invoke-virtual {p0, p1}, Lorg/seamless/xml/DOMParser;->unwrapException(Ljava/lang/Exception;)Lorg/seamless/xml/ParserException;

    move-result-object p1

    throw p1
.end method

.method public print(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/seamless/xml/ParserException;
        }
    .end annotation

    .line 361
    new-instance v0, Ljavax/xml/transform/stream/StreamSource;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/seamless/xml/DOMParser;->print(Ljavax/xml/transform/Source;IZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public print(Ljavax/xml/transform/Source;IZ)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/seamless/xml/ParserException;
        }
    .end annotation

    :try_start_0
    const-string v0, "xml"

    .line 366
    invoke-virtual {p0, v0, p2, p3}, Lorg/seamless/xml/DOMParser;->createTransformer(Ljava/lang/String;IZ)Ljavax/xml/transform/Transformer;

    move-result-object p2

    const-string p3, "encoding"

    const-string v0, "utf-8"

    .line 367
    invoke-virtual {p2, p3, v0}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    new-instance p3, Ljava/io/StringWriter;

    invoke-direct {p3}, Ljava/io/StringWriter;-><init>()V

    .line 370
    new-instance v0, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v0, p3}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p2, p1, v0}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 371
    invoke-virtual {p3}, Ljava/io/StringWriter;->flush()V

    .line 373
    invoke-virtual {p3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 376
    new-instance p2, Lorg/seamless/xml/ParserException;

    invoke-direct {p2, p1}, Lorg/seamless/xml/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public print(Lorg/seamless/xml/DOM;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/seamless/xml/ParserException;
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x1

    .line 340
    invoke-virtual {p0, p1, v0, v1}, Lorg/seamless/xml/DOMParser;->print(Lorg/seamless/xml/DOM;IZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public print(Lorg/seamless/xml/DOM;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/seamless/xml/ParserException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 344
    invoke-virtual {p0, p1, p2, v0}, Lorg/seamless/xml/DOMParser;->print(Lorg/seamless/xml/DOM;IZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public print(Lorg/seamless/xml/DOM;IZ)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/seamless/xml/ParserException;
        }
    .end annotation

    .line 352
    invoke-virtual {p1}, Lorg/seamless/xml/DOM;->getW3CDocument()Lorg/w3c/dom/Document;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/seamless/xml/DOMParser;->print(Lorg/w3c/dom/Document;IZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public print(Lorg/seamless/xml/DOM;Z)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/seamless/xml/ParserException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 348
    invoke-virtual {p0, p1, v0, p2}, Lorg/seamless/xml/DOMParser;->print(Lorg/seamless/xml/DOM;IZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public print(Lorg/w3c/dom/Document;IZ)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/seamless/xml/ParserException;
        }
    .end annotation

    .line 356
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/seamless/xml/DOMParser;->removeIgnorableWSNodes(Lorg/w3c/dom/Element;)V

    .line 357
    new-instance v0, Ljavax/xml/transform/dom/DOMSource;

    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/seamless/xml/DOMParser;->print(Ljavax/xml/transform/Source;IZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public printHTML(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/seamless/xml/ParserException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x4

    .line 381
    invoke-virtual {p0, p1, v1, v0, v0}, Lorg/seamless/xml/DOMParser;->printHTML(Lorg/w3c/dom/Document;IZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public printHTML(Lorg/w3c/dom/Document;IZZ)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/seamless/xml/ParserException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 389
    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Document;

    .line 393
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    new-instance v1, Lorg/seamless/xml/DOMParser$2;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lorg/seamless/xml/DOMParser$2;-><init>(Lorg/seamless/xml/DOMParser;S)V

    invoke-static {v0, v1}, Lorg/seamless/xml/DOMParser;->accept(Lorg/w3c/dom/Node;Lorg/seamless/xml/DOMParser$NodeVisitor;)V

    .line 401
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/seamless/xml/DOMParser;->removeIgnorableWSNodes(Lorg/w3c/dom/Element;)V

    :try_start_0
    const-string v0, "html"

    .line 404
    invoke-virtual {p0, v0, p2, p3}, Lorg/seamless/xml/DOMParser;->createTransformer(Ljava/lang/String;IZ)Ljavax/xml/transform/Transformer;

    move-result-object p2

    if-eqz p4, :cond_0

    const-string p3, "doctype-public"

    const-string p4, "-//W3C//DTD HTML 4.01 Transitional//EN"

    .line 407
    invoke-virtual {p2, p3, p4}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "doctype-system"

    const-string p4, "http://www.w3.org/TR/html4/loose.dtd"

    .line 408
    invoke-virtual {p2, p3, p4}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :cond_0
    new-instance p3, Ljava/io/StringWriter;

    invoke-direct {p3}, Ljava/io/StringWriter;-><init>()V

    .line 412
    new-instance p4, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {p4, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance p1, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {p1, p3}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p2, p4, p1}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 413
    invoke-virtual {p3}, Ljava/io/StringWriter;->flush()V

    .line 414
    invoke-virtual {p3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\\s*<META http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">"

    const-string p3, ""

    .line 418
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "<html xmlns=\"http://www.w3.org/1999/xhtml\">"

    const-string p3, "<html>"

    .line 422
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 427
    new-instance p2, Lorg/seamless/xml/ParserException;

    invoke-direct {p2, p1}, Lorg/seamless/xml/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public removeIgnorableWSNodes(Lorg/w3c/dom/Element;)V
    .locals 4

    .line 432
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 436
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 437
    invoke-virtual {p0, v0}, Lorg/seamless/xml/DOMParser;->isIgnorableWSNode(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 438
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1

    .line 439
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 440
    check-cast v0, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v0}, Lorg/seamless/xml/DOMParser;->removeIgnorableWSNodes(Lorg/w3c/dom/Element;)V

    :cond_1
    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "file://"

    .line 479
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 482
    :cond_0
    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 484
    :goto_0
    invoke-virtual {v0, p1}, Lorg/xml/sax/InputSource;->setPublicId(Ljava/lang/String;)V

    .line 485
    invoke-virtual {v0, p2}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    return-object v0
.end method

.method protected unwrapException(Ljava/lang/Exception;)Lorg/seamless/xml/ParserException;
    .locals 1

    .line 467
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lorg/seamless/xml/ParserException;

    if-eqz v0, :cond_0

    .line 468
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lorg/seamless/xml/ParserException;

    return-object p1

    .line 470
    :cond_0
    new-instance v0, Lorg/seamless/xml/ParserException;

    invoke-direct {v0, p1}, Lorg/seamless/xml/ParserException;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public validate(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/seamless/xml/ParserException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 279
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t validate null string"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 280
    :cond_0
    sget-object v0, Lorg/seamless/xml/DOMParser;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Validating XML string characters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 281
    new-instance v0, Ljavax/xml/transform/sax/SAXSource;

    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-direct {v0, v1}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/InputSource;)V

    invoke-virtual {p0, v0}, Lorg/seamless/xml/DOMParser;->validate(Ljavax/xml/transform/Source;)V

    return-void
.end method

.method public validate(Ljava/net/URL;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/seamless/xml/ParserException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 273
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t validate null URL"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 274
    :cond_0
    sget-object v0, Lorg/seamless/xml/DOMParser;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Validating XML of URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 275
    new-instance v0, Ljavax/xml/transform/stream/StreamSource;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/seamless/xml/DOMParser;->validate(Ljavax/xml/transform/Source;)V

    return-void
.end method

.method public validate(Ljavax/xml/transform/Source;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/seamless/xml/ParserException;
        }
    .end annotation

    .line 294
    :try_start_0
    invoke-virtual {p0}, Lorg/seamless/xml/DOMParser;->getSchema()Ljavax/xml/validation/Schema;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/validation/Schema;->newValidator()Ljavax/xml/validation/Validator;

    move-result-object v0

    .line 295
    invoke-virtual {v0, p0}, Ljavax/xml/validation/Validator;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 296
    invoke-virtual {v0, p1}, Ljavax/xml/validation/Validator;->validate(Ljavax/xml/transform/Source;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 298
    invoke-virtual {p0, p1}, Lorg/seamless/xml/DOMParser;->unwrapException(Ljava/lang/Exception;)Lorg/seamless/xml/ParserException;

    move-result-object p1

    throw p1
.end method

.method public validate(Lorg/seamless/xml/DOM;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/seamless/xml/ParserException;
        }
    .end annotation

    .line 289
    new-instance v0, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual {p1}, Lorg/seamless/xml/DOM;->getW3CDocument()Lorg/w3c/dom/Document;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    invoke-virtual {p0, v0}, Lorg/seamless/xml/DOMParser;->validate(Ljavax/xml/transform/Source;)V

    return-void
.end method

.method public validate(Lorg/w3c/dom/Document;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/seamless/xml/ParserException;
        }
    .end annotation

    .line 285
    new-instance v0, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v0, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    invoke-virtual {p0, v0}, Lorg/seamless/xml/DOMParser;->validate(Ljavax/xml/transform/Source;)V

    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 454
    sget-object v0, Lorg/seamless/xml/DOMParser;->log:Ljava/util/logging/Logger;

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void
.end method
