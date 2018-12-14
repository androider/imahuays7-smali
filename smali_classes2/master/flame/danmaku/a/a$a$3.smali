.class Lmaster/flame/danmaku/a/a$a$3;
.super Lmaster/flame/danmaku/danmaku/model/l$c;
.source "CacheManagingDrawTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmaster/flame/danmaku/a/a$a;->l()V
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
.field final synthetic a:Lmaster/flame/danmaku/a/a$a;


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/a/a$a;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lmaster/flame/danmaku/a/a$a$3;->a:Lmaster/flame/danmaku/a/a$a;

    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/l$c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 395
    check-cast p1, Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/a/a$a$3;->a(Lmaster/flame/danmaku/danmaku/model/d;)I

    move-result p1

    return p1
.end method

.method public a(Lmaster/flame/danmaku/danmaku/model/d;)I
    .locals 7

    .line 398
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->f()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 399
    iget-object v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->w:Lmaster/flame/danmaku/danmaku/model/n;

    .line 400
    iget-object v2, p0, Lmaster/flame/danmaku/a/a$a$3;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v2, v2, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v2, v2, Lmaster/flame/danmaku/a/a;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v2, v2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->u:Lmaster/flame/danmaku/danmaku/model/android/c;

    iget-wide v2, v2, Lmaster/flame/danmaku/danmaku/model/android/c;->f:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    const/4 v2, 0x0

    if-nez v6, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/n;->f()Z

    move-result v3

    if-nez v3, :cond_0

    .line 401
    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/n;->c()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lmaster/flame/danmaku/a/a$a$3;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v3, v3, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    invoke-static {v3}, Lmaster/flame/danmaku/a/a;->b(Lmaster/flame/danmaku/a/a;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    iget-object v3, p0, Lmaster/flame/danmaku/a/a$a$3;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v3, v3, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v3, v3, Lmaster/flame/danmaku/a/a;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v3, v3, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->u:Lmaster/flame/danmaku/danmaku/model/android/c;

    iget v3, v3, Lmaster/flame/danmaku/danmaku/model/android/c;->g:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    return v2

    .line 406
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a$3;->a:Lmaster/flame/danmaku/a/a$a;

    invoke-static {v0}, Lmaster/flame/danmaku/a/a$a;->a(Lmaster/flame/danmaku/a/a$a;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 407
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a$3;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    invoke-static {v0}, Lmaster/flame/danmaku/a/a;->a(Lmaster/flame/danmaku/a/a;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 409
    :try_start_0
    iget-object v3, p0, Lmaster/flame/danmaku/a/a$a$3;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v3, v3, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    invoke-static {v3}, Lmaster/flame/danmaku/a/a;->a(Lmaster/flame/danmaku/a/a;)Ljava/lang/Object;

    move-result-object v3

    const-wide/16 v4, 0x1e

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    :try_start_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 411
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 412
    monitor-exit v0

    return v1

    .line 414
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 416
    :cond_1
    :goto_1
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a$3;->a:Lmaster/flame/danmaku/a/a$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, p1, v1}, Lmaster/flame/danmaku/a/a$a;->a(ZLmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/d;)V

    const/4 p1, 0x2

    return p1

    :cond_2
    return v1
.end method
