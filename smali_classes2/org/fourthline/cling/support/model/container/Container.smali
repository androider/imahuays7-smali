.class public Lorg/fourthline/cling/support/model/container/Container;
.super Lorg/fourthline/cling/support/model/DIDLObject;
.source "Container.java"


# instance fields
.field protected childCount:Ljava/lang/Integer;

.field protected containers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/model/container/Container;",
            ">;"
        }
    .end annotation
.end field

.field protected createClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/model/DIDLObject$Class;",
            ">;"
        }
    .end annotation
.end field

.field protected items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/model/item/Item;",
            ">;"
        }
    .end annotation
.end field

.field protected searchClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/model/DIDLObject$Class;",
            ">;"
        }
    .end annotation
.end field

.field protected searchable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/DIDLObject;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lorg/fourthline/cling/support/model/container/Container;->childCount:Ljava/lang/Integer;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/container/Container;->createClasses:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/container/Container;->searchClasses:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/container/Container;->containers:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/container/Container;->items:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/support/model/DIDLObject$Class;Ljava/lang/Integer;)V
    .locals 16

    .line 89
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    move-object/from16 v11, p6

    invoke-direct/range {v0 .. v15}, Lorg/fourthline/cling/support/model/container/Container;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/fourthline/cling/support/model/WriteStatus;Lorg/fourthline/cling/support/model/DIDLObject$Class;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;ZLjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/support/model/DIDLObject$Class;Ljava/lang/Integer;ZLjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/fourthline/cling/support/model/DIDLObject$Class;",
            "Ljava/lang/Integer;",
            "Z",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/model/DIDLObject$Class;",
            ">;",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/model/DIDLObject$Class;",
            ">;",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/model/item/Item;",
            ">;)V"
        }
    .end annotation

    .line 97
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    move-object/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    invoke-direct/range {v0 .. v15}, Lorg/fourthline/cling/support/model/container/Container;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/fourthline/cling/support/model/WriteStatus;Lorg/fourthline/cling/support/model/DIDLObject$Class;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;ZLjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/fourthline/cling/support/model/WriteStatus;Lorg/fourthline/cling/support/model/DIDLObject$Class;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lorg/fourthline/cling/support/model/WriteStatus;",
            "Lorg/fourthline/cling/support/model/DIDLObject$Class;",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/model/Res;",
            ">;",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/model/DIDLObject$Property;",
            ">;",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/model/DescMeta;",
            ">;)V"
        }
    .end annotation

    .line 72
    invoke-direct/range {p0 .. p10}, Lorg/fourthline/cling/support/model/DIDLObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/fourthline/cling/support/model/WriteStatus;Lorg/fourthline/cling/support/model/DIDLObject$Class;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Lorg/fourthline/cling/support/model/container/Container;->childCount:Ljava/lang/Integer;

    .line 54
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/fourthline/cling/support/model/container/Container;->createClasses:Ljava/util/List;

    .line 55
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/fourthline/cling/support/model/container/Container;->searchClasses:Ljava/util/List;

    .line 56
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/fourthline/cling/support/model/container/Container;->containers:Ljava/util/List;

    .line 57
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/fourthline/cling/support/model/container/Container;->items:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/fourthline/cling/support/model/WriteStatus;Lorg/fourthline/cling/support/model/DIDLObject$Class;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;ZLjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lorg/fourthline/cling/support/model/WriteStatus;",
            "Lorg/fourthline/cling/support/model/DIDLObject$Class;",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/model/Res;",
            ">;",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/model/DIDLObject$Property;",
            ">;",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/model/DescMeta;",
            ">;",
            "Ljava/lang/Integer;",
            "Z",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/model/DIDLObject$Class;",
            ">;",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/model/DIDLObject$Class;",
            ">;",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/model/item/Item;",
            ">;)V"
        }
    .end annotation

    .line 76
    invoke-direct/range {p0 .. p10}, Lorg/fourthline/cling/support/model/DIDLObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/fourthline/cling/support/model/WriteStatus;Lorg/fourthline/cling/support/model/DIDLObject$Class;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Lorg/fourthline/cling/support/model/container/Container;->childCount:Ljava/lang/Integer;

    .line 54
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/fourthline/cling/support/model/container/Container;->createClasses:Ljava/util/List;

    .line 55
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/fourthline/cling/support/model/container/Container;->searchClasses:Ljava/util/List;

    .line 56
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/fourthline/cling/support/model/container/Container;->containers:Ljava/util/List;

    .line 57
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/fourthline/cling/support/model/container/Container;->items:Ljava/util/List;

    .line 77
    iput-object p11, p0, Lorg/fourthline/cling/support/model/container/Container;->childCount:Ljava/lang/Integer;

    .line 78
    iput-boolean p12, p0, Lorg/fourthline/cling/support/model/container/Container;->searchable:Z

    .line 79
    iput-object p13, p0, Lorg/fourthline/cling/support/model/container/Container;->createClasses:Ljava/util/List;

    .line 80
    iput-object p14, p0, Lorg/fourthline/cling/support/model/container/Container;->searchClasses:Ljava/util/List;

    .line 81
    iput-object p15, p0, Lorg/fourthline/cling/support/model/container/Container;->items:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/support/model/container/Container;Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/support/model/DIDLObject$Class;Ljava/lang/Integer;)V
    .locals 16

    .line 85
    invoke-virtual/range {p2 .. p2}, Lorg/fourthline/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    move-object/from16 v11, p6

    invoke-direct/range {v0 .. v15}, Lorg/fourthline/cling/support/model/container/Container;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/fourthline/cling/support/model/WriteStatus;Lorg/fourthline/cling/support/model/DIDLObject$Class;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;ZLjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/support/model/container/Container;Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/support/model/DIDLObject$Class;Ljava/lang/Integer;ZLjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/fourthline/cling/support/model/container/Container;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/fourthline/cling/support/model/DIDLObject$Class;",
            "Ljava/lang/Integer;",
            "Z",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/model/DIDLObject$Class;",
            ">;",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/model/DIDLObject$Class;",
            ">;",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/model/item/Item;",
            ">;)V"
        }
    .end annotation

    .line 93
    invoke-virtual/range {p2 .. p2}, Lorg/fourthline/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    move-object/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    invoke-direct/range {v0 .. v15}, Lorg/fourthline/cling/support/model/container/Container;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/fourthline/cling/support/model/WriteStatus;Lorg/fourthline/cling/support/model/DIDLObject$Class;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;ZLjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/container/Container;)V
    .locals 1

    .line 63
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/model/DIDLObject;-><init>(Lorg/fourthline/cling/support/model/DIDLObject;)V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lorg/fourthline/cling/support/model/container/Container;->childCount:Ljava/lang/Integer;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/container/Container;->createClasses:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/container/Container;->searchClasses:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/container/Container;->containers:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/container/Container;->items:Ljava/util/List;

    .line 64
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->getChildCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/Container;->setChildCount(Ljava/lang/Integer;)V

    .line 65
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->isSearchable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/Container;->setSearchable(Z)V

    .line 66
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->getCreateClasses()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/Container;->setCreateClasses(Ljava/util/List;)V

    .line 67
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->getSearchClasses()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/Container;->setSearchClasses(Ljava/util/List;)V

    .line 68
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/model/container/Container;->setItems(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public addContainer(Lorg/fourthline/cling/support/model/container/Container;)Lorg/fourthline/cling/support/model/container/Container;
    .locals 1

    .line 137
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/container/Container;->getContainers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addItem(Lorg/fourthline/cling/support/model/item/Item;)Lorg/fourthline/cling/support/model/container/Container;
    .locals 1

    .line 158
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/container/Container;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getChildCount()Ljava/lang/Integer;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/fourthline/cling/support/model/container/Container;->childCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getContainers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/model/container/Container;",
            ">;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lorg/fourthline/cling/support/model/container/Container;->containers:Ljava/util/List;

    return-object v0
.end method

.method public getCreateClasses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/model/DIDLObject$Class;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lorg/fourthline/cling/support/model/container/Container;->createClasses:Ljava/util/List;

    return-object v0
.end method

.method public getFirstContainer()Lorg/fourthline/cling/support/model/container/Container;
    .locals 2

    .line 133
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/container/Container;->getContainers()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/container/Container;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/model/item/Item;",
            ">;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lorg/fourthline/cling/support/model/container/Container;->items:Ljava/util/List;

    return-object v0
.end method

.method public getSearchClasses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/model/DIDLObject$Class;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lorg/fourthline/cling/support/model/container/Container;->searchClasses:Ljava/util/List;

    return-object v0
.end method

.method public isSearchable()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lorg/fourthline/cling/support/model/container/Container;->searchable:Z

    return v0
.end method

.method public setChildCount(Ljava/lang/Integer;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lorg/fourthline/cling/support/model/container/Container;->childCount:Ljava/lang/Integer;

    return-void
.end method

.method public setContainers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/model/container/Container;",
            ">;)V"
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lorg/fourthline/cling/support/model/container/Container;->containers:Ljava/util/List;

    return-void
.end method

.method public setCreateClasses(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/model/DIDLObject$Class;",
            ">;)V"
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lorg/fourthline/cling/support/model/container/Container;->createClasses:Ljava/util/List;

    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/model/item/Item;",
            ">;)V"
        }
    .end annotation

    .line 154
    iput-object p1, p0, Lorg/fourthline/cling/support/model/container/Container;->items:Ljava/util/List;

    return-void
.end method

.method public setSearchClasses(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/model/DIDLObject$Class;",
            ">;)V"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lorg/fourthline/cling/support/model/container/Container;->searchClasses:Ljava/util/List;

    return-void
.end method

.method public setSearchable(Z)V
    .locals 0

    .line 113
    iput-boolean p1, p0, Lorg/fourthline/cling/support/model/container/Container;->searchable:Z

    return-void
.end method
