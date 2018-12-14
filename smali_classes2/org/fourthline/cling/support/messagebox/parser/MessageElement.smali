.class public Lorg/fourthline/cling/support/messagebox/parser/MessageElement;
.super Lorg/seamless/xml/DOMElement;
.source "MessageElement.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/seamless/xml/DOMElement<",
        "Lorg/fourthline/cling/support/messagebox/parser/MessageElement;",
        "Lorg/fourthline/cling/support/messagebox/parser/MessageElement;",
        ">;"
    }
.end annotation


# static fields
.field public static final XPATH_PREFIX:Ljava/lang/String; = "m"


# direct methods
.method public constructor <init>(Ljavax/xml/xpath/XPath;Lorg/w3c/dom/Element;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lorg/seamless/xml/DOMElement;-><init>(Ljavax/xml/xpath/XPath;Lorg/w3c/dom/Element;)V

    return-void
.end method


# virtual methods
.method protected createChildBuilder(Lorg/seamless/xml/DOMElement;)Lorg/seamless/xml/DOMElement$ArrayBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/seamless/xml/DOMElement;",
            ")",
            "Lorg/seamless/xml/DOMElement<",
            "Lorg/fourthline/cling/support/messagebox/parser/MessageElement;",
            "Lorg/fourthline/cling/support/messagebox/parser/MessageElement;",
            ">.ArrayBuilder<",
            "Lorg/fourthline/cling/support/messagebox/parser/MessageElement;",
            ">;"
        }
    .end annotation

    .line 51
    new-instance v0, Lorg/fourthline/cling/support/messagebox/parser/MessageElement$2;

    invoke-direct {v0, p0, p1}, Lorg/fourthline/cling/support/messagebox/parser/MessageElement$2;-><init>(Lorg/fourthline/cling/support/messagebox/parser/MessageElement;Lorg/seamless/xml/DOMElement;)V

    return-object v0
.end method

.method protected createParentBuilder(Lorg/seamless/xml/DOMElement;)Lorg/seamless/xml/DOMElement$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/seamless/xml/DOMElement;",
            ")",
            "Lorg/seamless/xml/DOMElement<",
            "Lorg/fourthline/cling/support/messagebox/parser/MessageElement;",
            "Lorg/fourthline/cling/support/messagebox/parser/MessageElement;",
            ">.Builder<",
            "Lorg/fourthline/cling/support/messagebox/parser/MessageElement;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance v0, Lorg/fourthline/cling/support/messagebox/parser/MessageElement$1;

    invoke-direct {v0, p0, p1}, Lorg/fourthline/cling/support/messagebox/parser/MessageElement$1;-><init>(Lorg/fourthline/cling/support/messagebox/parser/MessageElement;Lorg/seamless/xml/DOMElement;)V

    return-object v0
.end method

.method protected prefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "m:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
