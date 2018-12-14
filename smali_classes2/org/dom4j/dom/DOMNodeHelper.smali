.class public Lorg/dom4j/dom/DOMNodeHelper;
.super Ljava/lang/Object;
.source "DOMNodeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/dom4j/dom/DOMNodeHelper$EmptyNodeList;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final EMPTY_NODE_LIST:Lorg/w3c/dom/NodeList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lorg/dom4j/dom/DOMNodeHelper$EmptyNodeList;

    invoke-direct {v0}, Lorg/dom4j/dom/DOMNodeHelper$EmptyNodeList;-><init>()V

    sput-object v0, Lorg/dom4j/dom/DOMNodeHelper;->EMPTY_NODE_LIST:Lorg/w3c/dom/NodeList;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendChild(Lorg/dom4j/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 182
    instance-of v0, p0, Lorg/dom4j/Branch;

    if-eqz v0, :cond_1

    .line 183
    check-cast p0, Lorg/dom4j/Branch;

    .line 184
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    invoke-interface {v0, p1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 190
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/dom4j/Node;

    invoke-interface {p0, v0}, Lorg/dom4j/Branch;->add(Lorg/dom4j/Node;)V

    return-object p1

    .line 195
    :cond_1
    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Children not allowed for this node: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public static appendData(Lorg/dom4j/CharacterData;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 264
    invoke-interface {p0}, Lorg/dom4j/CharacterData;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 v0, 0x7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CharacterData node is read only: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    .line 268
    :cond_0
    invoke-interface {p0}, Lorg/dom4j/CharacterData;->getText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 271
    invoke-interface {p0, p1}, Lorg/dom4j/CharacterData;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/dom4j/CharacterData;->setText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static appendElementsByTagName(Ljava/util/List;Lorg/dom4j/Branch;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "-",
            "Lorg/dom4j/Element;",
            ">;",
            "Lorg/dom4j/Branch;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "*"

    .line 363
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 365
    invoke-interface {p1}, Lorg/dom4j/Branch;->nodeCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 366
    invoke-interface {p1, v2}, Lorg/dom4j/Branch;->node(I)Lorg/dom4j/Node;

    move-result-object v3

    .line 368
    instance-of v4, v3, Lorg/dom4j/Element;

    if-eqz v4, :cond_2

    .line 369
    check-cast v3, Lorg/dom4j/Element;

    if-nez v0, :cond_0

    .line 371
    invoke-interface {v3}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 372
    :cond_0
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    :cond_1
    invoke-static {p0, v3, p2}, Lorg/dom4j/dom/DOMNodeHelper;->appendElementsByTagName(Ljava/util/List;Lorg/dom4j/Branch;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static appendElementsByTagNameNS(Ljava/util/List;Lorg/dom4j/Branch;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "-",
            "Lorg/dom4j/Element;",
            ">;",
            "Lorg/dom4j/Branch;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "*"

    .line 382
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "*"

    .line 383
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 385
    invoke-interface {p1}, Lorg/dom4j/Branch;->nodeCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_6

    .line 386
    invoke-interface {p1, v3}, Lorg/dom4j/Branch;->node(I)Lorg/dom4j/Node;

    move-result-object v4

    .line 388
    instance-of v5, v4, Lorg/dom4j/Element;

    if-eqz v5, :cond_5

    .line 389
    check-cast v4, Lorg/dom4j/Element;

    if-nez v0, :cond_2

    if-eqz p2, :cond_0

    .line 393
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 394
    :cond_0
    invoke-interface {v4}, Lorg/dom4j/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 395
    invoke-interface {v4}, Lorg/dom4j/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    if-eqz p2, :cond_4

    .line 397
    invoke-interface {v4}, Lorg/dom4j/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    if-nez v1, :cond_3

    .line 398
    invoke-interface {v4}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 399
    :cond_3
    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    :cond_4
    invoke-static {p0, v4, p2, p3}, Lorg/dom4j/dom/DOMNodeHelper;->appendElementsByTagNameNS(Ljava/util/List;Lorg/dom4j/Branch;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public static asDOMAttr(Lorg/dom4j/Node;)Lorg/w3c/dom/Attr;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 512
    :cond_0
    instance-of v1, p0, Lorg/w3c/dom/Attr;

    if-eqz v1, :cond_1

    .line 513
    check-cast p0, Lorg/w3c/dom/Attr;

    return-object p0

    .line 516
    :cond_1
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    return-object v0
.end method

.method public static asDOMDocument(Lorg/dom4j/Document;)Lorg/w3c/dom/Document;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 452
    :cond_0
    instance-of v1, p0, Lorg/w3c/dom/Document;

    if-eqz v1, :cond_1

    .line 453
    check-cast p0, Lorg/w3c/dom/Document;

    return-object p0

    .line 456
    :cond_1
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    return-object v0
.end method

.method public static asDOMDocumentType(Lorg/dom4j/DocumentType;)Lorg/w3c/dom/DocumentType;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 467
    :cond_0
    instance-of v1, p0, Lorg/w3c/dom/DocumentType;

    if-eqz v1, :cond_1

    .line 468
    check-cast p0, Lorg/w3c/dom/DocumentType;

    return-object p0

    .line 471
    :cond_1
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    return-object v0
.end method

.method public static asDOMElement(Lorg/dom4j/Node;)Lorg/w3c/dom/Element;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 497
    :cond_0
    instance-of v1, p0, Lorg/w3c/dom/Element;

    if-eqz v1, :cond_1

    .line 498
    check-cast p0, Lorg/w3c/dom/Element;

    return-object p0

    .line 501
    :cond_1
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    return-object v0
.end method

.method public static asDOMNode(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 435
    :cond_0
    instance-of v1, p0, Lorg/w3c/dom/Node;

    if-eqz v1, :cond_1

    .line 436
    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0

    .line 439
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot convert: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " into a W3C DOM Node"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 441
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    return-object v0
.end method

.method public static asDOMText(Lorg/dom4j/CharacterData;)Lorg/w3c/dom/Text;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 482
    :cond_0
    instance-of v1, p0, Lorg/w3c/dom/Text;

    if-eqz v1, :cond_1

    .line 483
    check-cast p0, Lorg/w3c/dom/Text;

    return-object p0

    .line 486
    :cond_1
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    return-object v0
.end method

.method public static cloneNode(Lorg/dom4j/Node;Z)Lorg/w3c/dom/Node;
    .locals 0

    .line 204
    invoke-interface {p0}, Lorg/dom4j/Node;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/dom4j/Node;

    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMNode(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public static createNodeList(Ljava/util/List;)Lorg/w3c/dom/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/dom4j/Node;",
            ">;)",
            "Lorg/w3c/dom/NodeList;"
        }
    .end annotation

    .line 410
    new-instance v0, Lorg/dom4j/dom/DOMNodeHelper$1;

    invoke-direct {v0, p0}, Lorg/dom4j/dom/DOMNodeHelper$1;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static deleteData(Lorg/dom4j/CharacterData;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 305
    invoke-interface {p0}, Lorg/dom4j/CharacterData;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 p2, 0x7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CharacterData node is read only: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_0
    const/4 v0, 0x1

    if-gez p2, :cond_1

    .line 310
    new-instance p0, Lorg/w3c/dom/DOMException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal value for count: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0

    .line 314
    :cond_1
    invoke-interface {p0}, Lorg/dom4j/CharacterData;->getText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 317
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ltz p1, :cond_3

    if-lt p1, v2, :cond_2

    goto :goto_0

    .line 323
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/2addr p2, p1

    .line 324
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/dom4j/CharacterData;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 320
    :cond_3
    :goto_0
    new-instance p0, Lorg/w3c/dom/DOMException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No text at offset: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    return-void
.end method

.method public static getAttributes(Lorg/dom4j/Node;)Lorg/w3c/dom/NamedNodeMap;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getChildNodes(Lorg/dom4j/Node;)Lorg/w3c/dom/NodeList;
    .locals 0

    .line 68
    sget-object p0, Lorg/dom4j/dom/DOMNodeHelper;->EMPTY_NODE_LIST:Lorg/w3c/dom/NodeList;

    return-object p0
.end method

.method public static getData(Lorg/dom4j/CharacterData;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 226
    invoke-interface {p0}, Lorg/dom4j/CharacterData;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFirstChild(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getLastChild(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getLength(Lorg/dom4j/CharacterData;)I
    .locals 0

    .line 235
    invoke-interface {p0}, Lorg/dom4j/CharacterData;->getText()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 237
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getLocalName(Lorg/dom4j/Node;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getNamespaceURI(Lorg/dom4j/Node;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getNextSibling(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;
    .locals 2

    .line 96
    invoke-interface {p0}, Lorg/dom4j/Node;->getParent()Lorg/dom4j/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    invoke-interface {v0, p0}, Lorg/dom4j/Element;->indexOf(Lorg/dom4j/Node;)I

    move-result p0

    if-ltz p0, :cond_0

    add-int/lit8 p0, p0, 0x1

    .line 102
    invoke-interface {v0}, Lorg/dom4j/Element;->nodeCount()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 103
    invoke-interface {v0, p0}, Lorg/dom4j/Element;->node(I)Lorg/dom4j/Node;

    move-result-object p0

    .line 105
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMNode(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getNodeValue(Lorg/dom4j/Node;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 55
    invoke-interface {p0}, Lorg/dom4j/Node;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getOwnerDocument(Lorg/dom4j/Node;)Lorg/w3c/dom/Document;
    .locals 0

    .line 118
    invoke-interface {p0}, Lorg/dom4j/Node;->getDocument()Lorg/dom4j/Document;

    move-result-object p0

    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMDocument(Lorg/dom4j/Document;)Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0
.end method

.method public static getParentNode(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;
    .locals 0

    .line 64
    invoke-interface {p0}, Lorg/dom4j/Node;->getParent()Lorg/dom4j/Element;

    move-result-object p0

    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMNode(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public static getPrefix(Lorg/dom4j/Node;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPreviousSibling(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;
    .locals 1

    .line 80
    invoke-interface {p0}, Lorg/dom4j/Node;->getParent()Lorg/dom4j/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    invoke-interface {v0, p0}, Lorg/dom4j/Element;->indexOf(Lorg/dom4j/Node;)I

    move-result p0

    if-lez p0, :cond_0

    add-int/lit8 p0, p0, -0x1

    .line 86
    invoke-interface {v0, p0}, Lorg/dom4j/Element;->node(I)Lorg/dom4j/Node;

    move-result-object p0

    .line 88
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMNode(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static hasAttributes(Lorg/dom4j/Node;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 216
    instance-of v1, p0, Lorg/dom4j/Element;

    if-eqz v1, :cond_1

    .line 217
    check-cast p0, Lorg/dom4j/Element;

    invoke-interface {p0}, Lorg/dom4j/Element;->attributeCount()I

    move-result p0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    return v0
.end method

.method public static hasChildNodes(Lorg/dom4j/Node;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static insertBefore(Lorg/dom4j/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 124
    instance-of v0, p0, Lorg/dom4j/Branch;

    if-eqz v0, :cond_1

    .line 126
    check-cast p0, Lorg/dom4j/Branch;

    .line 127
    invoke-interface {p0}, Lorg/dom4j/Branch;->content()Ljava/util/List;

    move-result-object v0

    .line 128
    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    if-gez p2, :cond_0

    .line 131
    move-object p2, p1

    check-cast p2, Lorg/dom4j/Node;

    invoke-interface {p0, p2}, Lorg/dom4j/Branch;->add(Lorg/dom4j/Node;)V

    goto :goto_0

    .line 133
    :cond_0
    move-object p0, p1

    check-cast p0, Lorg/dom4j/Node;

    invoke-interface {v0, p2, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_0
    return-object p1

    .line 138
    :cond_1
    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 p2, 0x3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Children not allowed for this node: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public static insertData(Lorg/dom4j/CharacterData;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 280
    invoke-interface {p0}, Lorg/dom4j/CharacterData;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 p2, 0x7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CharacterData node is read only: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    .line 284
    :cond_0
    invoke-interface {p0}, Lorg/dom4j/CharacterData;->getText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 287
    invoke-interface {p0, p2}, Lorg/dom4j/CharacterData;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 289
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ltz p1, :cond_3

    if-le p1, v1, :cond_2

    goto :goto_1

    .line 295
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/dom4j/CharacterData;->setText(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 292
    :cond_3
    :goto_1
    new-instance p0, Lorg/w3c/dom/DOMException;

    const/4 p2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No text at offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method public static isNodeEquals(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_8

    if-nez p1, :cond_1

    goto :goto_0

    .line 560
    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    if-eq v2, v3, :cond_2

    return v1

    .line 563
    :cond_2
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/dom4j/dom/DOMNodeHelper;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 566
    :cond_3
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/dom4j/dom/DOMNodeHelper;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 569
    :cond_4
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/dom4j/dom/DOMNodeHelper;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 572
    :cond_5
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/dom4j/dom/DOMNodeHelper;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 575
    :cond_6
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_7

    return v1

    :cond_7
    return v0

    :cond_8
    :goto_0
    return v1
.end method

.method public static isNodeSame(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 550
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSupported(Lorg/dom4j/Node;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static normalize(Lorg/dom4j/Node;)V
    .locals 0

    .line 208
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    return-void
.end method

.method public static notSupported()V
    .locals 3

    .line 529
    new-instance v0, Lorg/w3c/dom/DOMException;

    const-string v1, "Not supported yet"

    const/16 v2, 0x9

    invoke-direct {v0, v2, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public static removeChild(Lorg/dom4j/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 169
    instance-of v0, p0, Lorg/dom4j/Branch;

    if-eqz v0, :cond_0

    .line 170
    check-cast p0, Lorg/dom4j/Branch;

    .line 171
    move-object v0, p1

    check-cast v0, Lorg/dom4j/Node;

    invoke-interface {p0, v0}, Lorg/dom4j/Branch;->remove(Lorg/dom4j/Node;)Z

    return-object p1

    .line 176
    :cond_0
    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Children not allowed for this node: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public static replaceChild(Lorg/dom4j/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 146
    instance-of v0, p0, Lorg/dom4j/Branch;

    if-eqz v0, :cond_1

    .line 147
    move-object v0, p0

    check-cast v0, Lorg/dom4j/Branch;

    .line 148
    invoke-interface {v0}, Lorg/dom4j/Branch;->content()Ljava/util/List;

    move-result-object v0

    .line 150
    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    .line 153
    new-instance p1, Lorg/w3c/dom/DOMException;

    const/16 p2, 0x8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to replace a non existing child for node: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    .line 158
    :cond_0
    check-cast p1, Lorg/dom4j/Node;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p2

    .line 162
    :cond_1
    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 p2, 0x3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Children not allowed for this node: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public static replaceData(Lorg/dom4j/CharacterData;IILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 333
    invoke-interface {p0}, Lorg/dom4j/CharacterData;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 p2, 0x7

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CharacterData node is read only: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_0
    const/4 v0, 0x1

    if-gez p2, :cond_1

    .line 338
    new-instance p0, Lorg/w3c/dom/DOMException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Illegal value for count: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0

    .line 342
    :cond_1
    invoke-interface {p0}, Lorg/dom4j/CharacterData;->getText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 345
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ltz p1, :cond_3

    if-lt p1, v2, :cond_2

    goto :goto_0

    .line 351
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/2addr p2, p1

    .line 352
    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/dom4j/CharacterData;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 348
    :cond_3
    :goto_0
    new-instance p0, Lorg/w3c/dom/DOMException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No text at offset: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    return-void
.end method

.method public static setData(Lorg/dom4j/CharacterData;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 231
    invoke-interface {p0, p1}, Lorg/dom4j/CharacterData;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public static setNodeValue(Lorg/dom4j/Node;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 60
    invoke-interface {p0, p1}, Lorg/dom4j/Node;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public static setPrefix(Lorg/dom4j/Node;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 51
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    return-void
.end method

.method public static substringData(Lorg/dom4j/CharacterData;II)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v0, 0x1

    if-gez p2, :cond_0

    .line 243
    new-instance p0, Lorg/w3c/dom/DOMException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal value for count: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0

    .line 247
    :cond_0
    invoke-interface {p0}, Lorg/dom4j/CharacterData;->getText()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 248
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ltz p1, :cond_4

    if-lt p1, v1, :cond_2

    goto :goto_1

    :cond_2
    add-int/2addr p2, p1

    if-le p2, v1, :cond_3

    .line 256
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 259
    :cond_3
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 251
    :cond_4
    :goto_1
    new-instance p0, Lorg/w3c/dom/DOMException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No text at offset: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method public static supports(Lorg/dom4j/Node;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
