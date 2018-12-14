.class Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$2;
.super Ljava/lang/Object;
.source "ListVideoUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->resolveMaterialAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;


# direct methods
.method constructor <init>(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$2;->this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$2;->this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->access$000(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0}, Lcom/transitionseverywhere/h;->a(Landroid/view/ViewGroup;)V

    .line 252
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$2;->this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$2;->this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;

    invoke-static {v1}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->access$100(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->access$200(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    .line 253
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$2;->this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;

    const/16 v1, 0x258

    invoke-static {v0, v1}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->access$300(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;I)V

    return-void
.end method
