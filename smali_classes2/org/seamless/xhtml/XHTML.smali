.class public Lorg/seamless/xhtml/XHTML;
.super Lorg/seamless/xml/DOM;
.source "XHTML.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/seamless/xhtml/XHTML$ATTR;,
        Lorg/seamless/xhtml/XHTML$ELEMENT;
    }
.end annotation


# static fields
.field public static final NAMESPACE_URI:Ljava/lang/String; = "http://www.w3.org/1999/xhtml"

.field public static final SCHEMA_RESOURCE:Ljava/lang/String; = "org/seamless/schemas/xhtml1-strict.xsd"


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lorg/seamless/xml/DOM;-><init>(Lorg/w3c/dom/Document;)V

    return-void
.end method

.method public static createSchemaSources()[Ljavax/xml/transform/Source;
    .locals 4

    const/4 v0, 0x1

    .line 35
    new-array v0, v0, [Ljavax/xml/transform/Source;

    new-instance v1, Ljavax/xml/transform/stream/StreamSource;

    const-class v2, Lorg/seamless/xhtml/XHTML;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "org/seamless/schemas/xhtml1-strict.xsd"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public copy()Lorg/seamless/xhtml/XHTML;
    .locals 3

    .line 80
    new-instance v0, Lorg/seamless/xhtml/XHTML;

    invoke-virtual {p0}, Lorg/seamless/xhtml/XHTML;->getW3CDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Document;

    invoke-direct {v0, v1}, Lorg/seamless/xhtml/XHTML;-><init>(Lorg/w3c/dom/Document;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/seamless/xml/DOM;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lorg/seamless/xhtml/XHTML;->copy()Lorg/seamless/xhtml/XHTML;

    move-result-object v0

    return-object v0
.end method

.method public createRoot(Ljavax/xml/xpath/XPath;Lorg/seamless/xhtml/XHTML$ELEMENT;)Lorg/seamless/xhtml/Root;
    .locals 0

    .line 64
    invoke-virtual {p2}, Lorg/seamless/xhtml/XHTML$ELEMENT;->name()Ljava/lang/String;

    move-result-object p2

    invoke-super {p0, p2}, Lorg/seamless/xml/DOM;->createRoot(Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 65
    invoke-virtual {p0, p1}, Lorg/seamless/xhtml/XHTML;->getRoot(Ljavax/xml/xpath/XPath;)Lorg/seamless/xhtml/Root;

    move-result-object p1

    return-object p1
.end method

.method public getRoot(Ljavax/xml/xpath/XPath;)Lorg/seamless/xhtml/Root;
    .locals 2

    .line 75
    new-instance v0, Lorg/seamless/xhtml/Root;

    invoke-virtual {p0}, Lorg/seamless/xhtml/XHTML;->getW3CDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/seamless/xhtml/Root;-><init>(Ljavax/xml/xpath/XPath;Lorg/w3c/dom/Element;)V

    return-object v0
.end method

.method public bridge synthetic getRoot(Ljavax/xml/xpath/XPath;)Lorg/seamless/xml/DOMElement;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lorg/seamless/xhtml/XHTML;->getRoot(Ljavax/xml/xpath/XPath;)Lorg/seamless/xhtml/Root;

    move-result-object p1

    return-object p1
.end method

.method public getRootElementNamespace()Ljava/lang/String;
    .locals 1

    const-string v0, "http://www.w3.org/1999/xhtml"

    return-object v0
.end method
