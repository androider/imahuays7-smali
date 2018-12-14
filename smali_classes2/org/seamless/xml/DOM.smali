.class public abstract Lorg/seamless/xml/DOM;
.super Ljava/lang/Object;
.source "DOM.java"


# static fields
.field public static final CDATA_BEGIN:Ljava/lang/String; = "<![CDATA["

.field public static final CDATA_END:Ljava/lang/String; = "]]>"

.field public static final XML_SCHEMA_NAMESPACE:Ljava/net/URI;


# instance fields
.field private dom:Lorg/w3c/dom/Document;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "http://www.w3.org/2001/xml.xsd"

    .line 30
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    sput-object v0, Lorg/seamless/xml/DOM;->XML_SCHEMA_NAMESPACE:Ljava/net/URI;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/seamless/xml/DOM;->dom:Lorg/w3c/dom/Document;

    return-void
.end method


# virtual methods
.method public abstract copy()Lorg/seamless/xml/DOM;
.end method

.method public createRoot(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 2

    .line 47
    invoke-virtual {p0}, Lorg/seamless/xml/DOM;->getW3CDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-virtual {p0}, Lorg/seamless/xml/DOM;->getRootElementNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    .line 48
    invoke-virtual {p0}, Lorg/seamless/xml/DOM;->getW3CDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object p1
.end method

.method public abstract getRoot(Ljavax/xml/xpath/XPath;)Lorg/seamless/xml/DOMElement;
.end method

.method public abstract getRootElementNamespace()Ljava/lang/String;
.end method

.method public getW3CDocument()Lorg/w3c/dom/Document;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/seamless/xml/DOM;->dom:Lorg/w3c/dom/Document;

    return-object v0
.end method
