.class Lorg/seamless/xhtml/XHTMLParser$1;
.super Lorg/seamless/xml/DOMParser$NodeVisitor;
.source "XHTMLParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/seamless/xhtml/XHTMLParser;->checkDuplicateIdentifiers(Lorg/seamless/xhtml/XHTML;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/seamless/xhtml/XHTMLParser;

.field final synthetic val$identifiers:Ljava/util/Set;


# direct methods
.method constructor <init>(Lorg/seamless/xhtml/XHTMLParser;SLjava/util/Set;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lorg/seamless/xhtml/XHTMLParser$1;->this$0:Lorg/seamless/xhtml/XHTMLParser;

    iput-object p3, p0, Lorg/seamless/xhtml/XHTMLParser$1;->val$identifiers:Ljava/util/Set;

    invoke-direct {p0, p2}, Lorg/seamless/xml/DOMParser$NodeVisitor;-><init>(S)V

    return-void
.end method


# virtual methods
.method public visit(Lorg/w3c/dom/Node;)V
    .locals 3

    .line 46
    check-cast p1, Lorg/w3c/dom/Element;

    .line 48
    sget-object v0, Lorg/seamless/xhtml/XHTML$ATTR;->id:Lorg/seamless/xhtml/XHTML$ATTR;

    invoke-virtual {v0}, Lorg/seamless/xhtml/XHTML$ATTR;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    iget-object v0, p0, Lorg/seamless/xhtml/XHTMLParser$1;->val$identifiers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate identifier, override/change value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    iget-object v0, p0, Lorg/seamless/xhtml/XHTMLParser$1;->val$identifiers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
