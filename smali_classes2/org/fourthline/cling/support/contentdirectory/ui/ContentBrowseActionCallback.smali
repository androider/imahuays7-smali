.class public abstract Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;
.super Lorg/fourthline/cling/support/contentdirectory/callback/Browse;
.source "ContentBrowseActionCallback.java"


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field protected final treeModel:Ljavax/swing/tree/DefaultTreeModel;

.field protected final treeNode:Ljavax/swing/tree/DefaultMutableTreeNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/Service;Ljavax/swing/tree/DefaultTreeModel;Ljavax/swing/tree/DefaultMutableTreeNode;)V
    .locals 10

    .line 52
    invoke-virtual {p3}, Ljavax/swing/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/container/Container;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/fourthline/cling/support/model/BrowseFlag;->DIRECT_CHILDREN:Lorg/fourthline/cling/support/model/BrowseFlag;

    const-string v5, "*"

    const/4 v0, 0x1

    new-array v9, v0, [Lorg/fourthline/cling/support/model/SortCriterion;

    new-instance v1, Lorg/fourthline/cling/support/model/SortCriterion;

    const-string v2, "dc:title"

    invoke-direct {v1, v0, v2}, Lorg/fourthline/cling/support/model/SortCriterion;-><init>(ZLjava/lang/String;)V

    const/4 v0, 0x0

    aput-object v1, v9, v0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Lorg/fourthline/cling/support/contentdirectory/callback/Browse;-><init>(Lorg/fourthline/cling/model/meta/Service;Ljava/lang/String;Lorg/fourthline/cling/support/model/BrowseFlag;Ljava/lang/String;JLjava/lang/Long;[Lorg/fourthline/cling/support/model/SortCriterion;)V

    .line 53
    iput-object p2, p0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->treeModel:Ljavax/swing/tree/DefaultTreeModel;

    .line 54
    iput-object p3, p0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->treeNode:Ljavax/swing/tree/DefaultMutableTreeNode;

    return-void
.end method

.method public varargs constructor <init>(Lorg/fourthline/cling/model/meta/Service;Ljavax/swing/tree/DefaultTreeModel;Ljavax/swing/tree/DefaultMutableTreeNode;Ljava/lang/String;JJ[Lorg/fourthline/cling/support/model/SortCriterion;)V
    .locals 10

    move-object v9, p0

    .line 59
    invoke-virtual {p3}, Ljavax/swing/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/container/Container;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/fourthline/cling/support/model/BrowseFlag;->DIRECT_CHILDREN:Lorg/fourthline/cling/support/model/BrowseFlag;

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v0, v9

    move-object v1, p1

    move-object v4, p4

    move-wide v5, p5

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lorg/fourthline/cling/support/contentdirectory/callback/Browse;-><init>(Lorg/fourthline/cling/model/meta/Service;Ljava/lang/String;Lorg/fourthline/cling/support/model/BrowseFlag;Ljava/lang/String;JLjava/lang/Long;[Lorg/fourthline/cling/support/model/SortCriterion;)V

    move-object v0, p2

    .line 60
    iput-object v0, v9, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->treeModel:Ljavax/swing/tree/DefaultTreeModel;

    move-object v0, p3

    .line 61
    iput-object v0, v9, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->treeNode:Ljavax/swing/tree/DefaultMutableTreeNode;

    return-void
.end method


# virtual methods
.method public failure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 0

    .line 135
    new-instance p1, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback$5;

    invoke-direct {p1, p0, p3}, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback$5;-><init>(Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;Ljava/lang/String;)V

    invoke-static {p1}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract failureUI(Ljava/lang/String;)V
.end method

.method public getTreeModel()Ljavax/swing/tree/DefaultTreeModel;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->treeModel:Ljavax/swing/tree/DefaultTreeModel;

    return-object v0
.end method

.method public getTreeNode()Ljavax/swing/tree/DefaultMutableTreeNode;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->treeNode:Ljavax/swing/tree/DefaultMutableTreeNode;

    return-object v0
.end method

.method protected insertChild(Ljavax/swing/tree/MutableTreeNode;)V
    .locals 3

    .line 159
    iget-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->treeNode:Ljavax/swing/tree/DefaultMutableTreeNode;

    invoke-virtual {v0}, Ljavax/swing/tree/DefaultMutableTreeNode;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->treeNode:Ljavax/swing/tree/DefaultMutableTreeNode;

    invoke-virtual {v0}, Ljavax/swing/tree/DefaultMutableTreeNode;->getChildCount()I

    move-result v0

    .line 160
    :goto_0
    iget-object v1, p0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->treeModel:Ljavax/swing/tree/DefaultTreeModel;

    iget-object v2, p0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->treeNode:Ljavax/swing/tree/DefaultMutableTreeNode;

    invoke-virtual {v1, p1, v2, v0}, Ljavax/swing/tree/DefaultTreeModel;->insertNodeInto(Ljavax/swing/tree/MutableTreeNode;Ljavax/swing/tree/MutableTreeNode;I)V

    return-void
.end method

.method public received(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/support/model/DIDLContent;)V
    .locals 5

    .line 73
    sget-object v0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->log:Ljava/util/logging/Logger;

    const-string v1, "Received browse action DIDL descriptor, creating tree nodes"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    :try_start_0
    invoke-virtual {p2}, Lorg/fourthline/cling/support/model/DIDLContent;->getContainers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/support/model/container/Container;

    .line 80
    new-instance v3, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback$1;

    invoke-direct {v3, p0, v2}, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback$1;-><init>(Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;Ljava/lang/Object;)V

    .line 96
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p2}, Lorg/fourthline/cling/support/model/DIDLContent;->getItems()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/support/model/item/Item;

    .line 101
    new-instance v2, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback$2;

    invoke-direct {v2, p0, v1}, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback$2;-><init>(Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;Ljava/lang/Object;)V

    .line 107
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 111
    sget-object v1, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating DIDL tree nodes failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 112
    new-instance v1, Lorg/fourthline/cling/model/action/ActionException;

    sget-object v2, Lorg/fourthline/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/fourthline/cling/model/types/ErrorCode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t create tree child nodes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, p2}, Lorg/fourthline/cling/model/action/ActionException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v1}, Lorg/fourthline/cling/model/action/ActionInvocation;->setFailure(Lorg/fourthline/cling/model/action/ActionException;)V

    const/4 p2, 0x0

    .line 115
    invoke-virtual {p0, p1, p2}, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->failure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;)V

    .line 118
    :cond_1
    new-instance p1, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback$3;

    invoke-direct {p1, p0, v0}, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback$3;-><init>(Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;Ljava/util/List;)V

    invoke-static {p1}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected removeChildren()V
    .locals 2

    .line 154
    iget-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->treeNode:Ljavax/swing/tree/DefaultMutableTreeNode;

    invoke-virtual {v0}, Ljavax/swing/tree/DefaultMutableTreeNode;->removeAllChildren()V

    .line 155
    iget-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->treeModel:Ljavax/swing/tree/DefaultTreeModel;

    iget-object v1, p0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->treeNode:Ljavax/swing/tree/DefaultMutableTreeNode;

    invoke-virtual {v0, v1}, Ljavax/swing/tree/DefaultTreeModel;->nodeStructureChanged(Ljavax/swing/tree/TreeNode;)V

    return-void
.end method

.method public updateStatus(Lorg/fourthline/cling/support/contentdirectory/callback/Browse$Status;)V
    .locals 1

    .line 126
    new-instance v0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback$4;

    invoke-direct {v0, p0, p1}, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback$4;-><init>(Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;Lorg/fourthline/cling/support/contentdirectory/callback/Browse$Status;)V

    invoke-static {v0}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract updateStatusUI(Lorg/fourthline/cling/support/contentdirectory/callback/Browse$Status;Ljavax/swing/tree/DefaultMutableTreeNode;Ljavax/swing/tree/DefaultTreeModel;)V
.end method

.method protected updateTreeModel(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavax/swing/tree/DefaultMutableTreeNode;",
            ">;)V"
        }
    .end annotation

    .line 143
    sget-object v0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding nodes to tree: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->removeChildren()V

    .line 148
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/swing/tree/DefaultMutableTreeNode;

    .line 149
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->insertChild(Ljavax/swing/tree/MutableTreeNode;)V

    goto :goto_0

    :cond_0
    return-void
.end method
