.class Lmaster/flame/danmaku/a/e$6;
.super Lmaster/flame/danmaku/danmaku/model/l$c;
.source "DrawTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmaster/flame/danmaku/a/e;->a(JJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmaster/flame/danmaku/danmaku/model/l$c<",
        "Lmaster/flame/danmaku/danmaku/model/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lmaster/flame/danmaku/a/e;


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/a/e;J)V
    .locals 0

    .line 430
    iput-object p1, p0, Lmaster/flame/danmaku/a/e$6;->b:Lmaster/flame/danmaku/a/e;

    iput-wide p2, p0, Lmaster/flame/danmaku/a/e$6;->a:J

    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/l$c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 430
    check-cast p1, Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/a/e$6;->a(Lmaster/flame/danmaku/danmaku/model/d;)I

    move-result p1

    return p1
.end method

.method public a(Lmaster/flame/danmaku/danmaku/model/d;)I
    .locals 8

    .line 433
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->g()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    return v1

    .line 436
    :cond_0
    iget-wide v2, p0, Lmaster/flame/danmaku/a/e$6;->a:J

    iget-wide v4, p1, Lmaster/flame/danmaku/danmaku/model/d;->a:J

    add-long v6, v2, v4

    invoke-virtual {p1, v6, v7}, Lmaster/flame/danmaku/danmaku/model/d;->c(J)V

    .line 437
    iget-wide v2, p1, Lmaster/flame/danmaku/danmaku/model/d;->a:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
