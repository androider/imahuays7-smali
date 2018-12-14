.class Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback$3;
.super Ljava/lang/Object;
.source "ContentBrowseActionCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$childNodes:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;Ljava/util/List;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback$3;->this$0:Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;

    iput-object p2, p0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback$3;->val$childNodes:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 120
    iget-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback$3;->this$0:Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;

    iget-object v1, p0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback$3;->val$childNodes:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->updateTreeModel(Ljava/util/List;)V

    return-void
.end method
