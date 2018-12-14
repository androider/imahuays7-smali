.class Lorg/seamless/xhtml/XHTMLElement$1;
.super Lorg/seamless/xml/DOMElement$Builder;
.source "XHTMLElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/seamless/xhtml/XHTMLElement;->createParentBuilder(Lorg/seamless/xml/DOMElement;)Lorg/seamless/xml/DOMElement$Builder;
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
        ">.Builder<",
        "Lorg/seamless/xhtml/XHTMLElement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/seamless/xhtml/XHTMLElement;


# direct methods
.method constructor <init>(Lorg/seamless/xhtml/XHTMLElement;Lorg/seamless/xml/DOMElement;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lorg/seamless/xhtml/XHTMLElement$1;->this$0:Lorg/seamless/xhtml/XHTMLElement;

    invoke-direct {p0, p1, p2}, Lorg/seamless/xml/DOMElement$Builder;-><init>(Lorg/seamless/xml/DOMElement;Lorg/seamless/xml/DOMElement;)V

    return-void
.end method


# virtual methods
.method public build(Lorg/w3c/dom/Element;)Lorg/seamless/xhtml/XHTMLElement;
    .locals 2

    .line 40
    new-instance v0, Lorg/seamless/xhtml/XHTMLElement;

    iget-object v1, p0, Lorg/seamless/xhtml/XHTMLElement$1;->this$0:Lorg/seamless/xhtml/XHTMLElement;

    invoke-virtual {v1}, Lorg/seamless/xhtml/XHTMLElement;->getXpath()Ljavax/xml/xpath/XPath;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/seamless/xhtml/XHTMLElement;-><init>(Ljavax/xml/xpath/XPath;Lorg/w3c/dom/Element;)V

    return-object v0
.end method

.method public bridge synthetic build(Lorg/w3c/dom/Element;)Lorg/seamless/xml/DOMElement;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lorg/seamless/xhtml/XHTMLElement$1;->build(Lorg/w3c/dom/Element;)Lorg/seamless/xhtml/XHTMLElement;

    move-result-object p1

    return-object p1
.end method
