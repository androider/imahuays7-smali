.class public Lorg/seamless/xhtml/Root;
.super Lorg/seamless/xhtml/XHTMLElement;
.source "Root.java"


# direct methods
.method public constructor <init>(Ljavax/xml/xpath/XPath;Lorg/w3c/dom/Element;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lorg/seamless/xhtml/XHTMLElement;-><init>(Ljavax/xml/xpath/XPath;Lorg/w3c/dom/Element;)V

    return-void
.end method


# virtual methods
.method public getBody()Lorg/seamless/xhtml/Body;
    .locals 2

    .line 39
    new-instance v0, Lorg/seamless/xhtml/Root$2;

    invoke-direct {v0, p0, p0}, Lorg/seamless/xhtml/Root$2;-><init>(Lorg/seamless/xhtml/Root;Lorg/seamless/xml/DOMElement;)V

    sget-object v1, Lorg/seamless/xhtml/XHTML$ELEMENT;->body:Lorg/seamless/xhtml/XHTML$ELEMENT;

    invoke-virtual {v1}, Lorg/seamless/xhtml/XHTML$ELEMENT;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/seamless/xhtml/Root$2;->firstChildOrNull(Ljava/lang/String;)Lorg/seamless/xml/DOMElement;

    move-result-object v0

    check-cast v0, Lorg/seamless/xhtml/Body;

    return-object v0
.end method

.method public getHead()Lorg/seamless/xhtml/Head;
    .locals 2

    .line 30
    new-instance v0, Lorg/seamless/xhtml/Root$1;

    invoke-direct {v0, p0, p0}, Lorg/seamless/xhtml/Root$1;-><init>(Lorg/seamless/xhtml/Root;Lorg/seamless/xml/DOMElement;)V

    sget-object v1, Lorg/seamless/xhtml/XHTML$ELEMENT;->head:Lorg/seamless/xhtml/XHTML$ELEMENT;

    invoke-virtual {v1}, Lorg/seamless/xhtml/XHTML$ELEMENT;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/seamless/xhtml/Root$1;->firstChildOrNull(Ljava/lang/String;)Lorg/seamless/xml/DOMElement;

    move-result-object v0

    check-cast v0, Lorg/seamless/xhtml/Head;

    return-object v0
.end method
