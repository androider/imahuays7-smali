.class Lcom/mh/movie/core/mvp/ui/activity/MyCommentActivity$2;
.super Ljava/lang/Object;
.source "MyCommentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/MyCommentActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/MyCommentActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/MyCommentActivity;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyCommentActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/MyCommentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 150
    new-instance v2, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;

    invoke-direct {v2}, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;-><init>()V

    .line 151
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyCommentActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/MyCommentActivity;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/ui/activity/MyCommentActivity;->wrapper:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-virtual {v1, v0}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->setContent(Ljava/util/List;)V

    return-void
.end method
