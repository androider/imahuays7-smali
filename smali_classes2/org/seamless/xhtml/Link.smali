.class public Lorg/seamless/xhtml/Link;
.super Lorg/seamless/xhtml/XHTMLElement;
.source "Link.java"


# direct methods
.method public constructor <init>(Ljavax/xml/xpath/XPath;Lorg/w3c/dom/Element;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lorg/seamless/xhtml/XHTMLElement;-><init>(Ljavax/xml/xpath/XPath;Lorg/w3c/dom/Element;)V

    return-void
.end method


# virtual methods
.method public getHref()Lorg/seamless/xhtml/Href;
    .locals 1

    .line 30
    sget-object v0, Lorg/seamless/xhtml/XHTML$ATTR;->href:Lorg/seamless/xhtml/XHTML$ATTR;

    invoke-virtual {p0, v0}, Lorg/seamless/xhtml/Link;->getAttribute(Lorg/seamless/xhtml/XHTML$ATTR;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/seamless/xhtml/Href;->fromString(Ljava/lang/String;)Lorg/seamless/xhtml/Href;

    move-result-object v0

    return-object v0
.end method

.method public getRel()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lorg/seamless/xhtml/XHTML$ATTR;->rel:Lorg/seamless/xhtml/XHTML$ATTR;

    invoke-virtual {p0, v0}, Lorg/seamless/xhtml/Link;->getAttribute(Lorg/seamless/xhtml/XHTML$ATTR;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRev()Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lorg/seamless/xhtml/XHTML$ATTR;->rev:Lorg/seamless/xhtml/XHTML$ATTR;

    invoke-virtual {p0, v0}, Lorg/seamless/xhtml/Link;->getAttribute(Lorg/seamless/xhtml/XHTML$ATTR;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
