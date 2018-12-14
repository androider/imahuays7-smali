.class public Lorg/fourthline/cling/support/contentdirectory/ui/ContentTreeExpandListener;
.super Ljava/lang/Object;
.source "ContentTreeExpandListener.java"

# interfaces
.implements Ljavax/swing/event/TreeWillExpandListener;


# instance fields
.field protected final actionCreator:Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallbackCreator;

.field protected final controlPoint:Lorg/fourthline/cling/controlpoint/ControlPoint;

.field protected final service:Lorg/fourthline/cling/model/meta/Service;

.field protected final treeModel:Ljavax/swing/tree/DefaultTreeModel;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/controlpoint/ControlPoint;Lorg/fourthline/cling/model/meta/Service;Ljavax/swing/tree/DefaultTreeModel;Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallbackCreator;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTreeExpandListener;->controlPoint:Lorg/fourthline/cling/controlpoint/ControlPoint;

    .line 43
    iput-object p2, p0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTreeExpandListener;->service:Lorg/fourthline/cling/model/meta/Service;

    .line 44
    iput-object p3, p0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTreeExpandListener;->treeModel:Ljavax/swing/tree/DefaultTreeModel;

    .line 45
    iput-object p4, p0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTreeExpandListener;->actionCreator:Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallbackCreator;

    return-void
.end method


# virtual methods
.method public treeWillCollapse(Ljavax/swing/event/TreeExpansionEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/swing/tree/ExpandVetoException;
        }
    .end annotation

    return-void
.end method

.method public treeWillExpand(Ljavax/swing/event/TreeExpansionEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/swing/tree/ExpandVetoException;
        }
    .end annotation

    .line 49
    invoke-virtual {p1}, Ljavax/swing/event/TreeExpansionEvent;->getPath()Ljavax/swing/tree/TreePath;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/swing/tree/TreePath;->getLastPathComponent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/swing/tree/DefaultMutableTreeNode;

    .line 52
    invoke-virtual {p1}, Ljavax/swing/tree/DefaultMutableTreeNode;->removeAllChildren()V

    .line 53
    iget-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTreeExpandListener;->treeModel:Ljavax/swing/tree/DefaultTreeModel;

    invoke-virtual {v0, p1}, Ljavax/swing/tree/DefaultTreeModel;->nodeStructureChanged(Ljavax/swing/tree/TreeNode;)V

    .line 56
    iget-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTreeExpandListener;->actionCreator:Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallbackCreator;

    iget-object v1, p0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTreeExpandListener;->service:Lorg/fourthline/cling/model/meta/Service;

    iget-object v2, p0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTreeExpandListener;->treeModel:Ljavax/swing/tree/DefaultTreeModel;

    .line 57
    invoke-interface {v0, v1, v2, p1}, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallbackCreator;->createContentBrowseActionCallback(Lorg/fourthline/cling/model/meta/Service;Ljavax/swing/tree/DefaultTreeModel;Ljavax/swing/tree/DefaultMutableTreeNode;)Lorg/fourthline/cling/controlpoint/ActionCallback;

    move-result-object p1

    .line 60
    iget-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTreeExpandListener;->controlPoint:Lorg/fourthline/cling/controlpoint/ControlPoint;

    invoke-interface {v0, p1}, Lorg/fourthline/cling/controlpoint/ControlPoint;->execute(Lorg/fourthline/cling/controlpoint/ActionCallback;)Ljava/util/concurrent/Future;

    return-void
.end method
