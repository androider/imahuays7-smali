.class Lcom/shuyu/gsyvideoplayer/c$8;
.super Ljava/lang/Object;
.source "GSYVideoBaseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shuyu/gsyvideoplayer/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/shuyu/gsyvideoplayer/c;


# direct methods
.method constructor <init>(Lcom/shuyu/gsyvideoplayer/c;)V
    .locals 0

    .line 677
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/c$8;->a:Lcom/shuyu/gsyvideoplayer/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 680
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c$8;->a:Lcom/shuyu/gsyvideoplayer/c;

    iget-object v0, v0, Lcom/shuyu/gsyvideoplayer/c;->h:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    const-string v0, "time out for error listener"

    .line 681
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    .line 682
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c$8;->a:Lcom/shuyu/gsyvideoplayer/c;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/c;->listener()Lcom/shuyu/gsyvideoplayer/c/a;

    move-result-object v0

    const/16 v1, -0xc0

    invoke-interface {v0, v1, v1}, Lcom/shuyu/gsyvideoplayer/c/a;->onError(II)V

    :cond_0
    return-void
.end method
