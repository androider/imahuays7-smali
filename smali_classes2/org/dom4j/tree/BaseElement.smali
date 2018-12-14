.class public Lorg/dom4j/tree/BaseElement;
.super Lorg/dom4j/tree/AbstractElement;
.source "BaseElement.java"


# instance fields
.field protected attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/dom4j/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field protected content:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/dom4j/Node;",
            ">;"
        }
    .end annotation
.end field

.field private parentBranch:Lorg/dom4j/Branch;

.field private qname:Lorg/dom4j/QName;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractElement;-><init>()V

    .line 42
    invoke-virtual {p0}, Lorg/dom4j/tree/BaseElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object p1

    iput-object p1, p0, Lorg/dom4j/tree/BaseElement;->qname:Lorg/dom4j/QName;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/dom4j/Namespace;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractElement;-><init>()V

    .line 50
    invoke-virtual {p0}, Lorg/dom4j/tree/BaseElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object p1

    iput-object p1, p0, Lorg/dom4j/tree/BaseElement;->qname:Lorg/dom4j/QName;

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/QName;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractElement;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/dom4j/tree/BaseElement;->qname:Lorg/dom4j/QName;

    return-void
.end method


# virtual methods
.method protected attributeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/dom4j/Attribute;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lorg/dom4j/tree/BaseElement;->attributes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lorg/dom4j/tree/BaseElement;->createAttributeList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/BaseElement;->attributes:Ljava/util/List;

    .line 134
    :cond_0
    iget-object v0, p0, Lorg/dom4j/tree/BaseElement;->attributes:Ljava/util/List;

    return-object v0
.end method

.method protected attributeList(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lorg/dom4j/Attribute;",
            ">;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lorg/dom4j/tree/BaseElement;->attributes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 139
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/BaseElement;->createAttributeList(I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/dom4j/tree/BaseElement;->attributes:Ljava/util/List;

    .line 142
    :cond_0
    iget-object p1, p0, Lorg/dom4j/tree/BaseElement;->attributes:Ljava/util/List;

    return-object p1
.end method

.method public clearContent()V
    .locals 1

    .line 100
    invoke-virtual {p0}, Lorg/dom4j/tree/BaseElement;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected contentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/dom4j/Node;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lorg/dom4j/tree/BaseElement;->content:Ljava/util/List;

    if-nez v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lorg/dom4j/tree/BaseElement;->createContentList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/BaseElement;->content:Ljava/util/List;

    .line 126
    :cond_0
    iget-object v0, p0, Lorg/dom4j/tree/BaseElement;->content:Ljava/util/List;

    return-object v0
.end method

.method public getDocument()Lorg/dom4j/Document;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/dom4j/tree/BaseElement;->parentBranch:Lorg/dom4j/Branch;

    instance-of v0, v0, Lorg/dom4j/Document;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lorg/dom4j/tree/BaseElement;->parentBranch:Lorg/dom4j/Branch;

    check-cast v0, Lorg/dom4j/Document;

    return-object v0

    .line 72
    :cond_0
    iget-object v0, p0, Lorg/dom4j/tree/BaseElement;->parentBranch:Lorg/dom4j/Branch;

    instance-of v0, v0, Lorg/dom4j/Element;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lorg/dom4j/tree/BaseElement;->parentBranch:Lorg/dom4j/Branch;

    check-cast v0, Lorg/dom4j/Element;

    .line 75
    invoke-interface {v0}, Lorg/dom4j/Element;->getDocument()Lorg/dom4j/Document;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParent()Lorg/dom4j/Element;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/dom4j/tree/BaseElement;->parentBranch:Lorg/dom4j/Branch;

    instance-of v0, v0, Lorg/dom4j/Element;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lorg/dom4j/tree/BaseElement;->parentBranch:Lorg/dom4j/Branch;

    check-cast v0, Lorg/dom4j/Element;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getQName()Lorg/dom4j/QName;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/dom4j/tree/BaseElement;->qname:Lorg/dom4j/QName;

    return-object v0
.end method

.method protected setAttributeList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/dom4j/Attribute;",
            ">;)V"
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lorg/dom4j/tree/BaseElement;->attributes:Ljava/util/List;

    return-void
.end method

.method public setAttributes(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/dom4j/Attribute;",
            ">;)V"
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lorg/dom4j/tree/BaseElement;->attributes:Ljava/util/List;

    .line 114
    instance-of v0, p1, Lorg/dom4j/tree/ContentListFacade;

    if-eqz v0, :cond_0

    .line 115
    check-cast p1, Lorg/dom4j/tree/ContentListFacade;

    invoke-virtual {p1}, Lorg/dom4j/tree/ContentListFacade;->getBackingList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/dom4j/tree/BaseElement;->attributes:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public setContent(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/dom4j/Node;",
            ">;)V"
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lorg/dom4j/tree/BaseElement;->content:Ljava/util/List;

    .line 106
    instance-of v0, p1, Lorg/dom4j/tree/ContentListFacade;

    if-eqz v0, :cond_0

    .line 107
    check-cast p1, Lorg/dom4j/tree/ContentListFacade;

    invoke-virtual {p1}, Lorg/dom4j/tree/ContentListFacade;->getBackingList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/dom4j/tree/BaseElement;->content:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public setDocument(Lorg/dom4j/Document;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/dom4j/tree/BaseElement;->parentBranch:Lorg/dom4j/Branch;

    instance-of v0, v0, Lorg/dom4j/Document;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 83
    :cond_0
    iput-object p1, p0, Lorg/dom4j/tree/BaseElement;->parentBranch:Lorg/dom4j/Branch;

    :cond_1
    return-void
.end method

.method public setParent(Lorg/dom4j/Element;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/dom4j/tree/BaseElement;->parentBranch:Lorg/dom4j/Branch;

    instance-of v0, v0, Lorg/dom4j/Element;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 65
    :cond_0
    iput-object p1, p0, Lorg/dom4j/tree/BaseElement;->parentBranch:Lorg/dom4j/Branch;

    :cond_1
    return-void
.end method

.method public setQName(Lorg/dom4j/QName;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lorg/dom4j/tree/BaseElement;->qname:Lorg/dom4j/QName;

    return-void
.end method

.method public supportsParent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
