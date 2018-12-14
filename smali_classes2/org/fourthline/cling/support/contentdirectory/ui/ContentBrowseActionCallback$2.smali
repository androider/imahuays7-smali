.class Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback$2;
.super Ljavax/swing/tree/DefaultMutableTreeNode;
.source "ContentBrowseActionCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->received(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/support/model/DIDLContent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;Ljava/lang/Object;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback$2;->this$0:Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;

    invoke-direct {p0, p2}, Ljavax/swing/tree/DefaultMutableTreeNode;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public isLeaf()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
