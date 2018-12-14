.class Lorg/fourthline/cling/support/contentdirectory/ui/ContentTree$2;
.super Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;
.source "ContentTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/support/contentdirectory/ui/ContentTree;->createContentBrowseActionCallback(Lorg/fourthline/cling/model/meta/Service;Ljavax/swing/tree/DefaultTreeModel;Ljavax/swing/tree/DefaultMutableTreeNode;)Lorg/fourthline/cling/controlpoint/ActionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/support/contentdirectory/ui/ContentTree;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/support/contentdirectory/ui/ContentTree;Lorg/fourthline/cling/model/meta/Service;Ljavax/swing/tree/DefaultTreeModel;Ljavax/swing/tree/DefaultMutableTreeNode;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTree$2;->this$0:Lorg/fourthline/cling/support/contentdirectory/ui/ContentTree;

    invoke-direct {p0, p2, p3, p4}, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;-><init>(Lorg/fourthline/cling/model/meta/Service;Ljavax/swing/tree/DefaultTreeModel;Ljavax/swing/tree/DefaultMutableTreeNode;)V

    return-void
.end method


# virtual methods
.method public failureUI(Ljava/lang/String;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTree$2;->this$0:Lorg/fourthline/cling/support/contentdirectory/ui/ContentTree;

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTree;->failure(Ljava/lang/String;)V

    return-void
.end method

.method public updateStatusUI(Lorg/fourthline/cling/support/contentdirectory/callback/Browse$Status;Ljavax/swing/tree/DefaultMutableTreeNode;Ljavax/swing/tree/DefaultTreeModel;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTree$2;->this$0:Lorg/fourthline/cling/support/contentdirectory/ui/ContentTree;

    invoke-virtual {v0, p1, p2, p3}, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTree;->updateStatus(Lorg/fourthline/cling/support/contentdirectory/callback/Browse$Status;Ljavax/swing/tree/DefaultMutableTreeNode;Ljavax/swing/tree/DefaultTreeModel;)V

    return-void
.end method
