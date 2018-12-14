.class Lmaster/flame/danmaku/a/a$a$a$2;
.super Lmaster/flame/danmaku/danmaku/model/l$c;
.source "CacheManagingDrawTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmaster/flame/danmaku/a/a$a$a;->b(Z)J
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
.field a:I

.field b:I

.field final synthetic c:Lmaster/flame/danmaku/danmaku/model/d;

.field final synthetic d:Z

.field final synthetic e:I

.field final synthetic f:J

.field final synthetic g:J

.field final synthetic h:J

.field final synthetic i:Lmaster/flame/danmaku/a/a$a$a;


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/a/a$a$a;Lmaster/flame/danmaku/danmaku/model/d;ZIJJJ)V
    .locals 0

    .line 766
    iput-object p1, p0, Lmaster/flame/danmaku/a/a$a$a$2;->i:Lmaster/flame/danmaku/a/a$a$a;

    iput-object p2, p0, Lmaster/flame/danmaku/a/a$a$a$2;->c:Lmaster/flame/danmaku/danmaku/model/d;

    iput-boolean p3, p0, Lmaster/flame/danmaku/a/a$a$a$2;->d:Z

    iput p4, p0, Lmaster/flame/danmaku/a/a$a$a$2;->e:I

    iput-wide p5, p0, Lmaster/flame/danmaku/a/a$a$a$2;->f:J

    iput-wide p7, p0, Lmaster/flame/danmaku/a/a$a$a$2;->g:J

    iput-wide p9, p0, Lmaster/flame/danmaku/a/a$a$a$2;->h:J

    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/l$c;-><init>()V

    const/4 p1, 0x0

    .line 767
    iput p1, p0, Lmaster/flame/danmaku/a/a$a$a$2;->a:I

    .line 768
    iput p1, p0, Lmaster/flame/danmaku/a/a$a$a$2;->b:I

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 766
    check-cast p1, Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/a/a$a$a$2;->a(Lmaster/flame/danmaku/danmaku/model/d;)I

    move-result p1

    return p1
.end method

.method public a(Lmaster/flame/danmaku/danmaku/model/d;)I
    .locals 10

    .line 771
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a$a$2;->i:Lmaster/flame/danmaku/a/a$a$a;

    invoke-static {v0}, Lmaster/flame/danmaku/a/a$a$a;->a(Lmaster/flame/danmaku/a/a$a$a;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_b

    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a$a$2;->i:Lmaster/flame/danmaku/a/a$a$a;

    invoke-static {v0}, Lmaster/flame/danmaku/a/a$a$a;->b(Lmaster/flame/danmaku/a/a$a$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 774
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a$a$2;->c:Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/d;->s()J

    move-result-wide v2

    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a$a$2;->i:Lmaster/flame/danmaku/a/a$a$a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a;->g:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v4, v0, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    return v1

    .line 778
    :cond_1
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->d()Lmaster/flame/danmaku/danmaku/model/n;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 779
    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/n;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    return v2

    .line 783
    :cond_2
    iget-boolean v0, p0, Lmaster/flame/danmaku/a/a$a$a$2;->d:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->f()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->g()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    return v2

    .line 787
    :cond_4
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->i()Z

    move-result v0

    if-nez v0, :cond_5

    .line 788
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a$a$2;->i:Lmaster/flame/danmaku/a/a$a$a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v3, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->s:Lmaster/flame/danmaku/a/b;

    iget v5, p0, Lmaster/flame/danmaku/a/a$a$a$2;->a:I

    iget v6, p0, Lmaster/flame/danmaku/a/a$a$a$2;->e:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a$a$2;->i:Lmaster/flame/danmaku/a/a$a$a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v9, v0, Lmaster/flame/danmaku/a/a;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-object v4, p1

    invoke-virtual/range {v3 .. v9}, Lmaster/flame/danmaku/a/b;->a(Lmaster/flame/danmaku/danmaku/model/d;IILmaster/flame/danmaku/danmaku/model/f;ZLmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V

    .line 792
    :cond_5
    iget-byte v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->n:B

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->j()Z

    move-result v0

    if-eqz v0, :cond_6

    return v2

    .line 796
    :cond_6
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->o()I

    move-result v0

    if-ne v0, v1, :cond_8

    .line 798
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->s()J

    move-result-wide v3

    iget-wide v5, p0, Lmaster/flame/danmaku/a/a$a$a$2;->f:J

    sub-long v7, v3, v5

    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a$a$2;->i:Lmaster/flame/danmaku/a/a$a$a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget-wide v3, v0, Lmaster/flame/danmaku/danmaku/model/android/d;->d:J

    div-long/2addr v7, v3

    long-to-int v0, v7

    .line 799
    iget v3, p0, Lmaster/flame/danmaku/a/a$a$a$2;->b:I

    if-ne v3, v0, :cond_7

    .line 800
    iget v0, p0, Lmaster/flame/danmaku/a/a$a$a$2;->a:I

    add-int/2addr v0, v1

    iput v0, p0, Lmaster/flame/danmaku/a/a$a$a$2;->a:I

    goto :goto_0

    .line 802
    :cond_7
    iput v2, p0, Lmaster/flame/danmaku/a/a$a$a$2;->a:I

    .line 803
    iput v0, p0, Lmaster/flame/danmaku/a/a$a$a$2;->b:I

    .line 807
    :cond_8
    :goto_0
    iget-boolean v0, p0, Lmaster/flame/danmaku/a/a$a$a$2;->d:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a$a$2;->i:Lmaster/flame/danmaku/a/a$a$a;

    invoke-static {v0}, Lmaster/flame/danmaku/a/a$a$a;->c(Lmaster/flame/danmaku/a/a$a$a;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 809
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a$a$2;->i:Lmaster/flame/danmaku/a/a$a$a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    invoke-static {v0}, Lmaster/flame/danmaku/a/a;->a(Lmaster/flame/danmaku/a/a;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    :try_start_1
    iget-object v3, p0, Lmaster/flame/danmaku/a/a$a$a$2;->i:Lmaster/flame/danmaku/a/a$a$a;

    iget-object v3, v3, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v3, v3, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    invoke-static {v3}, Lmaster/flame/danmaku/a/a;->a(Lmaster/flame/danmaku/a/a;)Ljava/lang/Object;

    move-result-object v3

    iget-wide v4, p0, Lmaster/flame/danmaku/a/a$a$a$2;->g:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 811
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 813
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    return v1

    .line 819
    :cond_9
    :goto_1
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a$a$2;->i:Lmaster/flame/danmaku/a/a$a$a;

    invoke-static {v0, p1, v2}, Lmaster/flame/danmaku/a/a$a$a;->a(Lmaster/flame/danmaku/a/a$a$a;Lmaster/flame/danmaku/danmaku/model/d;Z)B

    .line 820
    iget-boolean p1, p0, Lmaster/flame/danmaku/a/a$a$a$2;->d:Z

    if-nez p1, :cond_a

    .line 821
    invoke-static {}, Lmaster/flame/danmaku/danmaku/c/c;->a()J

    move-result-wide v3

    iget-wide v5, p0, Lmaster/flame/danmaku/a/a$a$a$2;->h:J

    sub-long v7, v3, v5

    .line 822
    iget-object p1, p0, Lmaster/flame/danmaku/a/a$a$a$2;->i:Lmaster/flame/danmaku/a/a$a$a;

    iget-object p1, p1, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object p1, p1, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object p1, p1, Lmaster/flame/danmaku/a/a;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object p1, p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Lmaster/flame/danmaku/danmaku/model/android/d;

    const-wide/16 v3, 0xed8

    iget-object p1, p0, Lmaster/flame/danmaku/a/a$a$a$2;->i:Lmaster/flame/danmaku/a/a$a$a;

    iget-object p1, p1, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    invoke-static {p1}, Lmaster/flame/danmaku/a/a$a;->f(Lmaster/flame/danmaku/a/a$a;)I

    move-result p1

    int-to-long v5, p1

    mul-long v5, v5, v3

    cmp-long p1, v7, v5

    if-ltz p1, :cond_a

    return v1

    :cond_a
    return v2

    :cond_b
    :goto_2
    return v1
.end method
