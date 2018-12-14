.class Lmaster/flame/danmaku/a/e$3;
.super Lmaster/flame/danmaku/danmaku/model/l$c;
.source "DrawTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmaster/flame/danmaku/a/e;->b(I)V
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
.field a:J

.field final synthetic b:I

.field final synthetic c:Lmaster/flame/danmaku/a/e;


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/a/e;I)V
    .locals 0

    .line 203
    iput-object p1, p0, Lmaster/flame/danmaku/a/e$3;->c:Lmaster/flame/danmaku/a/e;

    iput p2, p0, Lmaster/flame/danmaku/a/e$3;->b:I

    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/l$c;-><init>()V

    .line 204
    invoke-static {}, Lmaster/flame/danmaku/danmaku/c/c;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lmaster/flame/danmaku/a/e$3;->a:J

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 203
    check-cast p1, Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/a/e$3;->a(Lmaster/flame/danmaku/danmaku/model/d;)I

    move-result p1

    return p1
.end method

.method public a(Lmaster/flame/danmaku/danmaku/model/d;)I
    .locals 7

    .line 208
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->f()Z

    move-result v0

    .line 209
    invoke-static {}, Lmaster/flame/danmaku/danmaku/c/c;->a()J

    move-result-wide v1

    iget-wide v3, p0, Lmaster/flame/danmaku/a/e$3;->a:J

    sub-long v5, v1, v3

    iget v1, p0, Lmaster/flame/danmaku/a/e$3;->b:I

    int-to-long v1, v1

    cmp-long v3, v5, v1

    const/4 v1, 0x1

    if-lez v3, :cond_0

    return v1

    :cond_0
    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lmaster/flame/danmaku/a/e$3;->c:Lmaster/flame/danmaku/a/e;

    iget-object v0, v0, Lmaster/flame/danmaku/a/e;->c:Lmaster/flame/danmaku/danmaku/model/l;

    invoke-interface {v0, p1}, Lmaster/flame/danmaku/danmaku/model/l;->b(Lmaster/flame/danmaku/danmaku/model/d;)Z

    .line 214
    iget-object v0, p0, Lmaster/flame/danmaku/a/e$3;->c:Lmaster/flame/danmaku/a/e;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/a/e;->b(Lmaster/flame/danmaku/danmaku/model/d;)V

    const/4 p1, 0x2

    return p1

    :cond_1
    return v1
.end method
