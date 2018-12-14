.class Lmaster/flame/danmaku/a/c$2;
.super Lmaster/flame/danmaku/a/i;
.source "DrawHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmaster/flame/danmaku/a/c;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmaster/flame/danmaku/a/c;


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/a/c;Ljava/lang/String;)V
    .locals 0

    .line 423
    iput-object p1, p0, Lmaster/flame/danmaku/a/c$2;->a:Lmaster/flame/danmaku/a/c;

    invoke-direct {p0, p2}, Lmaster/flame/danmaku/a/i;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 426
    invoke-static {}, Lmaster/flame/danmaku/danmaku/c/c;->a()J

    move-result-wide v0

    .line 428
    :goto_0
    invoke-virtual {p0}, Lmaster/flame/danmaku/a/c$2;->b()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lmaster/flame/danmaku/a/c$2;->a:Lmaster/flame/danmaku/a/c;

    invoke-static {v2}, Lmaster/flame/danmaku/a/c;->b(Lmaster/flame/danmaku/a/c;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 429
    invoke-static {}, Lmaster/flame/danmaku/danmaku/c/c;->a()J

    move-result-wide v2

    .line 430
    invoke-static {}, Lmaster/flame/danmaku/danmaku/c/c;->a()J

    move-result-wide v4

    sub-long v6, v4, v0

    .line 431
    iget-object v4, p0, Lmaster/flame/danmaku/a/c$2;->a:Lmaster/flame/danmaku/a/c;

    invoke-static {v4}, Lmaster/flame/danmaku/a/c;->c(Lmaster/flame/danmaku/a/c;)J

    move-result-wide v4

    sub-long v8, v4, v6

    const-wide/16 v4, 0x1

    cmp-long v6, v8, v4

    if-lez v6, :cond_0

    .line 432
    iget-object v6, p0, Lmaster/flame/danmaku/a/c$2;->a:Lmaster/flame/danmaku/a/c;

    invoke-static {v6}, Lmaster/flame/danmaku/a/c;->d(Lmaster/flame/danmaku/a/c;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 433
    invoke-static {v4, v5}, Lmaster/flame/danmaku/danmaku/c/c;->a(J)V

    goto :goto_0

    .line 437
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/a/c$2;->a:Lmaster/flame/danmaku/a/c;

    invoke-static {v0, v2, v3}, Lmaster/flame/danmaku/a/c;->b(Lmaster/flame/danmaku/a/c;J)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-gez v6, :cond_1

    .line 438
    iget-object v4, p0, Lmaster/flame/danmaku/a/c$2;->a:Lmaster/flame/danmaku/a/c;

    invoke-static {v4}, Lmaster/flame/danmaku/a/c;->d(Lmaster/flame/danmaku/a/c;)Z

    move-result v4

    if-nez v4, :cond_1

    const-wide/16 v4, 0x3c

    sub-long v6, v4, v0

    .line 439
    invoke-static {v6, v7}, Lmaster/flame/danmaku/danmaku/c/c;->a(J)V

    goto :goto_1

    .line 442
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/a/c$2;->a:Lmaster/flame/danmaku/a/c;

    invoke-static {v0}, Lmaster/flame/danmaku/a/c;->e(Lmaster/flame/danmaku/a/c;)Lmaster/flame/danmaku/a/g;

    move-result-object v0

    invoke-interface {v0}, Lmaster/flame/danmaku/a/g;->l()J

    move-result-wide v0

    .line 443
    iget-object v4, p0, Lmaster/flame/danmaku/a/c$2;->a:Lmaster/flame/danmaku/a/c;

    invoke-static {v4}, Lmaster/flame/danmaku/a/c;->f(Lmaster/flame/danmaku/a/c;)J

    move-result-wide v4

    cmp-long v6, v0, v4

    if-lez v6, :cond_2

    .line 444
    iget-object v4, p0, Lmaster/flame/danmaku/a/c$2;->a:Lmaster/flame/danmaku/a/c;

    invoke-static {v4}, Lmaster/flame/danmaku/a/c;->g(Lmaster/flame/danmaku/a/c;)Lmaster/flame/danmaku/danmaku/model/f;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lmaster/flame/danmaku/danmaku/model/f;->b(J)J

    .line 445
    iget-object v0, p0, Lmaster/flame/danmaku/a/c$2;->a:Lmaster/flame/danmaku/a/c;

    invoke-static {v0}, Lmaster/flame/danmaku/a/c;->h(Lmaster/flame/danmaku/a/c;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 447
    :cond_2
    iget-object v0, p0, Lmaster/flame/danmaku/a/c$2;->a:Lmaster/flame/danmaku/a/c;

    invoke-static {v0}, Lmaster/flame/danmaku/a/c;->i(Lmaster/flame/danmaku/a/c;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 448
    iget-object v0, p0, Lmaster/flame/danmaku/a/c$2;->a:Lmaster/flame/danmaku/a/c;

    const-wide/32 v4, 0x989680

    invoke-static {v0, v4, v5}, Lmaster/flame/danmaku/a/c;->c(Lmaster/flame/danmaku/a/c;J)V

    goto :goto_1

    .line 449
    :cond_3
    iget-object v0, p0, Lmaster/flame/danmaku/a/c$2;->a:Lmaster/flame/danmaku/a/c;

    invoke-static {v0}, Lmaster/flame/danmaku/a/c;->j(Lmaster/flame/danmaku/a/c;)Lmaster/flame/danmaku/danmaku/b/a$b;

    move-result-object v0

    iget-boolean v0, v0, Lmaster/flame/danmaku/danmaku/b/a$b;->p:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmaster/flame/danmaku/a/c$2;->a:Lmaster/flame/danmaku/a/c;

    invoke-static {v0}, Lmaster/flame/danmaku/a/c;->k(Lmaster/flame/danmaku/a/c;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 450
    iget-object v0, p0, Lmaster/flame/danmaku/a/c$2;->a:Lmaster/flame/danmaku/a/c;

    invoke-static {v0}, Lmaster/flame/danmaku/a/c;->j(Lmaster/flame/danmaku/a/c;)Lmaster/flame/danmaku/danmaku/b/a$b;

    move-result-object v0

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/b/a$b;->o:J

    iget-object v4, p0, Lmaster/flame/danmaku/a/c$2;->a:Lmaster/flame/danmaku/a/c;

    invoke-static {v4}, Lmaster/flame/danmaku/a/c;->g(Lmaster/flame/danmaku/a/c;)Lmaster/flame/danmaku/danmaku/model/f;

    move-result-object v4

    iget-wide v4, v4, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    sub-long v6, v0, v4

    const-wide/16 v0, 0x1f4

    cmp-long v4, v6, v0

    if-lez v4, :cond_4

    .line 452
    iget-object v0, p0, Lmaster/flame/danmaku/a/c$2;->a:Lmaster/flame/danmaku/a/c;

    invoke-static {v0}, Lmaster/flame/danmaku/a/c;->l(Lmaster/flame/danmaku/a/c;)V

    .line 453
    iget-object v0, p0, Lmaster/flame/danmaku/a/c$2;->a:Lmaster/flame/danmaku/a/c;

    const-wide/16 v4, 0xa

    sub-long v8, v6, v4

    invoke-static {v0, v8, v9}, Lmaster/flame/danmaku/a/c;->c(Lmaster/flame/danmaku/a/c;J)V

    :cond_4
    :goto_1
    move-wide v0, v2

    goto/16 :goto_0

    :cond_5
    return-void
.end method
