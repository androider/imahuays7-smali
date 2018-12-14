.class public Lorg/dom4j/tree/BackedList;
.super Ljava/util/ArrayList;
.source "BackedList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/dom4j/Node;",
        ">",
        "Ljava/util/ArrayList<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private branch:Lorg/dom4j/tree/AbstractBranch;

.field private branchContent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/dom4j/Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/dom4j/tree/AbstractBranch;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/dom4j/tree/AbstractBranch;",
            "Ljava/util/List<",
            "Lorg/dom4j/Node;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lorg/dom4j/tree/BackedList;-><init>(Lorg/dom4j/tree/AbstractBranch;Ljava/util/List;I)V

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/tree/AbstractBranch;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/dom4j/tree/AbstractBranch;",
            "Ljava/util/List<",
            "Lorg/dom4j/Node;",
            ">;I)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 40
    iput-object p1, p0, Lorg/dom4j/tree/BackedList;->branch:Lorg/dom4j/tree/AbstractBranch;

    .line 41
    iput-object p2, p0, Lorg/dom4j/tree/BackedList;->branchContent:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/tree/AbstractBranch;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/dom4j/tree/AbstractBranch;",
            "Ljava/util/List<",
            "Lorg/dom4j/Node;",
            ">;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 47
    iput-object p1, p0, Lorg/dom4j/tree/BackedList;->branch:Lorg/dom4j/tree/AbstractBranch;

    .line 48
    iput-object p2, p0, Lorg/dom4j/tree/BackedList;->branchContent:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p2, Lorg/dom4j/Node;

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/tree/BackedList;->add(ILorg/dom4j/Node;)V

    return-void
.end method

.method public add(ILorg/dom4j/Node;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Lorg/dom4j/tree/BackedList;->size()I

    move-result v0

    if-gez p1, :cond_0

    .line 63
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is less than zero"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    if-le p1, v0, :cond_1

    .line 66
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cannot be greater than the size: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    if-nez v0, :cond_2

    .line 73
    iget-object v0, p0, Lorg/dom4j/tree/BackedList;->branchContent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_2
    if-ge p1, v0, :cond_3

    .line 75
    iget-object v0, p0, Lorg/dom4j/tree/BackedList;->branchContent:Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/BackedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 77
    :cond_3
    iget-object v1, p0, Lorg/dom4j/tree/BackedList;->branchContent:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/BackedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 80
    :goto_0
    iget-object v1, p0, Lorg/dom4j/tree/BackedList;->branch:Lorg/dom4j/tree/AbstractBranch;

    invoke-virtual {v1, v0, p2}, Lorg/dom4j/tree/AbstractBranch;->addNode(ILorg/dom4j/Node;)V

    .line 81
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 27
    check-cast p1, Lorg/dom4j/Node;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/BackedList;->add(Lorg/dom4j/Node;)Z

    move-result p1

    return p1
.end method

.method public add(Lorg/dom4j/Node;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lorg/dom4j/tree/BackedList;->branch:Lorg/dom4j/tree/AbstractBranch;

    invoke-virtual {v0, p1}, Lorg/dom4j/tree/AbstractBranch;->addNode(Lorg/dom4j/Node;)V

    .line 55
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 140
    invoke-virtual {p0}, Lorg/dom4j/tree/BackedList;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/BackedList;->ensureCapacity(I)V

    .line 142
    invoke-virtual {p0}, Lorg/dom4j/tree/BackedList;->size()I

    move-result v0

    .line 144
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, p1, 0x1

    .line 145
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/dom4j/Node;

    invoke-virtual {p0, p1, v2}, Lorg/dom4j/tree/BackedList;->add(ILorg/dom4j/Node;)V

    add-int/lit8 v0, v0, -0x1

    move p1, v1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 127
    invoke-virtual {p0}, Lorg/dom4j/tree/BackedList;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/BackedList;->ensureCapacity(I)V

    .line 129
    invoke-virtual {p0}, Lorg/dom4j/tree/BackedList;->size()I

    move-result v0

    .line 131
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Node;

    invoke-virtual {p0, v1}, Lorg/dom4j/tree/BackedList;->add(Lorg/dom4j/Node;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public addLocal(Lorg/dom4j/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 169
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 3

    .line 153
    invoke-virtual {p0}, Lorg/dom4j/tree/BackedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Node;

    .line 154
    iget-object v2, p0, Lorg/dom4j/tree/BackedList;->branchContent:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 155
    iget-object v2, p0, Lorg/dom4j/tree/BackedList;->branch:Lorg/dom4j/tree/AbstractBranch;

    invoke-virtual {v2, v1}, Lorg/dom4j/tree/AbstractBranch;->childRemoved(Lorg/dom4j/Node;)V

    goto :goto_0

    .line 158
    :cond_0
    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/BackedList;->remove(I)Lorg/dom4j/Node;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Lorg/dom4j/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 116
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/dom4j/Node;

    if-eqz p1, :cond_0

    .line 119
    iget-object v0, p0, Lorg/dom4j/tree/BackedList;->branch:Lorg/dom4j/tree/AbstractBranch;

    invoke-virtual {v0, p1}, Lorg/dom4j/tree/AbstractBranch;->removeNode(Lorg/dom4j/Node;)Z

    :cond_0
    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 107
    instance-of v0, p1, Lorg/dom4j/Node;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lorg/dom4j/tree/BackedList;->branch:Lorg/dom4j/tree/AbstractBranch;

    move-object v1, p1

    check-cast v1, Lorg/dom4j/Node;

    invoke-virtual {v0, v1}, Lorg/dom4j/tree/AbstractBranch;->removeNode(Lorg/dom4j/Node;)Z

    .line 111
    :cond_0
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27
    check-cast p2, Lorg/dom4j/Node;

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/tree/BackedList;->set(ILorg/dom4j/Node;)Lorg/dom4j/Node;

    move-result-object p1

    return-object p1
.end method

.method public set(ILorg/dom4j/Node;)Lorg/dom4j/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lorg/dom4j/tree/BackedList;->branchContent:Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/BackedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const v0, 0x7fffffff

    .line 92
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/dom4j/tree/BackedList;->branchContent:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 93
    iget-object v1, p0, Lorg/dom4j/tree/BackedList;->branch:Lorg/dom4j/tree/AbstractBranch;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/BackedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/dom4j/Node;

    invoke-virtual {v1, v2}, Lorg/dom4j/tree/AbstractBranch;->removeNode(Lorg/dom4j/Node;)Z

    .line 94
    iget-object v1, p0, Lorg/dom4j/tree/BackedList;->branch:Lorg/dom4j/tree/AbstractBranch;

    invoke-virtual {v1, v0, p2}, Lorg/dom4j/tree/AbstractBranch;->addNode(ILorg/dom4j/Node;)V

    goto :goto_1

    .line 96
    :cond_2
    iget-object v0, p0, Lorg/dom4j/tree/BackedList;->branch:Lorg/dom4j/tree/AbstractBranch;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/BackedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Node;

    invoke-virtual {v0, v1}, Lorg/dom4j/tree/AbstractBranch;->removeNode(Lorg/dom4j/Node;)Z

    .line 97
    iget-object v0, p0, Lorg/dom4j/tree/BackedList;->branch:Lorg/dom4j/tree/AbstractBranch;

    invoke-virtual {v0, p2}, Lorg/dom4j/tree/AbstractBranch;->addNode(Lorg/dom4j/Node;)V

    .line 100
    :goto_1
    iget-object v0, p0, Lorg/dom4j/tree/BackedList;->branch:Lorg/dom4j/tree/AbstractBranch;

    invoke-virtual {v0, p2}, Lorg/dom4j/tree/AbstractBranch;->childAdded(Lorg/dom4j/Node;)V

    .line 102
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/dom4j/Node;

    return-object p1
.end method
