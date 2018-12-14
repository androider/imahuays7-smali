.class Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$7;
.super Ljava/lang/Object;
.source "MHVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->C()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;)V
    .locals 0

    .line 1084
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$7;->a:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1087
    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->K:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/b;->a(I)Lcom/mh/movie/core/mvp/model/entity/response/AdListResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->K:Ljava/lang/Integer;

    .line 1088
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/b;->a(I)Lcom/mh/movie/core/mvp/model/entity/response/AdListResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/AdListResponse;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1089
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$7;->a:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$7;->a:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mRlAdOne:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
