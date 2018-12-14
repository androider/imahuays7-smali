.class public Lorg/jaxen/dom/DocumentNavigator;
.super Lorg/jaxen/DefaultNavigator;
.source "DocumentNavigator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jaxen/dom/DocumentNavigator$AttributeIterator;,
        Lorg/jaxen/dom/DocumentNavigator$NodeIterator;
    }
.end annotation


# static fields
.field private static final SINGLETON:Lorg/jaxen/dom/DocumentNavigator;

.field private static final serialVersionUID:J = 0x756b4ee4a5f6b733L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 110
    new-instance v0, Lorg/jaxen/dom/DocumentNavigator;

    invoke-direct {v0}, Lorg/jaxen/dom/DocumentNavigator;-><init>()V

    sput-object v0, Lorg/jaxen/dom/DocumentNavigator;->SINGLETON:Lorg/jaxen/dom/DocumentNavigator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 123
    invoke-direct {p0}, Lorg/jaxen/DefaultNavigator;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/jaxen/Navigator;
    .locals 1

    .line 134
    sget-object v0, Lorg/jaxen/dom/DocumentNavigator;->SINGLETON:Lorg/jaxen/dom/DocumentNavigator;

    return-object v0
.end method

.method private getStringValue(Lorg/w3c/dom/Node;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 3

    .line 702
    invoke-virtual {p0, p1}, Lorg/jaxen/dom/DocumentNavigator;->isText(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 703
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 705
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 706
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 708
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/jaxen/dom/DocumentNavigator;->getStringValue(Lorg/w3c/dom/Node;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p2
.end method


# virtual methods
.method public getAttributeAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1

    .line 307
    invoke-virtual {p0, p1}, Lorg/jaxen/dom/DocumentNavigator;->isElement(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    new-instance v0, Lorg/jaxen/dom/DocumentNavigator$AttributeIterator;

    check-cast p1, Lorg/w3c/dom/Node;

    invoke-direct {v0, p1}, Lorg/jaxen/dom/DocumentNavigator$AttributeIterator;-><init>(Lorg/w3c/dom/Node;)V

    return-object v0

    .line 311
    :cond_0
    sget-object p1, Lorg/jaxen/JaxenConstants;->EMPTY_ITERATOR:Ljava/util/Iterator;

    return-object p1
.end method

.method public getAttributeName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 542
    invoke-virtual {p0, p1}, Lorg/jaxen/dom/DocumentNavigator;->isAttribute(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 543
    check-cast p1, Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 544
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAttributeNamespaceUri(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 522
    :try_start_0
    check-cast p1, Lorg/w3c/dom/Node;

    .line 523
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 524
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAttributeQName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 562
    :try_start_0
    check-cast p1, Lorg/w3c/dom/Node;

    .line 563
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 564
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAttributeStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 724
    invoke-virtual {p0, p1}, Lorg/jaxen/dom/DocumentNavigator;->isAttribute(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getChildAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1

    .line 152
    new-instance v0, Lorg/jaxen/dom/DocumentNavigator$1;

    check-cast p1, Lorg/w3c/dom/Node;

    invoke-direct {v0, p0, p1}, Lorg/jaxen/dom/DocumentNavigator$1;-><init>(Lorg/jaxen/dom/DocumentNavigator;Lorg/w3c/dom/Node;)V

    return-object v0
.end method

.method public getCommentStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 750
    invoke-virtual {p0, p1}, Lorg/jaxen/dom/DocumentNavigator;->isComment(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDocument(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/FunctionCallException;
        }
    .end annotation

    .line 815
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v1, 0x1

    .line 816
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 817
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 818
    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object p1
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 827
    new-instance v0, Lorg/jaxen/FunctionCallException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "I/O error in document() function: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/jaxen/FunctionCallException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p1

    .line 824
    new-instance v0, Lorg/jaxen/FunctionCallException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "XML error in document() function: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/jaxen/FunctionCallException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_2
    move-exception p1

    .line 821
    new-instance v0, Lorg/jaxen/FunctionCallException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "JAXP setup error in document() function: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/jaxen/FunctionCallException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public getDocumentNode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 444
    invoke-virtual {p0, p1}, Lorg/jaxen/dom/DocumentNavigator;->isDocument(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 445
    :cond_0
    check-cast p1, Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p1

    return-object p1
.end method

.method public getElementById(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1058
    invoke-virtual {p0, p1}, Lorg/jaxen/dom/DocumentNavigator;->getDocumentNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Document;

    if-eqz p1, :cond_0

    .line 1059
    invoke-interface {p1, p2}, Lorg/w3c/dom/Document;->getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getElementName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 481
    invoke-virtual {p0, p1}, Lorg/jaxen/dom/DocumentNavigator;->isElement(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 482
    check-cast p1, Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 483
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getElementNamespaceUri(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 461
    :try_start_0
    check-cast p1, Lorg/w3c/dom/Node;

    .line 462
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 463
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getElementQName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 500
    :try_start_0
    check-cast p1, Lorg/w3c/dom/Node;

    .line 501
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 502
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getElementStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 684
    invoke-virtual {p0, p1}, Lorg/jaxen/dom/DocumentNavigator;->isElement(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    check-cast p1, Lorg/w3c/dom/Node;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/jaxen/dom/DocumentNavigator;->getStringValue(Lorg/w3c/dom/Node;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFollowingAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1

    .line 268
    new-instance v0, Lorg/jaxen/dom/DocumentNavigator$6;

    check-cast p1, Lorg/w3c/dom/Node;

    invoke-direct {v0, p0, p1}, Lorg/jaxen/dom/DocumentNavigator$6;-><init>(Lorg/jaxen/dom/DocumentNavigator;Lorg/w3c/dom/Node;)V

    return-object v0
.end method

.method public getFollowingSiblingAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1

    .line 228
    new-instance v0, Lorg/jaxen/dom/DocumentNavigator$4;

    check-cast p1, Lorg/w3c/dom/Node;

    invoke-direct {v0, p0, p1}, Lorg/jaxen/dom/DocumentNavigator$4;-><init>(Lorg/jaxen/dom/DocumentNavigator;Lorg/w3c/dom/Node;)V

    return-object v0
.end method

.method public getNamespaceAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 9

    .line 345
    invoke-virtual {p0, p1}, Lorg/jaxen/dom/DocumentNavigator;->isElement(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 347
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 352
    check-cast p1, Lorg/w3c/dom/Node;

    move-object v1, p1

    :goto_0
    if-eqz v1, :cond_6

    .line 357
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, ""

    .line 358
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 359
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v3

    .line 360
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 361
    new-instance v4, Lorg/jaxen/dom/NamespaceNode;

    invoke-direct {v4, p1, v3, v2}, Lorg/jaxen/dom/NamespaceNode;-><init>(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    :cond_0
    invoke-interface {v1}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 367
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 368
    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_3

    .line 371
    invoke-interface {v2, v5}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Attr;

    .line 373
    invoke-interface {v6}, Lorg/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    const-string v8, "http://www.w3.org/2000/xmlns/"

    .line 374
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v7, :cond_2

    .line 377
    invoke-interface {v6}, Lorg/w3c/dom/Attr;->getPrefix()Ljava/lang/String;

    move-result-object v6

    .line 378
    new-instance v8, Lorg/jaxen/dom/NamespaceNode;

    invoke-direct {v8, p1, v6, v7}, Lorg/jaxen/dom/NamespaceNode;-><init>(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    if-ge v4, v3, :cond_5

    .line 388
    invoke-interface {v2, v4}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Attr;

    .line 390
    invoke-interface {v5}, Lorg/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    const-string v7, "http://www.w3.org/2000/xmlns/"

    .line 391
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 392
    new-instance v6, Lorg/jaxen/dom/NamespaceNode;

    invoke-direct {v6, p1, v5}, Lorg/jaxen/dom/NamespaceNode;-><init>(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    .line 395
    invoke-virtual {v6}, Lorg/jaxen/dom/NamespaceNode;->getNodeName()Ljava/lang/String;

    move-result-object v5

    .line 396
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 354
    :cond_5
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    goto/16 :goto_0

    :cond_6
    const-string v1, "xml"

    .line 405
    new-instance v2, Lorg/jaxen/dom/NamespaceNode;

    const-string v3, "xml"

    const-string v4, "http://www.w3.org/XML/1998/namespace"

    invoke-direct {v2, p1, v3, v4}, Lorg/jaxen/dom/NamespaceNode;-><init>(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, ""

    .line 413
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaxen/dom/NamespaceNode;

    if-eqz p1, :cond_7

    .line 414
    invoke-virtual {p1}, Lorg/jaxen/dom/NamespaceNode;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_7

    const-string p1, ""

    .line 415
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    :cond_7
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    .line 420
    :cond_8
    sget-object p1, Lorg/jaxen/JaxenConstants;->EMPTY_ITERATOR:Ljava/util/Iterator;

    return-object p1
.end method

.method public getNamespacePrefix(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 777
    invoke-virtual {p0, p1}, Lorg/jaxen/dom/DocumentNavigator;->isNamespace(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/jaxen/dom/NamespaceNode;

    invoke-virtual {p1}, Lorg/jaxen/dom/NamespaceNode;->getLocalName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNamespaceStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 764
    invoke-virtual {p0, p1}, Lorg/jaxen/dom/DocumentNavigator;->isNamespace(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/jaxen/dom/NamespaceNode;

    invoke-virtual {p1}, Lorg/jaxen/dom/NamespaceNode;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getParentAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 2

    .line 173
    check-cast p1, Lorg/w3c/dom/Node;

    .line 175
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 176
    new-instance v0, Lorg/jaxen/dom/DocumentNavigator$2;

    invoke-direct {v0, p0, p1}, Lorg/jaxen/dom/DocumentNavigator$2;-><init>(Lorg/jaxen/dom/DocumentNavigator;Lorg/w3c/dom/Node;)V

    return-object v0

    .line 188
    :cond_0
    new-instance v0, Lorg/jaxen/dom/DocumentNavigator$3;

    invoke-direct {v0, p0, p1}, Lorg/jaxen/dom/DocumentNavigator$3;-><init>(Lorg/jaxen/dom/DocumentNavigator;Lorg/w3c/dom/Node;)V

    return-object v0
.end method

.method public getParentNode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 212
    check-cast p1, Lorg/w3c/dom/Node;

    .line 213
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 214
    check-cast p1, Lorg/w3c/dom/Attr;

    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object p1

    return-object p1

    .line 216
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    return-object p1
.end method

.method public getPrecedingSiblingAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1

    .line 248
    new-instance v0, Lorg/jaxen/dom/DocumentNavigator$5;

    check-cast p1, Lorg/w3c/dom/Node;

    invoke-direct {v0, p0, p1}, Lorg/jaxen/dom/DocumentNavigator$5;-><init>(Lorg/jaxen/dom/DocumentNavigator;Lorg/w3c/dom/Node;)V

    return-object v0
.end method

.method public getProcessingInstructionData(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 859
    invoke-virtual {p0, p1}, Lorg/jaxen/dom/DocumentNavigator;->isProcessingInstruction(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 860
    check-cast p1, Lorg/w3c/dom/ProcessingInstruction;

    .line 861
    invoke-interface {p1}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 863
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p1, " is not a processing instruction"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getProcessingInstructionTarget(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 842
    invoke-virtual {p0, p1}, Lorg/jaxen/dom/DocumentNavigator;->isProcessingInstruction(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 843
    check-cast p1, Lorg/w3c/dom/ProcessingInstruction;

    .line 844
    invoke-interface {p1}, Lorg/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 846
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p1, " is not a processing instruction"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTextStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 737
    invoke-virtual {p0, p1}, Lorg/jaxen/dom/DocumentNavigator;->isText(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isAttribute(Ljava/lang/Object;)Z
    .locals 2

    .line 621
    instance-of v0, p1, Lorg/w3c/dom/Node;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "http://www.w3.org/2000/xmlns/"

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isComment(Ljava/lang/Object;)Z
    .locals 1

    .line 635
    instance-of v0, p1, Lorg/w3c/dom/Node;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isDocument(Ljava/lang/Object;)Z
    .locals 1

    .line 581
    instance-of v0, p1, Lorg/w3c/dom/Node;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isElement(Ljava/lang/Object;)Z
    .locals 2

    .line 606
    instance-of v0, p1, Lorg/w3c/dom/Node;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    check-cast p1, Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isNamespace(Ljava/lang/Object;)Z
    .locals 0

    .line 594
    instance-of p1, p1, Lorg/jaxen/dom/NamespaceNode;

    return p1
.end method

.method public isProcessingInstruction(Ljava/lang/Object;)Z
    .locals 1

    .line 670
    instance-of v0, p1, Lorg/w3c/dom/Node;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isText(Ljava/lang/Object;)Z
    .locals 2

    .line 648
    instance-of v0, p1, Lorg/w3c/dom/Node;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 649
    check-cast p1, Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    packed-switch p1, :pswitch_data_0

    return v1

    :pswitch_0
    const/4 p1, 0x1

    return p1

    :cond_0
    return v1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public parseXPath(Ljava/lang/String;)Lorg/jaxen/XPath;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    .line 433
    new-instance v0, Lorg/jaxen/dom/DOMXPath;

    invoke-direct {v0, p1}, Lorg/jaxen/dom/DOMXPath;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public translateNamespacePrefixToUri(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 791
    invoke-virtual {p0, p2}, Lorg/jaxen/dom/DocumentNavigator;->getNamespaceAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p2

    .line 792
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 793
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaxen/dom/NamespaceNode;

    .line 794
    invoke-virtual {v0}, Lorg/jaxen/dom/NamespaceNode;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/jaxen/dom/NamespaceNode;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
