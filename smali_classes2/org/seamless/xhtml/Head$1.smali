.class Lorg/seamless/xhtml/Head$1;
.super Lorg/seamless/xml/DOMElement$ArrayBuilder;
.source "Head.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/seamless/xhtml/Head;->getLinks()[Lorg/seamless/xhtml/Link;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/seamless/xml/DOMElement<",
        "Lorg/seamless/xhtml/XHTMLElement;",
        "Lorg/seamless/xhtml/XHTMLElement;",
        ">.ArrayBuilder<",
        "Lorg/seamless/xhtml/Link;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/seamless/xhtml/Head;


# direct methods
.method constructor <init>(Lorg/seamless/xhtml/Head;Lorg/seamless/xml/DOMElement;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lorg/seamless/xhtml/Head$1;->this$0:Lorg/seamless/xhtml/Head;

    invoke-direct {p0, p1, p2}, Lorg/seamless/xml/DOMElement$ArrayBuilder;-><init>(Lorg/seamless/xml/DOMElement;Lorg/seamless/xml/DOMElement;)V

    return-void
.end method


# virtual methods
.method public build(Lorg/w3c/dom/Element;)Lorg/seamless/xhtml/Link;
    .locals 2

    .line 37
    new-instance v0, Lorg/seamless/xhtml/Link;

    iget-object v1, p0, Lorg/seamless/xhtml/Head$1;->this$0:Lorg/seamless/xhtml/Head;

    invoke-virtual {v1}, Lorg/seamless/xhtml/Head;->getXpath()Ljavax/xml/xpath/XPath;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/seamless/xhtml/Link;-><init>(Ljavax/xml/xpath/XPath;Lorg/w3c/dom/Element;)V

    return-object v0
.end method

.method public bridge synthetic build(Lorg/w3c/dom/Element;)Lorg/seamless/xml/DOMElement;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lorg/seamless/xhtml/Head$1;->build(Lorg/w3c/dom/Element;)Lorg/seamless/xhtml/Link;

    move-result-object p1

    return-object p1
.end method

.method public newChildrenArray(I)[Lorg/seamless/xhtml/Link;
    .locals 0

    .line 42
    new-array p1, p1, [Lorg/seamless/xhtml/Link;

    return-object p1
.end method

.method public bridge synthetic newChildrenArray(I)[Lorg/seamless/xml/DOMElement;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lorg/seamless/xhtml/Head$1;->newChildrenArray(I)[Lorg/seamless/xhtml/Link;

    move-result-object p1

    return-object p1
.end method
