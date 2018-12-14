.class public abstract Lanet/channel/Session;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/Session$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lanet/channel/Session;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lanet/channel/entity/a;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:I

.field protected g:Ljava/lang/String;

.field protected h:I

.field protected i:Lanet/channel/entity/ConnType;

.field protected j:Lanet/channel/strategy/c;

.field protected k:Lanet/channel/Session$Status;

.field protected l:Ljava/lang/Runnable;

.field public final m:Ljava/lang/String;

.field public final n:Lanet/channel/statist/SessionStatistic;

.field protected o:I

.field protected p:I

.field protected q:Z

.field protected r:Z

.field private s:Z

.field private t:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lanet/channel/entity/b;Lanet/channel/entity/ConnType;)V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lanet/channel/Session;->b:Ljava/util/Map;

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lanet/channel/Session;->s:Z

    .line 53
    sget-object v1, Lanet/channel/Session$Status;->DISCONNECTED:Lanet/channel/Session$Status;

    iput-object v1, p0, Lanet/channel/Session;->k:Lanet/channel/Session$Status;

    .line 62
    iput-boolean v0, p0, Lanet/channel/Session;->q:Z

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lanet/channel/Session;->r:Z

    .line 90
    iput-object p1, p0, Lanet/channel/Session;->a:Landroid/content/Context;

    .line 91
    invoke-virtual {p2}, Lanet/channel/entity/b;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/Session;->e:Ljava/lang/String;

    .line 92
    invoke-virtual {p2}, Lanet/channel/entity/b;->b()I

    move-result p1

    iput p1, p0, Lanet/channel/Session;->f:I

    .line 93
    iput-object p3, p0, Lanet/channel/Session;->i:Lanet/channel/entity/ConnType;

    .line 94
    invoke-virtual {p2}, Lanet/channel/entity/b;->f()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/Session;->c:Ljava/lang/String;

    .line 95
    iget-object p1, p0, Lanet/channel/Session;->c:Ljava/lang/String;

    iget-object p3, p0, Lanet/channel/Session;->c:Ljava/lang/String;

    const-string v0, "://"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    add-int/lit8 p3, p3, 0x3

    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/Session;->d:Ljava/lang/String;

    .line 96
    invoke-virtual {p2}, Lanet/channel/entity/b;->e()I

    move-result p1

    iput p1, p0, Lanet/channel/Session;->p:I

    .line 97
    invoke-virtual {p2}, Lanet/channel/entity/b;->d()I

    move-result p1

    iput p1, p0, Lanet/channel/Session;->o:I

    .line 98
    iget-object p1, p2, Lanet/channel/entity/b;->a:Lanet/channel/strategy/c;

    iput-object p1, p0, Lanet/channel/Session;->j:Lanet/channel/strategy/c;

    .line 100
    new-instance p1, Lanet/channel/statist/SessionStatistic;

    invoke-direct {p1, p2}, Lanet/channel/statist/SessionStatistic;-><init>(Lanet/channel/entity/b;)V

    iput-object p1, p0, Lanet/channel/Session;->n:Lanet/channel/statist/SessionStatistic;

    .line 101
    invoke-virtual {p2}, Lanet/channel/entity/b;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/Session;->m:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lanet/channel/Session;)I
    .locals 1

    .line 80
    iget-object v0, p0, Lanet/channel/Session;->i:Lanet/channel/entity/ConnType;

    iget-object p1, p1, Lanet/channel/Session;->i:Lanet/channel/entity/ConnType;

    invoke-static {v0, p1}, Lanet/channel/entity/ConnType;->a(Lanet/channel/entity/ConnType;Lanet/channel/entity/ConnType;)I

    move-result p1

    return p1
.end method

.method public abstract a(Lanet/channel/request/d;Lanet/channel/f;)Lanet/channel/request/b;
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 116
    invoke-virtual {p0, v0}, Lanet/channel/Session;->b(Z)V

    return-void
.end method

.method public a(ILanet/channel/entity/a;)V
    .locals 1

    .line 177
    iget-object v0, p0, Lanet/channel/Session;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lanet/channel/Session;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public a(I[BI)V
    .locals 0

    return-void
.end method

.method protected declared-synchronized a(Lanet/channel/Session$Status;Lanet/channel/entity/e;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v0, "awcn.Session"

    const-string v1, "notifyStatus"

    .line 256
    iget-object v2, p0, Lanet/channel/Session;->m:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "status"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-virtual {p1}, Lanet/channel/Session$Status;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v0, v1, v2, v3}, Lanet/channel/h/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    iget-object v0, p0, Lanet/channel/Session;->k:Lanet/channel/Session$Status;

    invoke-virtual {p1, v0}, Lanet/channel/Session$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "awcn.Session"

    const-string p2, "ignore notifyStatus"

    .line 258
    iget-object v0, p0, Lanet/channel/Session;->m:Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p1, p2, v0, v1}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    monitor-exit p0

    return-void

    .line 261
    :cond_0
    :try_start_1
    iput-object p1, p0, Lanet/channel/Session;->k:Lanet/channel/Session$Status;

    .line 262
    sget-object p1, Lanet/channel/Session$1;->a:[I

    iget-object v0, p0, Lanet/channel/Session;->k:Lanet/channel/Session$Status;

    invoke-virtual {v0}, Lanet/channel/Session$Status;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 291
    :pswitch_0
    sget-object p1, Lanet/channel/entity/EventType;->AUTH_FAIL:Lanet/channel/entity/EventType;

    invoke-virtual {p0, p1, p2}, Lanet/channel/Session;->a(Lanet/channel/entity/EventType;Lanet/channel/entity/e;)V

    goto :goto_0

    .line 288
    :pswitch_1
    sget-object p1, Lanet/channel/entity/EventType;->AUTH_SUCC:Lanet/channel/entity/EventType;

    invoke-virtual {p0, p1, p2}, Lanet/channel/Session;->a(Lanet/channel/entity/EventType;Lanet/channel/entity/e;)V

    goto :goto_0

    .line 280
    :pswitch_2
    invoke-virtual {p0}, Lanet/channel/Session;->l()V

    .line 281
    iget-boolean p1, p0, Lanet/channel/Session;->s:Z

    if-nez p1, :cond_1

    .line 282
    sget-object p1, Lanet/channel/entity/EventType;->DISCONNECTED:Lanet/channel/entity/EventType;

    invoke-virtual {p0, p1, p2}, Lanet/channel/Session;->a(Lanet/channel/entity/EventType;Lanet/channel/entity/e;)V

    goto :goto_0

    .line 276
    :pswitch_3
    sget-object p1, Lanet/channel/entity/EventType;->CONNECT_FAIL:Lanet/channel/entity/EventType;

    invoke-virtual {p0, p1, p2}, Lanet/channel/Session;->a(Lanet/channel/entity/EventType;Lanet/channel/entity/e;)V

    goto :goto_0

    .line 270
    :pswitch_4
    sget-object p1, Lanet/channel/entity/EventType;->CONNECTED:Lanet/channel/entity/EventType;

    invoke-virtual {p0, p1, p2}, Lanet/channel/Session;->a(Lanet/channel/entity/EventType;Lanet/channel/entity/e;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 292
    :cond_1
    :goto_0
    :pswitch_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 255
    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected a(Lanet/channel/entity/EventType;Lanet/channel/entity/e;)V
    .locals 1

    .line 226
    new-instance v0, Lanet/channel/k;

    invoke-direct {v0, p0, p1, p2}, Lanet/channel/k;-><init>(Lanet/channel/Session;Lanet/channel/entity/EventType;Lanet/channel/entity/e;)V

    invoke-static {v0}, Lanet/channel/a/c;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 147
    iput-boolean p1, p0, Lanet/channel/Session;->q:Z

    .line 148
    invoke-virtual {p0}, Lanet/channel/Session;->c()V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method public abstract c()V
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 39
    check-cast p1, Lanet/channel/Session;

    invoke-virtual {p0, p1}, Lanet/channel/Session;->a(Lanet/channel/Session;)I

    move-result p1

    return p1
.end method

.method protected abstract d()Ljava/lang/Runnable;
.end method

.method public abstract e()Z
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lanet/channel/Session;->e:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .locals 1

    .line 201
    iget v0, p0, Lanet/channel/Session;->f:I

    return v0
.end method

.method public h()Lanet/channel/entity/ConnType;
    .locals 1

    .line 205
    iget-object v0, p0, Lanet/channel/Session;->i:Lanet/channel/entity/ConnType;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lanet/channel/Session;->c:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lanet/channel/Session;->d:Ljava/lang/String;

    return-object v0
.end method

.method public k()Lanet/channel/strategy/c;
    .locals 1

    .line 217
    iget-object v0, p0, Lanet/channel/Session;->j:Lanet/channel/strategy/c;

    return-object v0
.end method

.method protected l()V
    .locals 0

    return-void
.end method

.method protected m()V
    .locals 4

    .line 299
    iget-object v0, p0, Lanet/channel/Session;->l:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 300
    invoke-virtual {p0}, Lanet/channel/Session;->d()Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/Session;->l:Ljava/lang/Runnable;

    .line 302
    :cond_0
    invoke-virtual {p0}, Lanet/channel/Session;->n()V

    const-wide/32 v0, 0x9c40

    .line 304
    iget-object v2, p0, Lanet/channel/Session;->l:Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    .line 305
    iget-object v2, p0, Lanet/channel/Session;->l:Ljava/lang/Runnable;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v0, v1, v3}, Lanet/channel/a/c;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/Session;->t:Ljava/util/concurrent/Future;

    :cond_1
    return-void
.end method

.method protected n()V
    .locals 2

    .line 310
    iget-object v0, p0, Lanet/channel/Session;->l:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lanet/channel/Session;->t:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lanet/channel/Session;->t:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Session@["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    iget-object v1, p0, Lanet/channel/Session;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanet/channel/Session;->i:Lanet/channel/entity/ConnType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
