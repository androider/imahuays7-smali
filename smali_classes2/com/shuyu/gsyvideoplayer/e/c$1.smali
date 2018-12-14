.class Lcom/shuyu/gsyvideoplayer/e/c$1;
.super Ljava/lang/Object;
.source "IjkPlayerManager.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnNativeInvokeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shuyu/gsyvideoplayer/e/c;->a(Landroid/content/Context;Landroid/os/Message;Ljava/util/List;Lcom/shuyu/gsyvideoplayer/b/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/shuyu/gsyvideoplayer/e/c;


# direct methods
.method constructor <init>(Lcom/shuyu/gsyvideoplayer/e/c;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/e/c$1;->a:Lcom/shuyu/gsyvideoplayer/e/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNativeInvoke(ILandroid/os/Bundle;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
