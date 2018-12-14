.class public Lcom/shuyu/gsyvideoplayer/utils/AntiShake;
.super Ljava/lang/Object;
.source "AntiShake.java"


# static fields
.field private static queue:Lcom/shuyu/gsyvideoplayer/utils/LimitQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shuyu/gsyvideoplayer/utils/LimitQueue<",
            "Lcom/shuyu/gsyvideoplayer/utils/OneClick;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5
    new-instance v0, Lcom/shuyu/gsyvideoplayer/utils/LimitQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/shuyu/gsyvideoplayer/utils/LimitQueue;-><init>(I)V

    sput-object v0, Lcom/shuyu/gsyvideoplayer/utils/AntiShake;->queue:Lcom/shuyu/gsyvideoplayer/utils/LimitQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check(Ljava/lang/Object;)Z
    .locals 3

    if-nez p0, :cond_0

    .line 10
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    const/4 v0, 0x2

    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 14
    :goto_0
    sget-object v0, Lcom/shuyu/gsyvideoplayer/utils/AntiShake;->queue:Lcom/shuyu/gsyvideoplayer/utils/LimitQueue;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/utils/LimitQueue;->getArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shuyu/gsyvideoplayer/utils/OneClick;

    .line 15
    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/utils/OneClick;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 16
    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/utils/OneClick;->check()Z

    move-result p0

    return p0

    .line 19
    :cond_2
    new-instance v0, Lcom/shuyu/gsyvideoplayer/utils/OneClick;

    invoke-direct {v0, p0}, Lcom/shuyu/gsyvideoplayer/utils/OneClick;-><init>(Ljava/lang/String;)V

    .line 20
    sget-object p0, Lcom/shuyu/gsyvideoplayer/utils/AntiShake;->queue:Lcom/shuyu/gsyvideoplayer/utils/LimitQueue;

    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/utils/LimitQueue;->offer(Ljava/lang/Object;)V

    .line 21
    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/utils/OneClick;->check()Z

    move-result p0

    return p0
.end method
