.class Lorg/fourthline/cling/support/messagebox/parser/MessageElement$2;
.super Lorg/seamless/xml/DOMElement$ArrayBuilder;
.source "MessageElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/support/messagebox/parser/MessageElement;->createChildBuilder(Lorg/seamless/xml/DOMElement;)Lorg/seamless/xml/DOMElement$ArrayBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/seamless/xml/DOMElement<",
        "Lorg/fourthline/cling/support/messagebox/parser/MessageElement;",
        "Lorg/fourthline/cling/support/messagebox/parser/MessageElement;",
        ">.ArrayBuilder<",
        "Lorg/fourthline/cling/support/messagebox/parser/MessageElement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/support/messagebox/parser/MessageElement;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/support/messagebox/parser/MessageElement;Lorg/seamless/xml/DOMElement;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lorg/fourthline/cling/support/messagebox/parser/MessageElement$2;->this$0:Lorg/fourthline/cling/support/messagebox/parser/MessageElement;

    invoke-direct {p0, p1, p2}, Lorg/seamless/xml/DOMElement$ArrayBuilder;-><init>(Lorg/seamless/xml/DOMElement;Lorg/seamless/xml/DOMElement;)V

    return-void
.end method


# virtual methods
.method public build(Lorg/w3c/dom/Element;)Lorg/fourthline/cling/support/messagebox/parser/MessageElement;
    .locals 2

    .line 59
    new-instance v0, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;

    iget-object v1, p0, Lorg/fourthline/cling/support/messagebox/parser/MessageElement$2;->this$0:Lorg/fourthline/cling/support/messagebox/parser/MessageElement;

    invoke-virtual {v1}, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;->getXpath()Ljavax/xml/xpath/XPath;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;-><init>(Ljavax/xml/xpath/XPath;Lorg/w3c/dom/Element;)V

    return-object v0
.end method

.method public bridge synthetic build(Lorg/w3c/dom/Element;)Lorg/seamless/xml/DOMElement;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/messagebox/parser/MessageElement$2;->build(Lorg/w3c/dom/Element;)Lorg/fourthline/cling/support/messagebox/parser/MessageElement;

    move-result-object p1

    return-object p1
.end method

.method public newChildrenArray(I)[Lorg/fourthline/cling/support/messagebox/parser/MessageElement;
    .locals 0

    .line 54
    new-array p1, p1, [Lorg/fourthline/cling/support/messagebox/parser/MessageElement;

    return-object p1
.end method

.method public bridge synthetic newChildrenArray(I)[Lorg/seamless/xml/DOMElement;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/messagebox/parser/MessageElement$2;->newChildrenArray(I)[Lorg/fourthline/cling/support/messagebox/parser/MessageElement;

    move-result-object p1

    return-object p1
.end method
