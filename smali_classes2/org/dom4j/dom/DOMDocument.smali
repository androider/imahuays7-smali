.class public Lorg/dom4j/dom/DOMDocument;
.super Lorg/dom4j/tree/DefaultDocument;
.source "DOMDocument.java"

# interfaces
.implements Lorg/w3c/dom/Document;


# static fields
.field private static final DOCUMENT_FACTORY:Lorg/dom4j/dom/DOMDocumentFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    invoke-static {}, Lorg/dom4j/dom/DOMDocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    check-cast v0, Lorg/dom4j/dom/DOMDocumentFactory;

    sput-object v0, Lorg/dom4j/dom/DOMDocument;->DOCUMENT_FACTORY:Lorg/dom4j/dom/DOMDocumentFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/dom4j/tree/DefaultDocument;-><init>()V

    .line 38
    invoke-direct {p0}, Lorg/dom4j/dom/DOMDocument;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lorg/dom4j/tree/DefaultDocument;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Lorg/dom4j/dom/DOMDocument;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/dom4j/dom/DOMElement;Lorg/dom4j/dom/DOMDocumentType;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lorg/dom4j/tree/DefaultDocument;-><init>(Ljava/lang/String;Lorg/dom4j/Element;Lorg/dom4j/DocumentType;)V

    .line 64
    invoke-direct {p0}, Lorg/dom4j/dom/DOMDocument;->init()V

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/dom/DOMDocumentType;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lorg/dom4j/tree/DefaultDocument;-><init>(Lorg/dom4j/DocumentType;)V

    .line 53
    invoke-direct {p0}, Lorg/dom4j/dom/DOMDocument;->init()V

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/dom/DOMElement;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lorg/dom4j/tree/DefaultDocument;-><init>(Lorg/dom4j/Element;)V

    .line 48
    invoke-direct {p0}, Lorg/dom4j/dom/DOMDocument;->init()V

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/dom/DOMElement;Lorg/dom4j/dom/DOMDocumentType;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lorg/dom4j/tree/DefaultDocument;-><init>(Lorg/dom4j/Element;Lorg/dom4j/DocumentType;)V

    .line 58
    invoke-direct {p0}, Lorg/dom4j/dom/DOMDocument;->init()V

    return-void
.end method

.method private checkNewChildNode(Lorg/w3c/dom/Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 167
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    .line 173
    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 v0, 0x3

    const-string v1, "Given node cannot be a child of document"

    invoke-direct {p1, v0, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_0
    return-void
.end method

.method private init()V
    .locals 1

    .line 68
    sget-object v0, Lorg/dom4j/dom/DOMDocument;->DOCUMENT_FACTORY:Lorg/dom4j/dom/DOMDocumentFactory;

    invoke-virtual {p0, v0}, Lorg/dom4j/dom/DOMDocument;->setDocumentFactory(Lorg/dom4j/DocumentFactory;)V

    return-void
.end method


# virtual methods
.method public adoptNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 350
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 160
    invoke-direct {p0, p1}, Lorg/dom4j/dom/DOMDocument;->checkNewChildNode(Lorg/w3c/dom/Node;)V

    .line 162
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->appendChild(Lorg/dom4j/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p1

    return-object p1
.end method

.method public cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 0

    .line 183
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

    .line 374
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    const/4 p1, 0x0

    return p1
.end method

.method public createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 255
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object p1

    .line 257
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, v1}, Lorg/dom4j/DocumentFactory;->createAttribute(Lorg/dom4j/Element;Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Attr;

    return-object p1
.end method

.method public createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 282
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object p1

    .line 285
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1, v0}, Lorg/dom4j/DocumentFactory;->createAttribute(Lorg/dom4j/Element;Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Attr;

    return-object p1
.end method

.method public createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 245
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createCDATA(Ljava/lang/String;)Lorg/dom4j/CDATA;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/CDATASection;

    return-object p1
.end method

.method public createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;
    .locals 1

    .line 241
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createComment(Ljava/lang/String;)Lorg/dom4j/Comment;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Comment;

    return-object p1
.end method

.method public createDocumentFragment()Lorg/w3c/dom/DocumentFragment;
    .locals 1

    .line 231
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 227
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    return-object p1
.end method

.method public createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 274
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object p1

    .line 277
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/dom4j/DocumentFactory;->createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    return-object p1
.end method

.method public createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 262
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/dom4j/DocumentFactory;->createEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Entity;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/EntityReference;

    return-object p1
.end method

.method public createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 250
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    .line 251
    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/ProcessingInstruction;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/ProcessingInstruction;

    return-object p1
.end method

.method public createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;
    .locals 1

    .line 237
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createText(Ljava/lang/String;)Lorg/dom4j/Text;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Text;

    return-object p1
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 1

    .line 369
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .locals 1

    .line 112
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->content()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/dom4j/dom/DOMNodeHelper;->createNodeList(Ljava/util/List;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    return-object v0
.end method

.method public getDoctype()Lorg/w3c/dom/DocumentType;
    .locals 1

    .line 211
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocType()Lorg/dom4j/DocumentType;

    move-result-object v0

    invoke-static {v0}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMDocumentType(Lorg/dom4j/DocumentType;)Lorg/w3c/dom/DocumentType;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentElement()Lorg/w3c/dom/Element;
    .locals 1

    .line 223
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getRootElement()Lorg/dom4j/Element;

    move-result-object v0

    invoke-static {v0}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMElement(Lorg/dom4j/Node;)Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method protected getDocumentFactory()Lorg/dom4j/DocumentFactory;
    .locals 1

    .line 296
    invoke-super {p0}, Lorg/dom4j/tree/DefaultDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    if-nez v0, :cond_0

    .line 297
    sget-object v0, Lorg/dom4j/dom/DOMDocument;->DOCUMENT_FACTORY:Lorg/dom4j/dom/DOMDocumentFactory;

    return-object v0

    .line 299
    :cond_0
    invoke-super {p0}, Lorg/dom4j/tree/DefaultDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentURI()Ljava/lang/String;
    .locals 1

    .line 341
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDomConfig()Lorg/w3c/dom/DOMConfiguration;
    .locals 1

    .line 355
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 0

    .line 290
    invoke-virtual {p0, p1}, Lorg/dom4j/dom/DOMDocument;->elementByID(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object p1

    invoke-static {p1}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMElement(Lorg/dom4j/Node;)Lorg/w3c/dom/Element;

    move-result-object p1

    return-object p1
.end method

.method public getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 1

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 198
    invoke-static {v0, p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->appendElementsByTagName(Ljava/util/List;Lorg/dom4j/Branch;Ljava/lang/String;)V

    .line 200
    invoke-static {v0}, Lorg/dom4j/dom/DOMNodeHelper;->createNodeList(Ljava/util/List;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    return-object p1
.end method

.method public getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 1

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 205
    invoke-static {v0, p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->appendElementsByTagNameNS(Ljava/util/List;Lorg/dom4j/Branch;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-static {v0}, Lorg/dom4j/dom/DOMNodeHelper;->createNodeList(Ljava/util/List;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    return-object p1
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 413
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getFirstChild()Lorg/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0, v0}, Lorg/dom4j/dom/DOMDocument;->node(I)Lorg/dom4j/Node;

    move-result-object v0

    invoke-static {v0}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMNode(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getImplementation()Lorg/w3c/dom/DOMImplementation;
    .locals 1

    .line 215
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    instance-of v0, v0, Lorg/w3c/dom/DOMImplementation;

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/DOMImplementation;

    return-object v0

    .line 218
    :cond_0
    sget-object v0, Lorg/dom4j/dom/DOMDocument;->DOCUMENT_FACTORY:Lorg/dom4j/dom/DOMDocumentFactory;

    return-object v0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 1

    .line 304
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastChild()Lorg/w3c/dom/Node;
    .locals 1

    .line 120
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->nodeCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/dom4j/dom/DOMDocument;->node(I)Lorg/dom4j/Node;

    move-result-object v0

    invoke-static {v0}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMNode(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    .line 90
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getLocalName(Lorg/dom4j/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .line 78
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getNamespaceURI(Lorg/dom4j/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 1

    .line 128
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getNextSibling(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    const-string v0, "#document"

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .locals 1

    .line 108
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getParentNode(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 82
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getPrefix(Lorg/dom4j/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .locals 1

    .line 124
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getPreviousSibling(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getStrictErrorChecking()Z
    .locals 1

    .line 332
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    const/4 v0, 0x0

    return v0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 379
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 423
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getXmlEncoding()Ljava/lang/String;
    .locals 1

    .line 309
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getXmlStandalone()Z
    .locals 1

    .line 314
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    const/4 v0, 0x0

    return v0
.end method

.method public getXmlVersion()Ljava/lang/String;
    .locals 1

    .line 323
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasAttributes()Z
    .locals 1

    .line 191
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->hasAttributes(Lorg/dom4j/Node;)Z

    move-result v0

    return v0
.end method

.method public hasChildNodes()Z
    .locals 1

    .line 179
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->nodeCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 267
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 141
    invoke-direct {p0, p1}, Lorg/dom4j/dom/DOMDocument;->checkNewChildNode(Lorg/w3c/dom/Node;)V

    .line 143
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->insertBefore(Lorg/dom4j/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p1

    return-object p1
.end method

.method public isDefaultNamespace(Ljava/lang/String;)Z
    .locals 0

    .line 398
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    const/4 p1, 0x0

    return p1
.end method

.method public isEqualNode(Lorg/w3c/dom/Node;)Z
    .locals 0

    .line 408
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    const/4 p1, 0x0

    return p1
.end method

.method public isSameNode(Lorg/w3c/dom/Node;)Z
    .locals 0

    .line 388
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    const/4 p1, 0x0

    return p1
.end method

.method public isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 187
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->isSupported(Lorg/dom4j/Node;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 403
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public lookupPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 393
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public normalizeDocument()V
    .locals 0

    .line 360
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    return-void
.end method

.method public removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 155
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->removeChild(Lorg/dom4j/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p1

    return-object p1
.end method

.method public renameNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 364
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 148
    invoke-direct {p0, p1}, Lorg/dom4j/dom/DOMDocument;->checkNewChildNode(Lorg/w3c/dom/Node;)V

    .line 150
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->replaceChild(Lorg/dom4j/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p1

    return-object p1
.end method

.method public setDocumentURI(Ljava/lang/String;)V
    .locals 0

    .line 346
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

    .line 86
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->setPrefix(Lorg/dom4j/Node;Ljava/lang/String;)V

    return-void
.end method

.method public setStrictErrorChecking(Z)V
    .locals 0

    .line 337
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    return-void
.end method

.method public setTextContent(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 384
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    return-void
.end method

.method public setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/a;)Ljava/lang/Object;
    .locals 0

    .line 418
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setXmlStandalone(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 319
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    return-void
.end method

.method public setXmlVersion(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 328
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    return-void
.end method

.method public supports(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 74
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->supports(Lorg/dom4j/Node;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
