.class public Lorg/seamless/xhtml/Anchor;
.super Lorg/seamless/xhtml/XHTMLElement;
.source "Anchor.java"


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

    .line 39
    sget-object v0, Lorg/seamless/xhtml/XHTML$ATTR;->href:Lorg/seamless/xhtml/XHTML$ATTR;

    invoke-virtual {p0, v0}, Lorg/seamless/xhtml/Anchor;->getAttribute(Lorg/seamless/xhtml/XHTML$ATTR;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/seamless/xhtml/Href;->fromString(Ljava/lang/String;)Lorg/seamless/xhtml/Href;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lorg/seamless/xhtml/XHTML$ATTR;->type:Lorg/seamless/xhtml/XHTML$ATTR;

    invoke-virtual {p0, v0}, Lorg/seamless/xhtml/Anchor;->getAttribute(Lorg/seamless/xhtml/XHTML$ATTR;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setHref(Ljava/lang/String;)Lorg/seamless/xhtml/Anchor;
    .locals 1

    .line 43
    sget-object v0, Lorg/seamless/xhtml/XHTML$ATTR;->href:Lorg/seamless/xhtml/XHTML$ATTR;

    invoke-virtual {p0, v0, p1}, Lorg/seamless/xhtml/Anchor;->setAttribute(Lorg/seamless/xhtml/XHTML$ATTR;Ljava/lang/String;)Lorg/seamless/xhtml/XHTMLElement;

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lorg/seamless/xhtml/Anchor;
    .locals 1

    .line 34
    sget-object v0, Lorg/seamless/xhtml/XHTML$ATTR;->type:Lorg/seamless/xhtml/XHTML$ATTR;

    invoke-virtual {p0, v0, p1}, Lorg/seamless/xhtml/Anchor;->setAttribute(Lorg/seamless/xhtml/XHTML$ATTR;Ljava/lang/String;)Lorg/seamless/xhtml/XHTMLElement;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(Anchor) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/seamless/xhtml/XHTML$ATTR;->href:Lorg/seamless/xhtml/XHTML$ATTR;

    invoke-virtual {p0, v1}, Lorg/seamless/xhtml/Anchor;->getAttribute(Lorg/seamless/xhtml/XHTML$ATTR;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
