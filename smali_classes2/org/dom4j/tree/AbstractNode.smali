.class public abstract Lorg/dom4j/tree/AbstractNode;
.super Ljava/lang/Object;
.source "AbstractNode.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/dom4j/Node;


# static fields
.field private static final DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

.field protected static final NODE_TYPE_NAMES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xf

    .line 28
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Node"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Element"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Attribute"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Text"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "CDATA"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "Entity"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "Entity"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "ProcessingInstruction"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "Comment"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "Document"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "DocumentType"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "DocumentFragment"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "Notation"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "Namespace"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "Unknown"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sput-object v0, Lorg/dom4j/tree/AbstractNode;->NODE_TYPE_NAMES:[Ljava/lang/String;

    .line 35
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    sput-object v0, Lorg/dom4j/tree/AbstractNode;->DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asXPathResult(Lorg/dom4j/Element;)Lorg/dom4j/Node;
    .locals 1

    .line 214
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractNode;->supportsParent()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 218
    :cond_0
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractNode;->createXPathResult(Lorg/dom4j/Element;)Lorg/dom4j/Node;

    move-result-object p1

    return-object p1
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .line 91
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractNode;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 95
    :cond_0
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    const/4 v1, 0x0

    .line 96
    invoke-interface {v0, v1}, Lorg/dom4j/Node;->setParent(Lorg/dom4j/Element;)V

    .line 97
    invoke-interface {v0, v1}, Lorg/dom4j/Node;->setDocument(Lorg/dom4j/Document;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 102
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This should never happen. Caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createPattern(Ljava/lang/String;)Lorg/dom4j/rule/Pattern;
    .locals 1

    .line 210
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractNode;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createPattern(Ljava/lang/String;)Lorg/dom4j/rule/Pattern;

    move-result-object p1

    return-object p1
.end method

.method public createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;
    .locals 1

    .line 202
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractNode;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object p1

    return-object p1
.end method

.method public createXPathFilter(Ljava/lang/String;)Lorg/dom4j/NodeFilter;
    .locals 1

    .line 206
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractNode;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createXPathFilter(Ljava/lang/String;)Lorg/dom4j/NodeFilter;

    move-result-object p1

    return-object p1
.end method

.method protected createXPathResult(Lorg/dom4j/Element;)Lorg/dom4j/Node;
    .locals 2

    .line 226
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "asXPathResult() not yet implemented fully for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public detach()Lorg/dom4j/Node;
    .locals 1

    .line 109
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractNode;->getParent()Lorg/dom4j/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    invoke-interface {v0, p0}, Lorg/dom4j/Element;->remove(Lorg/dom4j/Node;)Z

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractNode;->getDocument()Lorg/dom4j/Document;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 117
    invoke-interface {v0, p0}, Lorg/dom4j/Document;->remove(Lorg/dom4j/Node;)Z

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 121
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractNode;->setParent(Lorg/dom4j/Element;)V

    .line 122
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractNode;->setDocument(Lorg/dom4j/Document;)V

    return-object p0
.end method

.method public getDocument()Lorg/dom4j/Document;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractNode;->getParent()Lorg/dom4j/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-interface {v0}, Lorg/dom4j/Element;->getDocument()Lorg/dom4j/Document;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected getDocumentFactory()Lorg/dom4j/DocumentFactory;
    .locals 1

    .line 222
    sget-object v0, Lorg/dom4j/tree/AbstractNode;->DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    const/16 v0, 0xe

    return v0
.end method

.method public getNodeTypeName()Ljava/lang/String;
    .locals 2

    .line 45
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractNode;->getNodeType()S

    move-result v0

    if-ltz v0, :cond_1

    .line 47
    sget-object v1, Lorg/dom4j/tree/AbstractNode;->NODE_TYPE_NAMES:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    sget-object v1, Lorg/dom4j/tree/AbstractNode;->NODE_TYPE_NAMES:[Ljava/lang/String;

    aget-object v0, v1, v0

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "Unknown"

    return-object v0
.end method

.method public getParent()Lorg/dom4j/Element;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractNode;->getPath(Lorg/dom4j/Element;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    .line 140
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractNode;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUniquePath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractNode;->getUniquePath(Lorg/dom4j/Element;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasContent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 0

    .line 196
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractNode;->createXPathFilter(Ljava/lang/String;)Lorg/dom4j/NodeFilter;

    move-result-object p1

    .line 198
    invoke-interface {p1, p0}, Lorg/dom4j/NodeFilter;->matches(Lorg/dom4j/Node;)Z

    move-result p1

    return p1
.end method

.method public numberValueOf(Ljava/lang/String;)Ljava/lang/Number;
    .locals 0

    .line 190
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractNode;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object p1

    .line 192
    invoke-interface {p1, p0}, Lorg/dom4j/XPath;->numberValueOf(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public selectNodes(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/dom4j/Node;",
            ">;"
        }
    .end annotation

    .line 159
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractNode;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object p1

    .line 161
    invoke-interface {p1, p0}, Lorg/dom4j/XPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public selectNodes(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/dom4j/Node;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 166
    invoke-virtual {p0, p1, p2, v0}, Lorg/dom4j/tree/AbstractNode;->selectNodes(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public selectNodes(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lorg/dom4j/Node;",
            ">;"
        }
    .end annotation

    .line 171
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractNode;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object p1

    .line 172
    invoke-virtual {p0, p2}, Lorg/dom4j/tree/AbstractNode;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object p2

    .line 174
    invoke-interface {p1, p0, p2, p3}, Lorg/dom4j/XPath;->selectNodes(Ljava/lang/Object;Lorg/dom4j/XPath;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public selectObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 153
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractNode;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object p1

    .line 155
    invoke-interface {p1, p0}, Lorg/dom4j/XPath;->evaluate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;
    .locals 0

    .line 178
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractNode;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object p1

    .line 180
    invoke-interface {p1, p0}, Lorg/dom4j/XPath;->selectSingleNode(Ljava/lang/Object;)Lorg/dom4j/Node;

    move-result-object p1

    return-object p1
.end method

.method public setDocument(Lorg/dom4j/Document;)V
    .locals 0

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .line 132
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This node cannot be modified"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setParent(Lorg/dom4j/Element;)V
    .locals 0

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 144
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This node cannot be modified"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public supportsParent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public valueOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 184
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractNode;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object p1

    .line 186
    invoke-interface {p1, p0}, Lorg/dom4j/XPath;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public write(Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractNode;->asXML()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method
