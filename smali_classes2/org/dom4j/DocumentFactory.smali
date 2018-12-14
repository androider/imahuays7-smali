.class public Lorg/dom4j/DocumentFactory;
.super Ljava/lang/Object;
.source "DocumentFactory.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static singleton:Lorg/dom4j/util/SingletonStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/dom4j/util/SingletonStrategy<",
            "Lorg/dom4j/DocumentFactory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected transient cache:Lorg/dom4j/tree/QNameCache;

.field private xpathNamespaceURIs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p0}, Lorg/dom4j/DocumentFactory;->init()V

    return-void
.end method

.method protected static createSingleton(Ljava/lang/String;)Lorg/dom4j/DocumentFactory;
    .locals 3

    const/4 v0, 0x1

    .line 367
    :try_start_0
    const-class v1, Lorg/dom4j/DocumentFactory;

    .line 368
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 367
    invoke-static {p0, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 370
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/DocumentFactory;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 372
    :catch_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WARNING: Cannot load DocumentFactory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 375
    new-instance p0, Lorg/dom4j/DocumentFactory;

    invoke-direct {p0}, Lorg/dom4j/DocumentFactory;-><init>()V

    return-object p0
.end method

.method private static createSingleton()Lorg/dom4j/util/SingletonStrategy;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/dom4j/util/SingletonStrategy<",
            "Lorg/dom4j/DocumentFactory;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "org.dom4j.factory"

    const-string v1, "org.dom4j.DocumentFactory"

    .line 57
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "org.dom4j.DocumentFactory"

    :goto_0
    :try_start_1
    const-string v1, "org.dom4j.DocumentFactory.singleton.strategy"

    const-string v2, "org.dom4j.util.SimpleSingleton"

    .line 64
    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/util/SingletonStrategy;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 70
    :catch_1
    new-instance v1, Lorg/dom4j/util/SimpleSingleton;

    invoke-direct {v1}, Lorg/dom4j/util/SimpleSingleton;-><init>()V

    .line 73
    :goto_1
    invoke-interface {v1, v0}, Lorg/dom4j/util/SingletonStrategy;->setSingletonClassName(Ljava/lang/String;)V

    return-object v1
.end method

.method public static declared-synchronized getInstance()Lorg/dom4j/DocumentFactory;
    .locals 2

    const-class v0, Lorg/dom4j/DocumentFactory;

    monitor-enter v0

    .line 89
    :try_start_0
    sget-object v1, Lorg/dom4j/DocumentFactory;->singleton:Lorg/dom4j/util/SingletonStrategy;

    if-nez v1, :cond_0

    .line 90
    invoke-static {}, Lorg/dom4j/DocumentFactory;->createSingleton()Lorg/dom4j/util/SingletonStrategy;

    move-result-object v1

    sput-object v1, Lorg/dom4j/DocumentFactory;->singleton:Lorg/dom4j/util/SingletonStrategy;

    .line 92
    :cond_0
    sget-object v1, Lorg/dom4j/DocumentFactory;->singleton:Lorg/dom4j/util/SingletonStrategy;

    invoke-interface {v1}, Lorg/dom4j/util/SingletonStrategy;->instance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/DocumentFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 88
    monitor-exit v0

    throw v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 404
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 405
    invoke-virtual {p0}, Lorg/dom4j/DocumentFactory;->init()V

    return-void
.end method


# virtual methods
.method public createAttribute(Lorg/dom4j/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Attribute;
    .locals 0

    .line 152
    invoke-virtual {p0, p2}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lorg/dom4j/DocumentFactory;->createAttribute(Lorg/dom4j/Element;Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public createAttribute(Lorg/dom4j/Element;Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Attribute;
    .locals 0

    .line 148
    new-instance p1, Lorg/dom4j/tree/DefaultAttribute;

    invoke-direct {p1, p2, p3}, Lorg/dom4j/tree/DefaultAttribute;-><init>(Lorg/dom4j/QName;Ljava/lang/String;)V

    return-object p1
.end method

.method public createCDATA(Ljava/lang/String;)Lorg/dom4j/CDATA;
    .locals 1

    .line 156
    new-instance v0, Lorg/dom4j/tree/DefaultCDATA;

    invoke-direct {v0, p1}, Lorg/dom4j/tree/DefaultCDATA;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createComment(Ljava/lang/String;)Lorg/dom4j/Comment;
    .locals 1

    .line 160
    new-instance v0, Lorg/dom4j/tree/DefaultComment;

    invoke-direct {v0, p1}, Lorg/dom4j/tree/DefaultComment;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createDocType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/DocumentType;
    .locals 1

    .line 132
    new-instance v0, Lorg/dom4j/tree/DefaultDocumentType;

    invoke-direct {v0, p1, p2, p3}, Lorg/dom4j/tree/DefaultDocumentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createDocument()Lorg/dom4j/Document;
    .locals 1

    .line 97
    new-instance v0, Lorg/dom4j/tree/DefaultDocument;

    invoke-direct {v0}, Lorg/dom4j/tree/DefaultDocument;-><init>()V

    .line 98
    invoke-virtual {v0, p0}, Lorg/dom4j/tree/DefaultDocument;->setDocumentFactory(Lorg/dom4j/DocumentFactory;)V

    return-object v0
.end method

.method public createDocument(Ljava/lang/String;)Lorg/dom4j/Document;
    .locals 1

    .line 117
    invoke-virtual {p0}, Lorg/dom4j/DocumentFactory;->createDocument()Lorg/dom4j/Document;

    move-result-object v0

    .line 119
    invoke-interface {v0, p1}, Lorg/dom4j/Document;->setXMLEncoding(Ljava/lang/String;)V

    return-object v0
.end method

.method public createDocument(Lorg/dom4j/Element;)Lorg/dom4j/Document;
    .locals 1

    .line 124
    invoke-virtual {p0}, Lorg/dom4j/DocumentFactory;->createDocument()Lorg/dom4j/Document;

    move-result-object v0

    .line 125
    invoke-interface {v0, p1}, Lorg/dom4j/Document;->setRootElement(Lorg/dom4j/Element;)V

    return-object v0
.end method

.method public createElement(Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 0

    .line 140
    invoke-virtual {p0, p1}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/dom4j/DocumentFactory;->createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object p1

    return-object p1
.end method

.method public createElement(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 0

    .line 144
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/dom4j/DocumentFactory;->createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object p1

    return-object p1
.end method

.method public createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;
    .locals 1

    .line 136
    new-instance v0, Lorg/dom4j/tree/DefaultElement;

    invoke-direct {v0, p1}, Lorg/dom4j/tree/DefaultElement;-><init>(Lorg/dom4j/QName;)V

    return-object v0
.end method

.method public createEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Entity;
    .locals 1

    .line 173
    new-instance v0, Lorg/dom4j/tree/DefaultEntity;

    invoke-direct {v0, p1, p2}, Lorg/dom4j/tree/DefaultEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;
    .locals 0

    .line 177
    invoke-static {p1, p2}, Lorg/dom4j/Namespace;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object p1

    return-object p1
.end method

.method public createPattern(Ljava/lang/String;)Lorg/dom4j/rule/Pattern;
    .locals 1

    .line 307
    new-instance v0, Lorg/dom4j/xpath/XPathPattern;

    invoke-direct {v0, p1}, Lorg/dom4j/xpath/XPathPattern;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/ProcessingInstruction;
    .locals 1

    .line 182
    new-instance v0, Lorg/dom4j/tree/DefaultProcessingInstruction;

    invoke-direct {v0, p1, p2}, Lorg/dom4j/tree/DefaultProcessingInstruction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createProcessingInstruction(Ljava/lang/String;Ljava/util/Map;)Lorg/dom4j/ProcessingInstruction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/dom4j/ProcessingInstruction;"
        }
    .end annotation

    .line 187
    new-instance v0, Lorg/dom4j/tree/DefaultProcessingInstruction;

    invoke-direct {v0, p1, p2}, Lorg/dom4j/tree/DefaultProcessingInstruction;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public createQName(Ljava/lang/String;)Lorg/dom4j/QName;
    .locals 1

    .line 195
    iget-object v0, p0, Lorg/dom4j/DocumentFactory;->cache:Lorg/dom4j/tree/QNameCache;

    invoke-virtual {v0, p1}, Lorg/dom4j/tree/QNameCache;->get(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object p1

    return-object p1
.end method

.method public createQName(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;
    .locals 1

    .line 203
    iget-object v0, p0, Lorg/dom4j/DocumentFactory;->cache:Lorg/dom4j/tree/QNameCache;

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/tree/QNameCache;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object p1

    return-object p1
.end method

.method public createQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;
    .locals 1

    .line 199
    iget-object v0, p0, Lorg/dom4j/DocumentFactory;->cache:Lorg/dom4j/tree/QNameCache;

    invoke-static {p2, p3}, Lorg/dom4j/Namespace;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/tree/QNameCache;->get(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object p1

    return-object p1
.end method

.method public createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;
    .locals 1

    .line 191
    iget-object v0, p0, Lorg/dom4j/DocumentFactory;->cache:Lorg/dom4j/tree/QNameCache;

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/tree/QNameCache;->get(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object p1

    return-object p1
.end method

.method protected createQNameCache()Lorg/dom4j/tree/QNameCache;
    .locals 1

    .line 399
    new-instance v0, Lorg/dom4j/tree/QNameCache;

    invoke-direct {v0, p0}, Lorg/dom4j/tree/QNameCache;-><init>(Lorg/dom4j/DocumentFactory;)V

    return-object v0
.end method

.method public createText(Ljava/lang/String;)Lorg/dom4j/Text;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "Adding text to an XML document must not be null"

    .line 166
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    new-instance v0, Lorg/dom4j/tree/DefaultText;

    invoke-direct {v0, p1}, Lorg/dom4j/tree/DefaultText;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/InvalidXPathException;
        }
    .end annotation

    .line 222
    new-instance v0, Lorg/dom4j/xpath/DefaultXPath;

    invoke-direct {v0, p1}, Lorg/dom4j/xpath/DefaultXPath;-><init>(Ljava/lang/String;)V

    .line 224
    iget-object p1, p0, Lorg/dom4j/DocumentFactory;->xpathNamespaceURIs:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 225
    iget-object p1, p0, Lorg/dom4j/DocumentFactory;->xpathNamespaceURIs:Ljava/util/Map;

    invoke-virtual {v0, p1}, Lorg/dom4j/xpath/DefaultXPath;->setNamespaceURIs(Ljava/util/Map;)V

    :cond_0
    return-object v0
.end method

.method public createXPath(Ljava/lang/String;Lorg/jaxen/VariableContext;)Lorg/dom4j/XPath;
    .locals 0

    .line 246
    invoke-virtual {p0, p1}, Lorg/dom4j/DocumentFactory;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object p1

    .line 247
    invoke-interface {p1, p2}, Lorg/dom4j/XPath;->setVariableContext(Lorg/jaxen/VariableContext;)V

    return-object p1
.end method

.method public createXPathFilter(Ljava/lang/String;)Lorg/dom4j/NodeFilter;
    .locals 0

    .line 289
    invoke-virtual {p0, p1}, Lorg/dom4j/DocumentFactory;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object p1

    return-object p1
.end method

.method public createXPathFilter(Ljava/lang/String;Lorg/jaxen/VariableContext;)Lorg/dom4j/NodeFilter;
    .locals 0

    .line 268
    invoke-virtual {p0, p1}, Lorg/dom4j/DocumentFactory;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object p1

    .line 271
    invoke-interface {p1, p2}, Lorg/dom4j/XPath;->setVariableContext(Lorg/jaxen/VariableContext;)V

    return-object p1
.end method

.method public getQNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/dom4j/QName;",
            ">;"
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lorg/dom4j/DocumentFactory;->cache:Lorg/dom4j/tree/QNameCache;

    invoke-virtual {v0}, Lorg/dom4j/tree/QNameCache;->getQNames()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getXPathNamespaceURIs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lorg/dom4j/DocumentFactory;->xpathNamespaceURIs:Ljava/util/Map;

    return-object v0
.end method

.method protected init()V
    .locals 1

    .line 409
    invoke-virtual {p0}, Lorg/dom4j/DocumentFactory;->createQNameCache()Lorg/dom4j/tree/QNameCache;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/DocumentFactory;->cache:Lorg/dom4j/tree/QNameCache;

    return-void
.end method

.method protected intern(Lorg/dom4j/QName;)Lorg/dom4j/QName;
    .locals 1

    .line 389
    iget-object v0, p0, Lorg/dom4j/DocumentFactory;->cache:Lorg/dom4j/tree/QNameCache;

    invoke-virtual {v0, p1}, Lorg/dom4j/tree/QNameCache;->intern(Lorg/dom4j/QName;)Lorg/dom4j/QName;

    move-result-object p1

    return-object p1
.end method

.method public setXPathNamespaceURIs(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 345
    iput-object p1, p0, Lorg/dom4j/DocumentFactory;->xpathNamespaceURIs:Ljava/util/Map;

    return-void
.end method
