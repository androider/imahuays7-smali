.class Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4;
.super Ljava/lang/Object;
.source "ListVideoUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->resolveMaterialToNormal(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;

.field final synthetic val$gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;


# direct methods
.method constructor <init>(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4;->this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;

    iput-object p2, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4;->val$gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 314
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4;->this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->access$000(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0}, Lcom/transitionseverywhere/h;->a(Landroid/view/ViewGroup;)V

    .line 315
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4;->val$gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 316
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4;->this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;

    invoke-static {v1}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->access$1600(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4;->this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;

    invoke-static {v3}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->access$1600(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)[I

    move-result-object v3

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v0, v1, v3, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 317
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4;->this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;

    invoke-static {v1}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->access$1700(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)[I

    move-result-object v1

    aget v1, v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 318
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4;->this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;

    invoke-static {v1}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->access$1700(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)[I

    move-result-object v1

    aget v1, v1, v4

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 320
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 321
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4;->val$gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    invoke-virtual {v1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 322
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4;->this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->access$1900(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4$1;

    invoke-direct {v1, p0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4$1;-><init>(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
