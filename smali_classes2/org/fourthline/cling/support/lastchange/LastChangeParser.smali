.class public abstract Lorg/fourthline/cling/support/lastchange/LastChangeParser;
.super Lorg/seamless/xml/SAXParser;
.source "LastChangeParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fourthline/cling/support/lastchange/LastChangeParser$InstanceIDHandler;,
        Lorg/fourthline/cling/support/lastchange/LastChangeParser$RootHandler;,
        Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const-class v0, Lorg/fourthline/cling/support/lastchange/LastChangeParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/support/lastchange/LastChangeParser;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lorg/seamless/xml/SAXParser;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .line 58
    sget-object v0, Lorg/fourthline/cling/support/lastchange/LastChangeParser;->log:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method protected buildDOM(Lorg/fourthline/cling/support/lastchange/Event;)Lorg/w3c/dom/Document;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 198
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v1, 0x1

    .line 199
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 201
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 202
    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/support/lastchange/LastChangeParser;->generateRoot(Lorg/fourthline/cling/support/lastchange/Event;Lorg/w3c/dom/Document;)V

    return-object v0
.end method

.method protected createValue(Ljava/lang/String;[Ljava/util/Map$Entry;)Lorg/fourthline/cling/support/lastchange/EventedValue;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/fourthline/cling/support/lastchange/EventedValue;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Lorg/fourthline/cling/support/lastchange/LastChangeParser;->getEventedVariables()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 80
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    .line 81
    new-array v0, p1, [Ljava/lang/Class;

    const-class v2, [Ljava/util/Map$Entry;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 82
    new-array p1, p1, [Ljava/lang/Object;

    aput-object p2, p1, v3

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/lastchange/EventedValue;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public generate(Lorg/fourthline/cling/support/lastchange/Event;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 193
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/lastchange/LastChangeParser;->buildDOM(Lorg/fourthline/cling/support/lastchange/Event;)Lorg/w3c/dom/Document;

    move-result-object p1

    invoke-static {p1}, Lorg/fourthline/cling/model/XMLUtil;->documentToFragmentString(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected generateEventedValue(Lorg/fourthline/cling/support/lastchange/EventedValue;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V
    .locals 3

    .line 226
    invoke-virtual {p1}, Lorg/fourthline/cling/support/lastchange/EventedValue;->getName()Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-virtual {p1}, Lorg/fourthline/cling/support/lastchange/EventedValue;->getAttributes()[Ljava/util/Map$Entry;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 228
    array-length v1, p1

    if-lez v1, :cond_0

    .line 229
    invoke-static {p2, p3, v0}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 230
    array-length p3, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    aget-object v1, p1, v0

    .line 231
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/seamless/xml/DOMParser;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected generateInstanceIDs(Lorg/fourthline/cling/support/lastchange/Event;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V
    .locals 4

    .line 214
    invoke-virtual {p1}, Lorg/fourthline/cling/support/lastchange/Event;->getInstanceIDs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/lastchange/InstanceID;

    .line 215
    invoke-virtual {v0}, Lorg/fourthline/cling/support/lastchange/InstanceID;->getId()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 216
    :cond_1
    sget-object v1, Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;->InstanceID:Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;

    invoke-virtual {v1}, Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3, v1}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 217
    sget-object v2, Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;->val:Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;

    invoke-virtual {v2}, Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/fourthline/cling/support/lastchange/InstanceID;->getId()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {v0}, Lorg/fourthline/cling/support/lastchange/InstanceID;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/support/lastchange/EventedValue;

    .line 220
    invoke-virtual {p0, v2, p2, v1}, Lorg/fourthline/cling/support/lastchange/LastChangeParser;->generateEventedValue(Lorg/fourthline/cling/support/lastchange/EventedValue;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected generateRoot(Lorg/fourthline/cling/support/lastchange/Event;Lorg/w3c/dom/Document;)V
    .locals 2

    .line 208
    invoke-virtual {p0}, Lorg/fourthline/cling/support/lastchange/LastChangeParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;->Event:Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;

    invoke-virtual {v1}, Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 209
    invoke-interface {p2, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 210
    invoke-virtual {p0, p1, p2, v0}, Lorg/fourthline/cling/support/lastchange/LastChangeParser;->generateInstanceIDs(Lorg/fourthline/cling/support/lastchange/Event;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    return-void
.end method

.method protected getEventedVariables()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/fourthline/cling/support/lastchange/EventedValue;",
            ">;>;"
        }
    .end annotation

    .line 75
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0
.end method

.method protected abstract getNamespace()Ljava/lang/String;
.end method

.method public parse(Ljava/lang/String;)Lorg/fourthline/cling/support/lastchange/Event;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 107
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 111
    :cond_0
    new-instance v0, Lorg/fourthline/cling/support/lastchange/Event;

    invoke-direct {v0}, Lorg/fourthline/cling/support/lastchange/Event;-><init>()V

    .line 112
    new-instance v1, Lorg/fourthline/cling/support/lastchange/LastChangeParser$RootHandler;

    invoke-direct {v1, p0, v0, p0}, Lorg/fourthline/cling/support/lastchange/LastChangeParser$RootHandler;-><init>(Lorg/fourthline/cling/support/lastchange/LastChangeParser;Lorg/fourthline/cling/support/lastchange/Event;Lorg/seamless/xml/SAXParser;)V

    .line 114
    sget-object v1, Lorg/fourthline/cling/support/lastchange/LastChangeParser;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    sget-object v1, Lorg/fourthline/cling/support/lastchange/LastChangeParser;->log:Ljava/util/logging/Logger;

    const-string v2, "Parsing \'LastChange\' event XML content"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 116
    sget-object v1, Lorg/fourthline/cling/support/lastchange/LastChangeParser;->log:Ljava/util/logging/Logger;

    const-string v2, "===================================== \'LastChange\' BEGIN ============================================"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 117
    sget-object v1, Lorg/fourthline/cling/support/lastchange/LastChangeParser;->log:Ljava/util/logging/Logger;

    invoke-virtual {v1, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 118
    sget-object v1, Lorg/fourthline/cling/support/lastchange/LastChangeParser;->log:Ljava/util/logging/Logger;

    const-string v2, "====================================== \'LastChange\' END  ============================================"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 120
    :cond_1
    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v1}, Lorg/fourthline/cling/support/lastchange/LastChangeParser;->parse(Lorg/xml/sax/InputSource;)V

    .line 122
    sget-object p1, Lorg/fourthline/cling/support/lastchange/LastChangeParser;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parsed event with instances IDs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/lastchange/Event;->getInstanceIDs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 123
    sget-object p1, Lorg/fourthline/cling/support/lastchange/LastChangeParser;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 124
    invoke-virtual {v0}, Lorg/fourthline/cling/support/lastchange/Event;->getInstanceIDs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/support/lastchange/InstanceID;

    .line 125
    sget-object v2, Lorg/fourthline/cling/support/lastchange/LastChangeParser;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InstanceID \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/fourthline/cling/support/lastchange/InstanceID;->getId()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\' has values: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/fourthline/cling/support/lastchange/InstanceID;->getValues()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v1}, Lorg/fourthline/cling/support/lastchange/InstanceID;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/support/lastchange/EventedValue;

    .line 127
    sget-object v3, Lorg/fourthline/cling/support/lastchange/LastChangeParser;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/fourthline/cling/support/lastchange/EventedValue;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/fourthline/cling/support/lastchange/EventedValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-object v0

    .line 108
    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Null or empty XML"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public parseResource(Ljava/lang/String;)Lorg/fourthline/cling/support/lastchange/Event;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 98
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 99
    :try_start_1
    invoke-static {p1}, Lorg/seamless/util/io/IO;->readLines(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/lastchange/LastChangeParser;->parse(Ljava/lang/String;)Lorg/fourthline/cling/support/lastchange/Event;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 101
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    throw p1
.end method
