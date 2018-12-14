.class Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback$4;
.super Ljava/lang/Object;
.source "ContentBrowseActionCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->updateStatus(Lorg/fourthline/cling/support/contentdirectory/callback/Browse$Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;

.field final synthetic val$status:Lorg/fourthline/cling/support/contentdirectory/callback/Browse$Status;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;Lorg/fourthline/cling/support/contentdirectory/callback/Browse$Status;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback$4;->this$0:Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;

    iput-object p2, p0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback$4;->val$status:Lorg/fourthline/cling/support/contentdirectory/callback/Browse$Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 128
    iget-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback$4;->this$0:Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;

    iget-object v1, p0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback$4;->val$status:Lorg/fourthline/cling/support/contentdirectory/callback/Browse$Status;

    iget-object v2, p0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback$4;->this$0:Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;

    iget-object v2, v2, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->treeNode:Ljavax/swing/tree/DefaultMutableTreeNode;

    iget-object v3, p0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback$4;->this$0:Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;

    iget-object v3, v3, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->treeModel:Ljavax/swing/tree/DefaultTreeModel;

    invoke-virtual {v0, v1, v2, v3}, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->updateStatusUI(Lorg/fourthline/cling/support/contentdirectory/callback/Browse$Status;Ljavax/swing/tree/DefaultMutableTreeNode;Ljavax/swing/tree/DefaultTreeModel;)V

    return-void
.end method
