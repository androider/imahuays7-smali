.class Lorg/seamless/xml/DOMParser$2;
.super Lorg/seamless/xml/DOMParser$NodeVisitor;
.source "DOMParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/seamless/xml/DOMParser;->printHTML(Lorg/w3c/dom/Document;IZZ)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/seamless/xml/DOMParser;


# direct methods
.method constructor <init>(Lorg/seamless/xml/DOMParser;S)V
    .locals 0

    .line 393
    iput-object p1, p0, Lorg/seamless/xml/DOMParser$2;->this$0:Lorg/seamless/xml/DOMParser;

    invoke-direct {p0, p2}, Lorg/seamless/xml/DOMParser$NodeVisitor;-><init>(S)V

    return-void
.end method


# virtual methods
.method public visit(Lorg/w3c/dom/Node;)V
    .locals 1

    .line 396
    check-cast p1, Lorg/w3c/dom/CDATASection;

    .line 397
    invoke-interface {p1}, Lorg/w3c/dom/CDATASection;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/CDATASection;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/w3c/dom/Node;->setTextContent(Ljava/lang/String;)V

    return-void
.end method
