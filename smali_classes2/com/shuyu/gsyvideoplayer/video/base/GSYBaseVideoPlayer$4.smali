.class Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$4;
.super Ljava/lang/Object;
.source "GSYBaseVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->backToNormal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

.field final synthetic val$gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

.field final synthetic val$oldF:Landroid/view/View;

.field final synthetic val$vp:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Landroid/view/View;Landroid/view/ViewGroup;Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$4;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    iput-object p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$4;->val$oldF:Landroid/view/View;

    iput-object p3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$4;->val$vp:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$4;->val$gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 437
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$4;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$4;->val$oldF:Landroid/view/View;

    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$4;->val$vp:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$4;->val$gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    invoke-virtual {v0, v1, v2, v3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->resolveNormalVideoShow(Landroid/view/View;Landroid/view/ViewGroup;Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;)V

    return-void
.end method
