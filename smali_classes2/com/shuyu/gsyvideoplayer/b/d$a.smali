.class Lcom/shuyu/gsyvideoplayer/b/d$a;
.super Ljava/lang/Object;
.source "ProxyCacheManager.java"

# interfaces
.implements Lcom/danikula/videocache/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shuyu/gsyvideoplayer/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/shuyu/gsyvideoplayer/b/d;


# direct methods
.method private constructor <init>(Lcom/shuyu/gsyvideoplayer/b/d;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/b/d$a;->a:Lcom/shuyu/gsyvideoplayer/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/shuyu/gsyvideoplayer/b/d;Lcom/shuyu/gsyvideoplayer/b/d$1;)V
    .locals 0

    .line 174
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/b/d$a;-><init>(Lcom/shuyu/gsyvideoplayer/b/d;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/b/d$a;->a:Lcom/shuyu/gsyvideoplayer/b/d;

    iget-object p1, p1, Lcom/shuyu/gsyvideoplayer/b/d;->b:Ljava/util/Map;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/b/d$a;->a:Lcom/shuyu/gsyvideoplayer/b/d;

    iget-object p1, p1, Lcom/shuyu/gsyvideoplayer/b/d;->b:Ljava/util/Map;

    :goto_0
    return-object p1
.end method
