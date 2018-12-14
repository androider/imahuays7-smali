.class public Lorg/dom4j/dom/DOMElement;
.super Lorg/dom4j/tree/DefaultElement;
.source "DOMElement.java"

# interfaces
.implements Lorg/w3c/dom/Element;


# static fields
.field private static final DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    invoke-static {}, Lorg/dom4j/dom/DOMDocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    sput-object v0, Lorg/dom4j/dom/DOMElement;->DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lorg/dom4j/tree/DefaultElement;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/dom4j/Namespace;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lorg/dom4j/tree/DefaultElement;-><init>(Ljava/lang/String;Lorg/dom4j/Namespace;)V

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/QName;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lorg/dom4j/tree/DefaultElement;-><init>(Lorg/dom4j/QName;)V

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/QName;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lorg/dom4j/tree/DefaultElement;-><init>(Lorg/dom4j/QName;I)V

    return-void
.end method

.method private checkNewChildNode(Lorg/w3c/dom/Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 146
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    .line 153
    new-instance p1, Lorg/w3c/dom/DOMException;

    const-string v1, "Given node cannot be a child of element"

    invoke-direct {p1, v0, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_0
    return-void
.end method


# virtual methods
.method public appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 139
    invoke-direct {p0, p1}, Lorg/dom4j/dom/DOMElement;->checkNewChildNode(Lorg/w3c/dom/Node;)V

    .line 141
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->appendChild(Lorg/dom4j/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p1

    return-object p1
.end method

.method protected attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Attribute;
    .locals 3

    .line 340
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMElement;->attributeList()Ljava/util/List;

    move-result-object v0

    .line 341
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 343
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Attribute;

    .line 344
    invoke-interface {v1}, Lorg/dom4j/Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_1

    .line 345
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 346
    :cond_1
    invoke-interface {v1}, Lorg/dom4j/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 347
    invoke-interface {v1}, Lorg/dom4j/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    if-eqz p1, :cond_0

    .line 349
    invoke-interface {v1}, Lorg/dom4j/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    return-object v1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method protected attribute(Lorg/w3c/dom/Attr;)Lorg/dom4j/Attribute;
    .locals 3

    .line 335
    sget-object v0, Lorg/dom4j/dom/DOMElement;->DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v1

    .line 336
    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object p1

    .line 335
    invoke-virtual {v0, v1, v2, p1}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/dom4j/dom/DOMElement;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 0

    .line 163
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->cloneNode(Lorg/dom4j/Node;Z)Lorg/w3c/dom/Node;

    move-result-object p1

    return-object p1
.end method

.method public compareDocumentPosition(Lorg/w3c/dom/Node;)S
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 409
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    const/4 p1, 0x0

    return p1
.end method

.method protected createAttribute(Lorg/w3c/dom/Attr;)Lorg/dom4j/Attribute;
    .locals 4

    .line 359
    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 362
    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 363
    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    .line 364
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    goto :goto_0

    .line 366
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v0

    .line 367
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    .line 370
    :goto_0
    new-instance v1, Lorg/dom4j/dom/DOMAttribute;

    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lorg/dom4j/dom/DOMAttribute;-><init>(Lorg/dom4j/QName;Ljava/lang/String;)V

    return-object v1
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 181
    invoke-virtual {p0, p1}, Lorg/dom4j/dom/DOMElement;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 244
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/dom/DOMElement;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 247
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 0

    .line 199
    invoke-virtual {p0, p1}, Lorg/dom4j/dom/DOMElement;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object p1

    invoke-static {p1}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMAttr(Lorg/dom4j/Node;)Lorg/w3c/dom/Attr;

    move-result-object p1

    return-object p1
.end method

.method public getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 0

    .line 280
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/dom/DOMElement;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 283
    invoke-static {p1}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMAttr(Lorg/dom4j/Node;)Lorg/w3c/dom/Attr;

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .locals 1

    .line 111
    new-instance v0, Lorg/dom4j/dom/DOMAttributeNodeMap;

    invoke-direct {v0, p0}, Lorg/dom4j/dom/DOMAttributeNodeMap;-><init>(Lorg/dom4j/dom/DOMElement;)V

    return-object v0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 1

    .line 404
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .locals 1

    .line 91
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMElement;->content()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/dom4j/dom/DOMNodeHelper;->createNodeList(Ljava/util/List;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    return-object v0
.end method

.method protected getDocumentFactory()Lorg/dom4j/DocumentFactory;
    .locals 1

    .line 329
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMElement;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/QName;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 331
    :cond_0
    sget-object v0, Lorg/dom4j/dom/DOMElement;->DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

    :goto_0
    return-object v0
.end method

.method public getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 1

    .line 305
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 306
    invoke-static {v0, p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->appendElementsByTagName(Ljava/util/List;Lorg/dom4j/Branch;Ljava/lang/String;)V

    .line 308
    invoke-static {v0}, Lorg/dom4j/dom/DOMNodeHelper;->createNodeList(Ljava/util/List;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    return-object p1
.end method

.method public getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 1

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 313
    invoke-static {v0, p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->appendElementsByTagNameNS(Ljava/util/List;Lorg/dom4j/Branch;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-static {v0}, Lorg/dom4j/dom/DOMNodeHelper;->createNodeList(Ljava/util/List;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    return-object p1
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 446
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getFirstChild()Lorg/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p0, v0}, Lorg/dom4j/dom/DOMElement;->node(I)Lorg/dom4j/Node;

    move-result-object v0

    invoke-static {v0}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMNode(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getLastChild()Lorg/w3c/dom/Node;
    .locals 1

    .line 99
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMElement;->nodeCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/dom4j/dom/DOMElement;->node(I)Lorg/dom4j/Node;

    move-result-object v0

    invoke-static {v0}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMNode(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMElement;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/QName;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMElement;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 1

    .line 107
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getNextSibling(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMElement;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOwnerDocument()Lorg/w3c/dom/Document;
    .locals 1

    .line 115
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getOwnerDocument(Lorg/dom4j/Node;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .locals 1

    .line 87
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getParentNode(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMElement;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/QName;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .locals 1

    .line 103
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getPreviousSibling(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method protected getQName(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;
    .locals 2

    const/16 v0, 0x3a

    .line 374
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const-string v1, ""

    if-ltz v0, :cond_0

    const/4 v1, 0x0

    .line 379
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    .line 380
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 383
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p2, v1, p1}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object p1

    return-object p1
.end method

.method public getSchemaTypeInfo()Lorg/w3c/dom/TypeInfo;
    .locals 1

    .line 387
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .line 177
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMElement;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 414
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 456
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public hasAttribute(Ljava/lang/String;)Z
    .locals 0

    .line 319
    invoke-virtual {p0, p1}, Lorg/dom4j/dom/DOMElement;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasAttributeNS(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 323
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/dom/DOMElement;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasAttributes()Z
    .locals 1

    .line 171
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->hasAttributes(Lorg/dom4j/Node;)Z

    move-result v0

    return v0
.end method

.method public hasChildNodes()Z
    .locals 1

    .line 159
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMElement;->nodeCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 120
    invoke-direct {p0, p1}, Lorg/dom4j/dom/DOMElement;->checkNewChildNode(Lorg/w3c/dom/Node;)V

    .line 122
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->insertBefore(Lorg/dom4j/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p1

    return-object p1
.end method

.method public isDefaultNamespace(Ljava/lang/String;)Z
    .locals 0

    .line 432
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    const/4 p1, 0x0

    return p1
.end method

.method public isEqualNode(Lorg/w3c/dom/Node;)Z
    .locals 0

    .line 442
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->isNodeEquals(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result p1

    return p1
.end method

.method public isSameNode(Lorg/w3c/dom/Node;)Z
    .locals 0

    .line 423
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->isNodeSame(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result p1

    return p1
.end method

.method public isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 167
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->isSupported(Lorg/dom4j/Node;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 437
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public lookupPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 427
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 191
    invoke-virtual {p0, p1}, Lorg/dom4j/dom/DOMElement;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 194
    invoke-virtual {p0, p1}, Lorg/dom4j/dom/DOMElement;->remove(Lorg/dom4j/Attribute;)Z

    :cond_0
    return-void
.end method

.method public removeAttributeNS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 271
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/dom/DOMElement;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 274
    invoke-virtual {p0, p1}, Lorg/dom4j/dom/DOMElement;->remove(Lorg/dom4j/Attribute;)Z

    :cond_0
    return-void
.end method

.method public removeAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 231
    invoke-virtual {p0, p1}, Lorg/dom4j/dom/DOMElement;->attribute(Lorg/w3c/dom/Attr;)Lorg/dom4j/Attribute;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 234
    invoke-interface {p1}, Lorg/dom4j/Attribute;->detach()Lorg/dom4j/Node;

    .line 236
    invoke-static {p1}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMAttr(Lorg/dom4j/Node;)Lorg/w3c/dom/Attr;

    move-result-object p1

    return-object p1

    .line 238
    :cond_0
    new-instance p1, Lorg/w3c/dom/DOMException;

    const/16 v0, 0x8

    const-string v1, "No such attribute"

    invoke-direct {p1, v0, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 134
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->removeChild(Lorg/dom4j/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p1

    return-object p1
.end method

.method public replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 127
    invoke-direct {p0, p1}, Lorg/dom4j/dom/DOMElement;->checkNewChildNode(Lorg/w3c/dom/Node;)V

    .line 129
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->replaceChild(Lorg/dom4j/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p1

    return-object p1
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 187
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/dom/DOMElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    return-void
.end method

.method public setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 259
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/dom/DOMElement;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    invoke-interface {v0, p3}, Lorg/dom4j/Attribute;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 264
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/dom/DOMElement;->getQName(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object p1

    .line 265
    invoke-virtual {p0, p1, p3}, Lorg/dom4j/dom/DOMElement;->addAttribute(Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Element;

    :goto_0
    return-void
.end method

.method public setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 204
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMElement;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 v0, 0x7

    const-string v1, "No modification allowed"

    invoke-direct {p1, v0, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    .line 209
    :cond_0
    invoke-virtual {p0, p1}, Lorg/dom4j/dom/DOMElement;->attribute(Lorg/w3c/dom/Attr;)Lorg/dom4j/Attribute;

    move-result-object v0

    if-eq v0, p1, :cond_3

    .line 212
    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 213
    new-instance p1, Lorg/w3c/dom/DOMException;

    const/16 v0, 0xa

    const-string v1, "Attribute is already in use"

    invoke-direct {p1, v0, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    .line 217
    :cond_1
    invoke-virtual {p0, p1}, Lorg/dom4j/dom/DOMElement;->createAttribute(Lorg/w3c/dom/Attr;)Lorg/dom4j/Attribute;

    move-result-object p1

    if-eqz v0, :cond_2

    .line 220
    invoke-interface {v0}, Lorg/dom4j/Attribute;->detach()Lorg/dom4j/Node;

    .line 223
    :cond_2
    invoke-virtual {p0, p1}, Lorg/dom4j/dom/DOMElement;->add(Lorg/dom4j/Attribute;)V

    .line 226
    :cond_3
    invoke-static {v0}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMAttr(Lorg/dom4j/Node;)Lorg/w3c/dom/Attr;

    move-result-object p1

    return-object p1
.end method

.method public setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 291
    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 292
    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v1

    .line 291
    invoke-virtual {p0, v0, v1}, Lorg/dom4j/dom/DOMElement;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/dom4j/Attribute;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 297
    :cond_0
    invoke-virtual {p0, p1}, Lorg/dom4j/dom/DOMElement;->createAttribute(Lorg/w3c/dom/Attr;)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 298
    invoke-virtual {p0, v0}, Lorg/dom4j/dom/DOMElement;->add(Lorg/dom4j/Attribute;)V

    .line 301
    :goto_0
    invoke-static {v0}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMAttr(Lorg/dom4j/Node;)Lorg/w3c/dom/Attr;

    move-result-object p1

    return-object p1
.end method

.method public setIdAttribute(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 392
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    return-void
.end method

.method public setIdAttributeNS(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 396
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    return-void
.end method

.method public setIdAttributeNode(Lorg/w3c/dom/Attr;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 400
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    return-void
.end method

.method public setNodeValue(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 65
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->setPrefix(Lorg/dom4j/Node;Ljava/lang/String;)V

    return-void
.end method

.method public setTextContent(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 419
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    return-void
.end method

.method public setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/a;)Ljava/lang/Object;
    .locals 0

    .line 451
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public supports(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 53
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->supports(Lorg/dom4j/Node;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
