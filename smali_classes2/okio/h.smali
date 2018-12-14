.class public Lokio/h;
.super Lokio/s;
.source "ForwardingTimeout.java"


# instance fields
.field private a:Lokio/s;


# direct methods
.method public constructor <init>(Lokio/s;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Lokio/s;-><init>()V

    if-nez p1, :cond_0

    .line 26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_0
    iput-object p1, p0, Lokio/h;->a:Lokio/s;

    return-void
.end method


# virtual methods
.method public final a(Lokio/s;)Lokio/h;
    .locals 1

    if-nez p1, :cond_0

    .line 36
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_0
    iput-object p1, p0, Lokio/h;->a:Lokio/s;

    return-object p0
.end method

.method public final a()Lokio/s;
    .locals 1

    .line 32
    iget-object v0, p0, Lokio/h;->a:Lokio/s;

    return-object v0
.end method

.method public clearDeadline()Lokio/s;
    .locals 1

    .line 66
    iget-object v0, p0, Lokio/h;->a:Lokio/s;

    invoke-virtual {v0}, Lokio/s;->clearDeadline()Lokio/s;

    move-result-object v0

    return-object v0
.end method

.method public clearTimeout()Lokio/s;
    .locals 1

    .line 62
    iget-object v0, p0, Lokio/h;->a:Lokio/s;

    invoke-virtual {v0}, Lokio/s;->clearTimeout()Lokio/s;

    move-result-object v0

    return-object v0
.end method

.method public deadlineNanoTime()J
    .locals 2

    .line 54
    iget-object v0, p0, Lokio/h;->a:Lokio/s;

    invoke-virtual {v0}, Lokio/s;->deadlineNanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public deadlineNanoTime(J)Lokio/s;
    .locals 1

    .line 58
    iget-object v0, p0, Lokio/h;->a:Lokio/s;

    invoke-virtual {v0, p1, p2}, Lokio/s;->deadlineNanoTime(J)Lokio/s;

    move-result-object p1

    return-object p1
.end method

.method public hasDeadline()Z
    .locals 1

    .line 50
    iget-object v0, p0, Lokio/h;->a:Lokio/s;

    invoke-virtual {v0}, Lokio/s;->hasDeadline()Z

    move-result v0

    return v0
.end method

.method public throwIfReached()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lokio/h;->a:Lokio/s;

    invoke-virtual {v0}, Lokio/s;->throwIfReached()V

    return-void
.end method

.method public timeout(JLjava/util/concurrent/TimeUnit;)Lokio/s;
    .locals 1

    .line 42
    iget-object v0, p0, Lokio/h;->a:Lokio/s;

    invoke-virtual {v0, p1, p2, p3}, Lokio/s;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/s;

    move-result-object p1

    return-object p1
.end method

.method public timeoutNanos()J
    .locals 2

    .line 46
    iget-object v0, p0, Lokio/h;->a:Lokio/s;

    invoke-virtual {v0}, Lokio/s;->timeoutNanos()J

    move-result-wide v0

    return-wide v0
.end method
