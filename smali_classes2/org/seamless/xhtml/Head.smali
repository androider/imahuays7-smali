.class public Lorg/seamless/xhtml/Head;
.super Lorg/seamless/xhtml/XHTMLElement;
.source "Head.java"


# direct methods
.method public constructor <init>(Ljavax/xml/xpath/XPath;Lorg/w3c/dom/Element;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lorg/seamless/xhtml/XHTMLElement;-><init>(Ljavax/xml/xpath/XPath;Lorg/w3c/dom/Element;)V

    return-void
.end method


# virtual methods
.method public getDocumentStyles()[Lorg/seamless/xhtml/XHTMLElement;
    .locals 2

    .line 62
    iget-object v0, p0, Lorg/seamless/xhtml/Head;->CHILD_BUILDER:Lorg/seamless/xml/DOMElement$ArrayBuilder;

    sget-object v1, Lorg/seamless/xhtml/XHTML$ELEMENT;->style:Lorg/seamless/xhtml/XHTML$ELEMENT;

    invoke-virtual {v1}, Lorg/seamless/xhtml/XHTML$ELEMENT;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/seamless/xml/DOMElement$ArrayBuilder;->getChildElements(Ljava/lang/String;)[Lorg/seamless/xml/DOMElement;

    move-result-object v0

    check-cast v0, [Lorg/seamless/xhtml/XHTMLElement;

    return-object v0
.end method

.method public getHeadTitle()Lorg/seamless/xhtml/XHTMLElement;
    .locals 2

    .line 30
    iget-object v0, p0, Lorg/seamless/xhtml/Head;->CHILD_BUILDER:Lorg/seamless/xml/DOMElement$ArrayBuilder;

    sget-object v1, Lorg/seamless/xhtml/XHTML$ELEMENT;->title:Lorg/seamless/xhtml/XHTML$ELEMENT;

    invoke-virtual {v1}, Lorg/seamless/xhtml/XHTML$ELEMENT;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/seamless/xml/DOMElement$ArrayBuilder;->firstChildOrNull(Ljava/lang/String;)Lorg/seamless/xml/DOMElement;

    move-result-object v0

    check-cast v0, Lorg/seamless/xhtml/XHTMLElement;

    return-object v0
.end method

.method public getLinks()[Lorg/seamless/xhtml/Link;
    .locals 2

    .line 34
    new-instance v0, Lorg/seamless/xhtml/Head$1;

    invoke-direct {v0, p0, p0}, Lorg/seamless/xhtml/Head$1;-><init>(Lorg/seamless/xhtml/Head;Lorg/seamless/xml/DOMElement;)V

    sget-object v1, Lorg/seamless/xhtml/XHTML$ELEMENT;->link:Lorg/seamless/xhtml/XHTML$ELEMENT;

    invoke-virtual {v1}, Lorg/seamless/xhtml/XHTML$ELEMENT;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/seamless/xhtml/Head$1;->getChildElements(Ljava/lang/String;)[Lorg/seamless/xml/DOMElement;

    move-result-object v0

    check-cast v0, [Lorg/seamless/xhtml/Link;

    return-object v0
.end method

.method public getMetas()[Lorg/seamless/xhtml/Meta;
    .locals 2

    .line 48
    new-instance v0, Lorg/seamless/xhtml/Head$2;

    invoke-direct {v0, p0, p0}, Lorg/seamless/xhtml/Head$2;-><init>(Lorg/seamless/xhtml/Head;Lorg/seamless/xml/DOMElement;)V

    sget-object v1, Lorg/seamless/xhtml/XHTML$ELEMENT;->meta:Lorg/seamless/xhtml/XHTML$ELEMENT;

    invoke-virtual {v1}, Lorg/seamless/xhtml/XHTML$ELEMENT;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/seamless/xhtml/Head$2;->getChildElements(Ljava/lang/String;)[Lorg/seamless/xml/DOMElement;

    move-result-object v0

    check-cast v0, [Lorg/seamless/xhtml/Meta;

    return-object v0
.end method

.method public getScripts()[Lorg/seamless/xhtml/XHTMLElement;
    .locals 2

    .line 66
    iget-object v0, p0, Lorg/seamless/xhtml/Head;->CHILD_BUILDER:Lorg/seamless/xml/DOMElement$ArrayBuilder;

    sget-object v1, Lorg/seamless/xhtml/XHTML$ELEMENT;->script:Lorg/seamless/xhtml/XHTML$ELEMENT;

    invoke-virtual {v1}, Lorg/seamless/xhtml/XHTML$ELEMENT;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/seamless/xml/DOMElement$ArrayBuilder;->getChildElements(Ljava/lang/String;)[Lorg/seamless/xml/DOMElement;

    move-result-object v0

    check-cast v0, [Lorg/seamless/xhtml/XHTMLElement;

    return-object v0
.end method
