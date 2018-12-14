.class public Lorg/seamless/xhtml/XHTMLParser;
.super Lorg/seamless/xml/DOMParser;
.source "XHTMLParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/seamless/xml/DOMParser<",
        "Lorg/seamless/xhtml/XHTML;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-static {}, Lorg/seamless/xhtml/XHTML;->createSchemaSources()[Ljavax/xml/transform/Source;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/seamless/xml/DOMParser;-><init>([Ljavax/xml/transform/Source;)V

    return-void
.end method


# virtual methods
.method public checkDuplicateIdentifiers(Lorg/seamless/xhtml/XHTML;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 43
    invoke-virtual {p1}, Lorg/seamless/xhtml/XHTML;->getW3CDocument()Lorg/w3c/dom/Document;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    new-instance v1, Lorg/seamless/xhtml/XHTMLParser$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2, v0}, Lorg/seamless/xhtml/XHTMLParser$1;-><init>(Lorg/seamless/xhtml/XHTMLParser;SLjava/util/Set;)V

    invoke-static {p1, v1}, Lorg/seamless/xhtml/XHTMLParser;->accept(Lorg/w3c/dom/Node;Lorg/seamless/xml/DOMParser$NodeVisitor;)V

    return-void
.end method

.method protected createDOM(Lorg/w3c/dom/Document;)Lorg/seamless/xhtml/XHTML;
    .locals 1

    if-eqz p1, :cond_0

    .line 38
    new-instance v0, Lorg/seamless/xhtml/XHTML;

    invoke-direct {v0, p1}, Lorg/seamless/xhtml/XHTML;-><init>(Lorg/w3c/dom/Document;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected bridge synthetic createDOM(Lorg/w3c/dom/Document;)Lorg/seamless/xml/DOM;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lorg/seamless/xhtml/XHTMLParser;->createDOM(Lorg/w3c/dom/Document;)Lorg/seamless/xhtml/XHTML;

    move-result-object p1

    return-object p1
.end method

.method public varargs createDefaultNamespaceContext([Ljava/lang/String;)Lorg/seamless/xml/NamespaceContextMap;
    .locals 5

    .line 61
    new-instance v0, Lorg/seamless/xhtml/XHTMLParser$2;

    invoke-direct {v0, p0}, Lorg/seamless/xhtml/XHTMLParser$2;-><init>(Lorg/seamless/xhtml/XHTMLParser;)V

    .line 67
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    const-string v4, "http://www.w3.org/1999/xhtml"

    .line 68
    invoke-virtual {v0, v3, v4}, Lorg/seamless/xml/NamespaceContextMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public createXPath()Ljavax/xml/xpath/XPath;
    .locals 3

    const/4 v0, 0x1

    .line 74
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "h"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lorg/seamless/xhtml/XHTMLParser;->createDefaultNamespaceContext([Ljava/lang/String;)Lorg/seamless/xml/NamespaceContextMap;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/seamless/xml/DOMParser;->createXPath(Ljavax/xml/namespace/NamespaceContext;)Ljavax/xml/xpath/XPath;

    move-result-object v0

    return-object v0
.end method
