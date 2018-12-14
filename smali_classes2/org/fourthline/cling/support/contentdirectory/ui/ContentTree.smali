.class public abstract Lorg/fourthline/cling/support/contentdirectory/ui/ContentTree;
.super Ljavax/swing/JTree;
.source "ContentTree.java"

# interfaces
.implements Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallbackCreator;


# instance fields
.field protected rootContainer:Lorg/fourthline/cling/support/model/container/Container;

.field protected rootNode:Ljavax/swing/tree/DefaultMutableTreeNode;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljavax/swing/JTree;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/controlpoint/ControlPoint;Lorg/fourthline/cling/model/meta/Service;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljavax/swing/JTree;-><init>()V

    .line 47
    invoke-virtual {p0, p1, p2}, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTree;->init(Lorg/fourthline/cling/controlpoint/ControlPoint;Lorg/fourthline/cling/model/meta/Service;)V

    return-void
.end method


# virtual methods
.method protected createContainerTreeCellRenderer()Ljavax/swing/tree/DefaultTreeCellRenderer;
    .locals 1

    .line 95
    new-instance v0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTreeCellRenderer;

    invoke-direct {v0}, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTreeCellRenderer;-><init>()V

    return-object v0
.end method

.method protected createContainerTreeExpandListener(Lorg/fourthline/cling/controlpoint/ControlPoint;Lorg/fourthline/cling/model/meta/Service;Ljavax/swing/tree/DefaultTreeModel;)Ljavax/swing/event/TreeWillExpandListener;
    .locals 1

    .line 91
    new-instance v0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTreeExpandListener;

    invoke-direct {v0, p1, p2, p3, p0}, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTreeExpandListener;-><init>(Lorg/fourthline/cling/controlpoint/ControlPoint;Lorg/fourthline/cling/model/meta/Service;Ljavax/swing/tree/DefaultTreeModel;Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallbackCreator;)V

    return-object v0
.end method

.method public createContentBrowseActionCallback(Lorg/fourthline/cling/model/meta/Service;Ljavax/swing/tree/DefaultTreeModel;Ljavax/swing/tree/DefaultMutableTreeNode;)Lorg/fourthline/cling/controlpoint/ActionCallback;
    .locals 1

    .line 102
    new-instance v0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTree$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTree$2;-><init>(Lorg/fourthline/cling/support/contentdirectory/ui/ContentTree;Lorg/fourthline/cling/model/meta/Service;Ljavax/swing/tree/DefaultTreeModel;Ljavax/swing/tree/DefaultMutableTreeNode;)V

    return-object v0
.end method

.method protected createRootContainer(Lorg/fourthline/cling/model/meta/Service;)Lorg/fourthline/cling/support/model/container/Container;
    .locals 3

    .line 82
    new-instance v0, Lorg/fourthline/cling/support/model/container/Container;

    invoke-direct {v0}, Lorg/fourthline/cling/support/model/container/Container;-><init>()V

    const-string v1, "0"

    .line 83
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/container/Container;->setId(Ljava/lang/String;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content Directory on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Service;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Device;->getDisplayString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/support/model/container/Container;->setTitle(Ljava/lang/String;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-object v0
.end method

.method public abstract failure(Ljava/lang/String;)V
.end method

.method public getRootContainer()Lorg/fourthline/cling/support/model/container/Container;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTree;->rootContainer:Lorg/fourthline/cling/support/model/container/Container;

    return-object v0
.end method

.method public getRootNode()Ljavax/swing/tree/DefaultMutableTreeNode;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTree;->rootNode:Ljavax/swing/tree/DefaultMutableTreeNode;

    return-object v0
.end method

.method public getSelectedNode()Ljavax/swing/tree/DefaultMutableTreeNode;
    .locals 1

    .line 78
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTree;->getLastSelectedPathComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/swing/tree/DefaultMutableTreeNode;

    return-object v0
.end method

.method public init(Lorg/fourthline/cling/controlpoint/ControlPoint;Lorg/fourthline/cling/model/meta/Service;)V
    .locals 3

    .line 51
    invoke-virtual {p0, p2}, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTree;->createRootContainer(Lorg/fourthline/cling/model/meta/Service;)Lorg/fourthline/cling/support/model/container/Container;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTree;->rootContainer:Lorg/fourthline/cling/support/model/container/Container;

    .line 52
    new-instance v0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTree$1;

    iget-object v1, p0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTree;->rootContainer:Lorg/fourthline/cling/support/model/container/Container;

    invoke-direct {v0, p0, v1}, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTree$1;-><init>(Lorg/fourthline/cling/support/contentdirectory/ui/ContentTree;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTree;->rootNode:Ljavax/swing/tree/DefaultMutableTreeNode;

    .line 59
    new-instance v0, Ljavax/swing/tree/DefaultTreeModel;

    iget-object v1, p0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTree;->rootNode:Ljavax/swing/tree/DefaultMutableTreeNode;

    invoke-direct {v0, v1}, Ljavax/swing/tree/DefaultTreeModel;-><init>(Ljavax/swing/tree/TreeNode;)V

    .line 60
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTree;->setModel(Ljavax/swing/tree/TreeModel;)V

    .line 62
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTree;->getSelectionModel()Ljavax/swing/tree/TreeSelectionModel;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljavax/swing/tree/TreeSelectionModel;->setSelectionMode(I)V

    .line 63
    invoke-virtual {p0, p1, p2, v0}, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTree;->createContainerTreeExpandListener(Lorg/fourthline/cling/controlpoint/ControlPoint;Lorg/fourthline/cling/model/meta/Service;Ljavax/swing/tree/DefaultTreeModel;)Ljavax/swing/event/TreeWillExpandListener;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTree;->addTreeWillExpandListener(Ljavax/swing/event/TreeWillExpandListener;)V

    .line 64
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTree;->createContainerTreeCellRenderer()Ljavax/swing/tree/DefaultTreeCellRenderer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTree;->setCellRenderer(Ljavax/swing/tree/TreeCellRenderer;)V

    .line 66
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTree;->getRootNode()Ljavax/swing/tree/DefaultMutableTreeNode;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTree;->createContentBrowseActionCallback(Lorg/fourthline/cling/model/meta/Service;Ljavax/swing/tree/DefaultTreeModel;Ljavax/swing/tree/DefaultMutableTreeNode;)Lorg/fourthline/cling/controlpoint/ActionCallback;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/fourthline/cling/controlpoint/ControlPoint;->execute(Lorg/fourthline/cling/controlpoint/ActionCallback;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public updateStatus(Lorg/fourthline/cling/support/contentdirectory/callback/Browse$Status;Ljavax/swing/tree/DefaultMutableTreeNode;Ljavax/swing/tree/DefaultTreeModel;)V
    .locals 2

    .line 114
    sget-object v0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTree$3;->$SwitchMap$org$fourthline$cling$support$contentdirectory$callback$Browse$Status:[I

    invoke-virtual {p1}, Lorg/fourthline/cling/support/contentdirectory/callback/Browse$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 117
    :pswitch_0
    invoke-virtual {p2}, Ljavax/swing/tree/DefaultMutableTreeNode;->removeAllChildren()V

    .line 118
    invoke-virtual {p2}, Ljavax/swing/tree/DefaultMutableTreeNode;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljavax/swing/tree/DefaultMutableTreeNode;->getChildCount()I

    move-result v0

    .line 119
    :goto_0
    new-instance v1, Ljavax/swing/tree/DefaultMutableTreeNode;

    invoke-virtual {p1}, Lorg/fourthline/cling/support/contentdirectory/callback/Browse$Status;->getDefaultMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljavax/swing/tree/DefaultMutableTreeNode;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p3, v1, p2, v0}, Ljavax/swing/tree/DefaultTreeModel;->insertNodeInto(Ljavax/swing/tree/MutableTreeNode;Ljavax/swing/tree/MutableTreeNode;I)V

    .line 120
    invoke-virtual {p3, p2}, Ljavax/swing/tree/DefaultTreeModel;->nodeStructureChanged(Ljavax/swing/tree/TreeNode;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
