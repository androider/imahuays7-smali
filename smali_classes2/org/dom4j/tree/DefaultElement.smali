.class public Lorg/dom4j/tree/DefaultElement;
.super Lorg/dom4j/tree/AbstractElement;
.source "DefaultElement.java"


# static fields
.field private static final transient DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;


# instance fields
.field private attributes:Ljava/lang/Object;

.field private content:Ljava/lang/Object;

.field private parentBranch:Lorg/dom4j/Branch;

.field private qname:Lorg/dom4j/QName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    sput-object v0, Lorg/dom4j/tree/DefaultElement;->DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractElement;-><init>()V

    .line 53
    sget-object v0, Lorg/dom4j/tree/DefaultElement;->DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object p1

    iput-object p1, p0, Lorg/dom4j/tree/DefaultElement;->qname:Lorg/dom4j/QName;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/dom4j/Namespace;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractElement;-><init>()V

    .line 69
    sget-object v0, Lorg/dom4j/tree/DefaultElement;->DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object p1

    iput-object p1, p0, Lorg/dom4j/tree/DefaultElement;->qname:Lorg/dom4j/QName;

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/QName;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractElement;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/dom4j/tree/DefaultElement;->qname:Lorg/dom4j/QName;

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/QName;I)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractElement;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/dom4j/tree/DefaultElement;->qname:Lorg/dom4j/QName;

    const/4 p1, 0x1

    if-le p2, p1, :cond_0

    .line 64
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lorg/dom4j/Attribute;)V
    .locals 2

    .line 754
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getParent()Lorg/dom4j/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The Attribute already has an existing parent \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getParent()Lorg/dom4j/Element;

    move-result-object v1

    invoke-interface {v1}, Lorg/dom4j/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 758
    new-instance v1, Lorg/dom4j/IllegalAddException;

    invoke-direct {v1, p0, p1, v0}, Lorg/dom4j/IllegalAddException;-><init>(Lorg/dom4j/Element;Lorg/dom4j/Node;Ljava/lang/String;)V

    throw v1

    .line 761
    :cond_0
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 765
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/DefaultElement;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 768
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/DefaultElement;->remove(Lorg/dom4j/Attribute;)Z

    goto :goto_1

    .line 771
    :cond_1
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 772
    iput-object p1, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    goto :goto_0

    .line 774
    :cond_2
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->attributeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 777
    :goto_0
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/DefaultElement;->childAdded(Lorg/dom4j/Node;)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected addNewNode(Lorg/dom4j/Node;)V
    .locals 2

    .line 827
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 830
    iput-object p1, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    goto :goto_0

    .line 832
    :cond_0
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 833
    check-cast v0, Ljava/util/List;

    .line 835
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 837
    :cond_1
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createContentList()Ljava/util/List;

    move-result-object v1

    .line 839
    check-cast v0, Lorg/dom4j/Node;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 841
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 843
    iput-object v1, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 847
    :goto_0
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/DefaultElement;->childAdded(Lorg/dom4j/Node;)V

    return-void
.end method

.method public additionalNamespaces()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/dom4j/Namespace;",
            ">;"
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 307
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 308
    check-cast v0, Ljava/util/List;

    .line 310
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v1

    .line 312
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/dom4j/Node;

    .line 313
    instance-of v3, v2, Lorg/dom4j/Namespace;

    if-eqz v3, :cond_0

    .line 314
    check-cast v2, Lorg/dom4j/Namespace;

    .line 316
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/dom4j/Namespace;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 317
    invoke-virtual {v1, v2}, Lorg/dom4j/tree/BackedList;->addLocal(Lorg/dom4j/Node;)V

    goto :goto_0

    :cond_1
    return-object v1

    .line 324
    :cond_2
    instance-of v1, v0, Lorg/dom4j/Namespace;

    if-eqz v1, :cond_4

    .line 325
    check-cast v0, Lorg/dom4j/Namespace;

    .line 327
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/dom4j/Namespace;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 328
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createEmptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 331
    :cond_3
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/DefaultElement;->createSingleResultList(Lorg/dom4j/Node;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 333
    :cond_4
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createEmptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public additionalNamespaces(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/dom4j/Namespace;",
            ">;"
        }
    .end annotation

    .line 339
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 341
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 342
    check-cast v0, Ljava/util/List;

    .line 344
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v1

    .line 346
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/dom4j/Node;

    .line 347
    instance-of v3, v2, Lorg/dom4j/Namespace;

    if-eqz v3, :cond_0

    .line 348
    check-cast v2, Lorg/dom4j/Namespace;

    .line 350
    invoke-virtual {v2}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 351
    invoke-virtual {v1, v2}, Lorg/dom4j/tree/BackedList;->addLocal(Lorg/dom4j/Node;)V

    goto :goto_0

    :cond_1
    return-object v1

    .line 358
    :cond_2
    instance-of v1, v0, Lorg/dom4j/Namespace;

    if-eqz v1, :cond_3

    .line 359
    check-cast v0, Lorg/dom4j/Namespace;

    .line 361
    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 362
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/DefaultElement;->createSingleResultList(Lorg/dom4j/Node;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 367
    :cond_3
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createEmptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public attribute(I)Lorg/dom4j/Attribute;
    .locals 2

    .line 680
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    .line 682
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 683
    check-cast v0, Ljava/util/List;

    .line 685
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/dom4j/Attribute;

    return-object p1

    :cond_0
    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 687
    check-cast v0, Lorg/dom4j/Attribute;

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;
    .locals 3

    .line 706
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    .line 708
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 709
    check-cast v0, Ljava/util/List;

    .line 711
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Attribute;

    .line 712
    invoke-interface {v1}, Lorg/dom4j/Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    if-eqz v0, :cond_2

    .line 717
    check-cast v0, Lorg/dom4j/Attribute;

    .line 719
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public attribute(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/Attribute;
    .locals 1

    .line 750
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/DefaultElement;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;
    .locals 3

    .line 728
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    .line 730
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 731
    check-cast v0, Ljava/util/List;

    .line 733
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Attribute;

    .line 734
    invoke-interface {v1}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/dom4j/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    if-eqz v0, :cond_2

    .line 739
    check-cast v0, Lorg/dom4j/Attribute;

    .line 741
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/dom4j/QName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public attributeCount()I
    .locals 2

    .line 694
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    .line 696
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 697
    check-cast v0, Ljava/util/List;

    .line 699
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public attributeIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/dom4j/Attribute;",
            ">;"
        }
    .end annotation

    .line 666
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    .line 668
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 669
    check-cast v0, Ljava/util/List;

    .line 671
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 673
    check-cast v0, Lorg/dom4j/Attribute;

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/DefaultElement;->createSingleIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 675
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected attributeList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/dom4j/Attribute;",
            ">;"
        }
    .end annotation

    .line 892
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    .line 894
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 895
    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 897
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createAttributeList()Ljava/util/List;

    move-result-object v1

    .line 899
    check-cast v0, Lorg/dom4j/Attribute;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 901
    iput-object v1, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    return-object v1

    .line 905
    :cond_1
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createAttributeList()Ljava/util/List;

    move-result-object v0

    .line 907
    iput-object v0, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    return-object v0
.end method

.method protected attributeList(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lorg/dom4j/Attribute;",
            ">;"
        }
    .end annotation

    .line 914
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    .line 916
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 917
    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 919
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/DefaultElement;->createAttributeList(I)Ljava/util/List;

    move-result-object p1

    .line 921
    check-cast v0, Lorg/dom4j/Attribute;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 923
    iput-object p1, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    return-object p1

    .line 927
    :cond_1
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/DefaultElement;->createAttributeList(I)Ljava/util/List;

    move-result-object p1

    .line 929
    iput-object p1, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    return-object p1
.end method

.method public attributes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/dom4j/Attribute;",
            ">;"
        }
    .end annotation

    .line 654
    new-instance v0, Lorg/dom4j/tree/ContentListFacade;

    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->attributeList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/dom4j/tree/ContentListFacade;-><init>(Lorg/dom4j/tree/AbstractBranch;Ljava/util/List;)V

    return-object v0
.end method

.method public clearContent()V
    .locals 1

    .line 579
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 580
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->contentRemoved()V

    const/4 v0, 0x0

    .line 582
    iput-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 174
    invoke-super {p0}, Lorg/dom4j/tree/AbstractElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/tree/DefaultElement;

    if-eq v0, p0, :cond_0

    const/4 v1, 0x0

    .line 177
    iput-object v1, v0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 179
    iput-object v1, v0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    .line 181
    invoke-virtual {v0, p0}, Lorg/dom4j/tree/DefaultElement;->appendAttributes(Lorg/dom4j/Element;)V

    .line 183
    invoke-virtual {v0, p0}, Lorg/dom4j/tree/DefaultElement;->appendContent(Lorg/dom4j/Branch;)V

    :cond_0
    return-object v0
.end method

.method protected contentList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/dom4j/Node;",
            ">;"
        }
    .end annotation

    .line 874
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 876
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 877
    check-cast v0, Ljava/util/List;

    return-object v0

    .line 879
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createContentList()Ljava/util/List;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 882
    check-cast v0, Lorg/dom4j/Node;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 885
    :cond_1
    iput-object v1, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    return-object v1
.end method

.method public declaredNamespaces()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/dom4j/Namespace;",
            ">;"
        }
    .end annotation

    .line 278
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 287
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_1

    .line 288
    check-cast v1, Ljava/util/List;

    .line 290
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/dom4j/Node;

    .line 291
    instance-of v3, v2, Lorg/dom4j/Namespace;

    if-eqz v3, :cond_0

    .line 292
    check-cast v2, Lorg/dom4j/Namespace;

    invoke-virtual {v0, v2}, Lorg/dom4j/tree/BackedList;->addLocal(Lorg/dom4j/Node;)V

    goto :goto_0

    .line 296
    :cond_1
    instance-of v2, v1, Lorg/dom4j/Namespace;

    if-eqz v2, :cond_2

    .line 297
    check-cast v1, Lorg/dom4j/Namespace;

    invoke-virtual {v0, v1}, Lorg/dom4j/tree/BackedList;->addLocal(Lorg/dom4j/Node;)V

    :cond_2
    return-object v0
.end method

.method public element(Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 3

    .line 490
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 492
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 493
    check-cast v0, Ljava/util/List;

    .line 495
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Node;

    .line 496
    instance-of v2, v1, Lorg/dom4j/Element;

    if-eqz v2, :cond_0

    .line 497
    check-cast v1, Lorg/dom4j/Element;

    .line 499
    invoke-interface {v1}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 505
    :cond_1
    instance-of v1, v0, Lorg/dom4j/Element;

    if-eqz v1, :cond_2

    .line 506
    check-cast v0, Lorg/dom4j/Element;

    .line 508
    invoke-interface {v0}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public element(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/Element;
    .locals 1

    .line 546
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/DefaultElement;->element(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object p1

    return-object p1
.end method

.method public element(Lorg/dom4j/QName;)Lorg/dom4j/Element;
    .locals 3

    .line 518
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 520
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 521
    check-cast v0, Ljava/util/List;

    .line 523
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Node;

    .line 524
    instance-of v2, v1, Lorg/dom4j/Element;

    if-eqz v2, :cond_0

    .line 525
    check-cast v1, Lorg/dom4j/Element;

    .line 527
    invoke-interface {v1}, Lorg/dom4j/Element;->getQName()Lorg/dom4j/QName;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/dom4j/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 533
    :cond_1
    instance-of v1, v0, Lorg/dom4j/Element;

    if-eqz v1, :cond_2

    .line 534
    check-cast v0, Lorg/dom4j/Element;

    .line 536
    invoke-interface {v0}, Lorg/dom4j/Element;->getQName()Lorg/dom4j/QName;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/dom4j/QName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDocument()Lorg/dom4j/Document;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->parentBranch:Lorg/dom4j/Branch;

    instance-of v0, v0, Lorg/dom4j/Document;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->parentBranch:Lorg/dom4j/Branch;

    check-cast v0, Lorg/dom4j/Document;

    return-object v0

    .line 91
    :cond_0
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->parentBranch:Lorg/dom4j/Branch;

    instance-of v0, v0, Lorg/dom4j/Element;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->parentBranch:Lorg/dom4j/Branch;

    check-cast v0, Lorg/dom4j/Element;

    .line 94
    invoke-interface {v0}, Lorg/dom4j/Element;->getDocument()Lorg/dom4j/Document;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getDocumentFactory()Lorg/dom4j/DocumentFactory;
    .locals 1

    .line 940
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->qname:Lorg/dom4j/QName;

    invoke-virtual {v0}, Lorg/dom4j/QName;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 942
    :cond_0
    sget-object v0, Lorg/dom4j/tree/DefaultElement;->DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

    :goto_0
    return-object v0
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;)Lorg/dom4j/Namespace;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    .line 194
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "xml"

    .line 196
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    sget-object p1, Lorg/dom4j/Namespace;->XML_NAMESPACE:Lorg/dom4j/Namespace;

    return-object p1

    .line 199
    :cond_2
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 201
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_4

    .line 202
    check-cast v0, Ljava/util/List;

    .line 204
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Node;

    .line 205
    instance-of v2, v1, Lorg/dom4j/Namespace;

    if-eqz v2, :cond_3

    .line 206
    check-cast v1, Lorg/dom4j/Namespace;

    .line 208
    invoke-virtual {v1}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    .line 213
    :cond_4
    instance-of v1, v0, Lorg/dom4j/Namespace;

    if-eqz v1, :cond_5

    .line 214
    check-cast v0, Lorg/dom4j/Namespace;

    .line 216
    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-object v0

    .line 222
    :cond_5
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->getParent()Lorg/dom4j/Element;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 225
    invoke-interface {v0, p1}, Lorg/dom4j/Element;->getNamespaceForPrefix(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    if-eqz v0, :cond_6

    return-object v0

    .line 232
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gtz p1, :cond_7

    .line 233
    sget-object p1, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNamespaceForURI(Ljava/lang/String;)Lorg/dom4j/Namespace;
    .locals 3

    if-eqz p1, :cond_6

    .line 240
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object p1

    return-object p1

    .line 245
    :cond_1
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 247
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 248
    check-cast v0, Ljava/util/List;

    .line 250
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Node;

    .line 251
    instance-of v2, v1, Lorg/dom4j/Namespace;

    if-eqz v2, :cond_2

    .line 252
    check-cast v1, Lorg/dom4j/Namespace;

    .line 254
    invoke-virtual {v1}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    .line 259
    :cond_3
    instance-of v1, v0, Lorg/dom4j/Namespace;

    if-eqz v1, :cond_4

    .line 260
    check-cast v0, Lorg/dom4j/Namespace;

    .line 262
    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    .line 267
    :cond_4
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->getParent()Lorg/dom4j/Element;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 270
    invoke-interface {v0, p1}, Lorg/dom4j/Element;->getNamespaceForURI(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object p1

    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1

    .line 241
    :cond_6
    :goto_0
    sget-object p1, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    return-object p1
.end method

.method public getParent()Lorg/dom4j/Element;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->parentBranch:Lorg/dom4j/Branch;

    instance-of v0, v0, Lorg/dom4j/Element;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->parentBranch:Lorg/dom4j/Branch;

    check-cast v0, Lorg/dom4j/Element;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getQName()Lorg/dom4j/QName;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->qname:Lorg/dom4j/QName;

    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 4

    .line 133
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 135
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 136
    check-cast v0, Ljava/util/List;

    .line 138
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 143
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/DefaultElement;->getContentAsStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 145
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/dom4j/Node;

    .line 148
    invoke-virtual {p0, v2}, Lorg/dom4j/tree/DefaultElement;->getContentAsStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 161
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    if-eqz v0, :cond_4

    .line 166
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/DefaultElement;->getContentAsStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    const-string v0, ""

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .line 119
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 121
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 122
    invoke-super {p0}, Lorg/dom4j/tree/AbstractElement;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/DefaultElement;->getContentAsText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public indexOf(Lorg/dom4j/Node;)I
    .locals 2

    .line 610
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 612
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 613
    check-cast v0, Ljava/util/List;

    .line 615
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    if-eqz v0, :cond_1

    .line 617
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public node(I)Lorg/dom4j/Node;
    .locals 3

    const/4 v0, 0x0

    if-ltz p1, :cond_3

    .line 588
    iget-object v1, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 591
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_1

    .line 592
    check-cast v1, Ljava/util/List;

    .line 594
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_0

    return-object v0

    .line 598
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/dom4j/Node;

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 600
    move-object v0, v1

    check-cast v0, Lorg/dom4j/Node;

    :cond_2
    move-object p1, v0

    :goto_0
    return-object p1

    :cond_3
    return-object v0
.end method

.method public nodeCount()I
    .locals 2

    .line 626
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 628
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 629
    check-cast v0, Ljava/util/List;

    .line 631
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nodeIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/dom4j/Node;",
            ">;"
        }
    .end annotation

    .line 638
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 640
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 641
    check-cast v0, Ljava/util/List;

    .line 643
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 646
    check-cast v0, Lorg/dom4j/Node;

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/DefaultElement;->createSingleIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 648
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public processingInstruction(Ljava/lang/String;)Lorg/dom4j/ProcessingInstruction;
    .locals 3

    .line 428
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 430
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 431
    check-cast v0, Ljava/util/List;

    .line 433
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Node;

    .line 434
    instance-of v2, v1, Lorg/dom4j/ProcessingInstruction;

    if-eqz v2, :cond_0

    .line 435
    check-cast v1, Lorg/dom4j/ProcessingInstruction;

    .line 437
    invoke-interface {v1}, Lorg/dom4j/ProcessingInstruction;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 443
    :cond_1
    instance-of v1, v0, Lorg/dom4j/ProcessingInstruction;

    if-eqz v1, :cond_2

    .line 444
    check-cast v0, Lorg/dom4j/ProcessingInstruction;

    .line 446
    invoke-interface {v0}, Lorg/dom4j/ProcessingInstruction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public processingInstructions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/dom4j/ProcessingInstruction;",
            ">;"
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 374
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 375
    check-cast v0, Ljava/util/List;

    .line 377
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v1

    .line 379
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/dom4j/Node;

    .line 380
    instance-of v3, v2, Lorg/dom4j/ProcessingInstruction;

    if-eqz v3, :cond_0

    .line 381
    check-cast v2, Lorg/dom4j/ProcessingInstruction;

    invoke-virtual {v1, v2}, Lorg/dom4j/tree/BackedList;->addLocal(Lorg/dom4j/Node;)V

    goto :goto_0

    :cond_1
    return-object v1

    .line 387
    :cond_2
    instance-of v1, v0, Lorg/dom4j/ProcessingInstruction;

    if-eqz v1, :cond_3

    .line 388
    check-cast v0, Lorg/dom4j/ProcessingInstruction;

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/DefaultElement;->createSingleResultList(Lorg/dom4j/Node;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 391
    :cond_3
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createEmptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public processingInstructions(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/dom4j/ProcessingInstruction;",
            ">;"
        }
    .end annotation

    .line 396
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 398
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 399
    check-cast v0, Ljava/util/List;

    .line 401
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v1

    .line 403
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/dom4j/Node;

    .line 404
    instance-of v3, v2, Lorg/dom4j/ProcessingInstruction;

    if-eqz v3, :cond_0

    .line 405
    check-cast v2, Lorg/dom4j/ProcessingInstruction;

    .line 407
    invoke-interface {v2}, Lorg/dom4j/ProcessingInstruction;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 408
    invoke-virtual {v1, v2}, Lorg/dom4j/tree/BackedList;->addLocal(Lorg/dom4j/Node;)V

    goto :goto_0

    :cond_1
    return-object v1

    .line 415
    :cond_2
    instance-of v1, v0, Lorg/dom4j/ProcessingInstruction;

    if-eqz v1, :cond_3

    .line 416
    check-cast v0, Lorg/dom4j/ProcessingInstruction;

    .line 418
    invoke-interface {v0}, Lorg/dom4j/ProcessingInstruction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 419
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/DefaultElement;->createSingleResultList(Lorg/dom4j/Node;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 423
    :cond_3
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createEmptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public remove(Lorg/dom4j/Attribute;)Z
    .locals 4

    .line 783
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    .line 785
    instance-of v1, v0, Ljava/util/List;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 786
    check-cast v0, Ljava/util/List;

    .line 788
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 792
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/dom4j/tree/DefaultElement;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 795
    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_3

    .line 801
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 802
    iput-object v3, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    goto :goto_0

    .line 807
    :cond_2
    check-cast v0, Lorg/dom4j/Attribute;

    .line 809
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v1

    invoke-interface {v0}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/dom4j/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 810
    iput-object v3, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 818
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/DefaultElement;->childRemoved(Lorg/dom4j/Node;)V

    :cond_4
    return v2
.end method

.method protected removeNode(Lorg/dom4j/Node;)Z
    .locals 2

    .line 852
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    .line 856
    iput-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_0

    .line 859
    :cond_0
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 860
    check-cast v0, Ljava/util/List;

    .line 862
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 867
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/DefaultElement;->childRemoved(Lorg/dom4j/Node;)V

    :cond_2
    return v0
.end method

.method public removeProcessingInstruction(Ljava/lang/String;)Z
    .locals 4

    .line 456
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 458
    instance-of v1, v0, Ljava/util/List;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 459
    check-cast v0, Ljava/util/List;

    .line 461
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 462
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Node;

    .line 464
    instance-of v3, v1, Lorg/dom4j/ProcessingInstruction;

    if-eqz v3, :cond_0

    .line 465
    check-cast v1, Lorg/dom4j/ProcessingInstruction;

    .line 467
    invoke-interface {v1}, Lorg/dom4j/ProcessingInstruction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 468
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return v2

    .line 475
    :cond_1
    instance-of v1, v0, Lorg/dom4j/ProcessingInstruction;

    if-eqz v1, :cond_2

    .line 476
    check-cast v0, Lorg/dom4j/ProcessingInstruction;

    .line 478
    invoke-interface {v0}, Lorg/dom4j/ProcessingInstruction;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 479
    iput-object p1, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
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

    .line 936
    iput-object p1, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

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

    .line 658
    instance-of v0, p1, Lorg/dom4j/tree/ContentListFacade;

    if-eqz v0, :cond_0

    .line 659
    check-cast p1, Lorg/dom4j/tree/ContentListFacade;

    invoke-virtual {p1}, Lorg/dom4j/tree/ContentListFacade;->getBackingList()Ljava/util/List;

    move-result-object p1

    .line 662
    :cond_0
    iput-object p1, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    return-void
.end method

.method public setContent(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/dom4j/Node;",
            ">;)V"
        }
    .end annotation

    .line 550
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->contentRemoved()V

    .line 552
    instance-of v0, p1, Lorg/dom4j/tree/ContentListFacade;

    if-eqz v0, :cond_0

    .line 553
    check-cast p1, Lorg/dom4j/tree/ContentListFacade;

    invoke-virtual {p1}, Lorg/dom4j/tree/ContentListFacade;->getBackingList()Ljava/util/List;

    move-result-object p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 557
    iput-object p1, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    goto :goto_1

    .line 559
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 561
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/DefaultElement;->createContentList(I)Ljava/util/List;

    move-result-object v0

    .line 563
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Node;

    .line 564
    invoke-interface {v1}, Lorg/dom4j/Node;->getParent()Lorg/dom4j/Element;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eq v2, p0, :cond_2

    .line 567
    invoke-interface {v1}, Lorg/dom4j/Node;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Node;

    .line 570
    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 571
    invoke-virtual {p0, v1}, Lorg/dom4j/tree/DefaultElement;->childAdded(Lorg/dom4j/Node;)V

    goto :goto_0

    .line 574
    :cond_3
    iput-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public setDocument(Lorg/dom4j/Document;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->parentBranch:Lorg/dom4j/Branch;

    instance-of v0, v0, Lorg/dom4j/Document;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 102
    :cond_0
    iput-object p1, p0, Lorg/dom4j/tree/DefaultElement;->parentBranch:Lorg/dom4j/Branch;

    :cond_1
    return-void
.end method

.method public setParent(Lorg/dom4j/Element;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->parentBranch:Lorg/dom4j/Branch;

    instance-of v0, v0, Lorg/dom4j/Element;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 84
    :cond_0
    iput-object p1, p0, Lorg/dom4j/tree/DefaultElement;->parentBranch:Lorg/dom4j/Branch;

    :cond_1
    return-void
.end method

.method public setQName(Lorg/dom4j/QName;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lorg/dom4j/tree/DefaultElement;->qname:Lorg/dom4j/QName;

    return-void
.end method

.method public supportsParent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
