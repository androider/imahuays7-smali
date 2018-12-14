.class public Lorg/fourthline/cling/support/messagebox/parser/MessageDOMParser;
.super Lorg/seamless/xml/DOMParser;
.source "MessageDOMParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/seamless/xml/DOMParser<",
        "Lorg/fourthline/cling/support/messagebox/parser/MessageDOM;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/seamless/xml/DOMParser;-><init>()V

    return-void
.end method


# virtual methods
.method protected createDOM(Lorg/w3c/dom/Document;)Lorg/fourthline/cling/support/messagebox/parser/MessageDOM;
    .locals 1

    .line 31
    new-instance v0, Lorg/fourthline/cling/support/messagebox/parser/MessageDOM;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/messagebox/parser/MessageDOM;-><init>(Lorg/w3c/dom/Document;)V

    return-object v0
.end method

.method protected bridge synthetic createDOM(Lorg/w3c/dom/Document;)Lorg/seamless/xml/DOM;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/messagebox/parser/MessageDOMParser;->createDOM(Lorg/w3c/dom/Document;)Lorg/fourthline/cling/support/messagebox/parser/MessageDOM;

    move-result-object p1

    return-object p1
.end method

.method public varargs createDefaultNamespaceContext([Ljava/lang/String;)Lorg/seamless/xml/NamespaceContextMap;
    .locals 5

    .line 35
    new-instance v0, Lorg/fourthline/cling/support/messagebox/parser/MessageDOMParser$1;

    invoke-direct {v0, p0}, Lorg/fourthline/cling/support/messagebox/parser/MessageDOMParser$1;-><init>(Lorg/fourthline/cling/support/messagebox/parser/MessageDOMParser;)V

    .line 41
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    const-string v4, "urn:samsung-com:messagebox-1-0"

    .line 42
    invoke-virtual {v0, v3, v4}, Lorg/seamless/xml/NamespaceContextMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public createXPath()Ljavax/xml/xpath/XPath;
    .locals 3

    const/4 v0, 0x1

    .line 48
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "m"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/messagebox/parser/MessageDOMParser;->createDefaultNamespaceContext([Ljava/lang/String;)Lorg/seamless/xml/NamespaceContextMap;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/seamless/xml/DOMParser;->createXPath(Ljavax/xml/namespace/NamespaceContext;)Ljavax/xml/xpath/XPath;

    move-result-object v0

    return-object v0
.end method
