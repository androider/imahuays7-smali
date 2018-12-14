.class public Lorg/seamless/swing/NodeTreeModel;
.super Ljava/lang/Object;
.source "NodeTreeModel.java"

# interfaces
.implements Ljavax/swing/tree/TreeModel;


# instance fields
.field private rootNode:Lorg/seamless/swing/Node;

.field private selectedNode:Lorg/seamless/swing/Node;


# direct methods
.method public constructor <init>(Lorg/seamless/swing/Node;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/seamless/swing/NodeTreeModel;->rootNode:Lorg/seamless/swing/Node;

    return-void
.end method


# virtual methods
.method public addTreeModelListener(Ljavax/swing/event/TreeModelListener;)V
    .locals 0

    return-void
.end method

.method public getChild(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0

    .line 54
    check-cast p1, Lorg/seamless/swing/Node;

    .line 55
    invoke-interface {p1}, Lorg/seamless/swing/Node;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getChildCount(Ljava/lang/Object;)I
    .locals 0

    .line 49
    check-cast p1, Lorg/seamless/swing/Node;

    .line 50
    invoke-interface {p1}, Lorg/seamless/swing/Node;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public getIndexOfChild(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    check-cast p1, Lorg/seamless/swing/Node;

    .line 62
    invoke-interface {p1}, Lorg/seamless/swing/Node;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public getRoot()Ljava/lang/Object;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/seamless/swing/NodeTreeModel;->rootNode:Lorg/seamless/swing/Node;

    return-object v0
.end method

.method public isLeaf(Ljava/lang/Object;)Z
    .locals 0

    .line 43
    check-cast p1, Lorg/seamless/swing/Node;

    .line 44
    invoke-interface {p1}, Lorg/seamless/swing/Node;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public removeTreeModelListener(Ljavax/swing/event/TreeModelListener;)V
    .locals 0

    return-void
.end method

.method public valueForPathChanged(Ljavax/swing/tree/TreePath;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
