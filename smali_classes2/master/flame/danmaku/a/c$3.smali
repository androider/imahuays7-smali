.class Lmaster/flame/danmaku/a/c$3;
.super Ljava/lang/Object;
.source "DrawHandler.java"

# interfaces
.implements Lmaster/flame/danmaku/a/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmaster/flame/danmaku/a/c;->a(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lmaster/flame/danmaku/a/c;


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/a/c;Ljava/lang/Runnable;)V
    .locals 0

    .line 568
    iput-object p1, p0, Lmaster/flame/danmaku/a/c$3;->b:Lmaster/flame/danmaku/a/c;

    iput-object p2, p0, Lmaster/flame/danmaku/a/c$3;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 571
    iget-object v0, p0, Lmaster/flame/danmaku/a/c$3;->b:Lmaster/flame/danmaku/a/c;

    invoke-static {v0}, Lmaster/flame/danmaku/a/c;->m(Lmaster/flame/danmaku/a/c;)V

    .line 572
    iget-object v0, p0, Lmaster/flame/danmaku/a/c$3;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public a(Lmaster/flame/danmaku/danmaku/model/d;)V
    .locals 6

    .line 577
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 580
    :cond_0
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->s()J

    move-result-wide v0

    iget-object p1, p0, Lmaster/flame/danmaku/a/c$3;->b:Lmaster/flame/danmaku/a/c;

    invoke-virtual {p1}, Lmaster/flame/danmaku/a/c;->h()J

    move-result-wide v2

    sub-long v4, v0, v2

    .line 581
    iget-object p1, p0, Lmaster/flame/danmaku/a/c$3;->b:Lmaster/flame/danmaku/a/c;

    invoke-static {p1}, Lmaster/flame/danmaku/a/c;->n(Lmaster/flame/danmaku/a/c;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object p1

    iget-object p1, p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget-wide v0, p1, Lmaster/flame/danmaku/danmaku/model/android/d;->d:J

    cmp-long p1, v4, v0

    if-gez p1, :cond_2

    iget-object p1, p0, Lmaster/flame/danmaku/a/c$3;->b:Lmaster/flame/danmaku/a/c;

    invoke-static {p1}, Lmaster/flame/danmaku/a/c;->o(Lmaster/flame/danmaku/a/c;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lmaster/flame/danmaku/a/c$3;->b:Lmaster/flame/danmaku/a/c;

    invoke-static {p1}, Lmaster/flame/danmaku/a/c;->j(Lmaster/flame/danmaku/a/c;)Lmaster/flame/danmaku/danmaku/b/a$b;

    move-result-object p1

    iget-boolean p1, p1, Lmaster/flame/danmaku/danmaku/b/a$b;->p:Z

    if-eqz p1, :cond_2

    .line 582
    :cond_1
    iget-object p1, p0, Lmaster/flame/danmaku/a/c$3;->b:Lmaster/flame/danmaku/a/c;

    invoke-static {p1}, Lmaster/flame/danmaku/a/c;->l(Lmaster/flame/danmaku/a/c;)V

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    cmp-long p1, v4, v0

    if-lez p1, :cond_3

    .line 583
    iget-object p1, p0, Lmaster/flame/danmaku/a/c$3;->b:Lmaster/flame/danmaku/a/c;

    invoke-static {p1}, Lmaster/flame/danmaku/a/c;->n(Lmaster/flame/danmaku/a/c;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object p1

    iget-object p1, p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget-wide v0, p1, Lmaster/flame/danmaku/danmaku/model/android/d;->d:J

    cmp-long p1, v4, v0

    if-gtz p1, :cond_3

    .line 584
    iget-object p1, p0, Lmaster/flame/danmaku/a/c$3;->b:Lmaster/flame/danmaku/a/c;

    const/16 v0, 0xb

    invoke-virtual {p1, v0, v4, v5}, Lmaster/flame/danmaku/a/c;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 597
    iget-object v0, p0, Lmaster/flame/danmaku/a/c$3;->b:Lmaster/flame/danmaku/a/c;

    invoke-static {v0}, Lmaster/flame/danmaku/a/c;->a(Lmaster/flame/danmaku/a/c;)Lmaster/flame/danmaku/a/c$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lmaster/flame/danmaku/a/c$3;->b:Lmaster/flame/danmaku/a/c;

    invoke-static {v0}, Lmaster/flame/danmaku/a/c;->a(Lmaster/flame/danmaku/a/c;)Lmaster/flame/danmaku/a/c$a;

    move-result-object v0

    invoke-interface {v0}, Lmaster/flame/danmaku/a/c$a;->a()V

    :cond_0
    return-void
.end method

.method public b(Lmaster/flame/danmaku/danmaku/model/d;)V
    .locals 1

    .line 590
    iget-object v0, p0, Lmaster/flame/danmaku/a/c$3;->b:Lmaster/flame/danmaku/a/c;

    invoke-static {v0}, Lmaster/flame/danmaku/a/c;->a(Lmaster/flame/danmaku/a/c;)Lmaster/flame/danmaku/a/c$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lmaster/flame/danmaku/a/c$3;->b:Lmaster/flame/danmaku/a/c;

    invoke-static {v0}, Lmaster/flame/danmaku/a/c;->a(Lmaster/flame/danmaku/a/c;)Lmaster/flame/danmaku/a/c$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lmaster/flame/danmaku/a/c$a;->a(Lmaster/flame/danmaku/danmaku/model/d;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 604
    iget-object v0, p0, Lmaster/flame/danmaku/a/c$3;->b:Lmaster/flame/danmaku/a/c;

    invoke-static {v0}, Lmaster/flame/danmaku/a/c;->p(Lmaster/flame/danmaku/a/c;)V

    return-void
.end method
