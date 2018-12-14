.class Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4$1;
.super Ljava/lang/Object;
.source "ListVideoUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4;


# direct methods
.method constructor <init>(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4$1;->this$1:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4$1;->this$1:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4;

    iget-object v0, v0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4;->this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->access$1800(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)V

    return-void
.end method
