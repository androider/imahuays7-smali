.class Lcom/mh/movie/core/mvp/ui/activity/MyCommentActivity$1;
.super Ljava/lang/Object;
.source "MyCommentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/MyCommentActivity;->e()V
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

    .line 119
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyCommentActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/MyCommentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 124
    :goto_0
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/MyCommentActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/MyCommentActivity;

    iget v2, v2, Lcom/mh/movie/core/mvp/ui/activity/MyCommentActivity;->i:I

    if-ge v1, v2, :cond_0

    .line 126
    new-instance v2, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;

    invoke-direct {v2}, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;-><init>()V

    .line 127
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyCommentActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/MyCommentActivity;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/ui/activity/MyCommentActivity;->wrapper:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-virtual {v1, v0}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->a(Ljava/util/List;)V

    .line 133
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyCommentActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/MyCommentActivity;

    iget v0, v0, Lcom/mh/movie/core/mvp/ui/activity/MyCommentActivity;->i:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 134
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyCommentActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/MyCommentActivity;

    iget v1, v0, Lcom/mh/movie/core/mvp/ui/activity/MyCommentActivity;->i:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/mh/movie/core/mvp/ui/activity/MyCommentActivity;->i:I

    goto :goto_1

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyCommentActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/MyCommentActivity;

    iget v0, v0, Lcom/mh/movie/core/mvp/ui/activity/MyCommentActivity;->i:I

    if-ge v0, v1, :cond_2

    .line 136
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyCommentActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/MyCommentActivity;

    iget v1, v0, Lcom/mh/movie/core/mvp/ui/activity/MyCommentActivity;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/mh/movie/core/mvp/ui/activity/MyCommentActivity;->i:I

    :cond_2
    :goto_1
    return-void
.end method
