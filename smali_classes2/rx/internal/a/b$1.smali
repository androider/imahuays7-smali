.class Lrx/internal/a/b$1;
.super Lrx/e;
.source "OperatorThrottleFirst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/a/b;->a(Lrx/e;)Lrx/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/e<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/e;

.field final synthetic b:Lrx/internal/a/b;

.field private c:J


# direct methods
.method constructor <init>(Lrx/internal/a/b;Lrx/e;Lrx/e;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lrx/internal/a/b$1;->b:Lrx/internal/a/b;

    iput-object p3, p0, Lrx/internal/a/b$1;->a:Lrx/e;

    invoke-direct {p0, p2}, Lrx/e;-><init>(Lrx/e;)V

    const-wide/16 p1, 0x0

    .line 40
    iput-wide p1, p0, Lrx/internal/a/b$1;->c:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 44
    invoke-virtual {p0, v0, v1}, Lrx/internal/a/b$1;->a(J)V

    return-void
.end method

.method public onCompleted()V
    .locals 1

    .line 58
    iget-object v0, p0, Lrx/internal/a/b$1;->a:Lrx/e;

    invoke-virtual {v0}, Lrx/e;->onCompleted()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lrx/internal/a/b$1;->a:Lrx/e;

    invoke-virtual {v0, p1}, Lrx/e;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lrx/internal/a/b$1;->b:Lrx/internal/a/b;

    invoke-static {v0}, Lrx/internal/a/b;->a(Lrx/internal/a/b;)Lrx/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d;->b()J

    move-result-wide v0

    .line 50
    iget-wide v2, p0, Lrx/internal/a/b$1;->c:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    iget-wide v2, p0, Lrx/internal/a/b$1;->c:J

    sub-long v4, v0, v2

    iget-object v2, p0, Lrx/internal/a/b$1;->b:Lrx/internal/a/b;

    invoke-static {v2}, Lrx/internal/a/b;->b(Lrx/internal/a/b;)J

    move-result-wide v2

    cmp-long v6, v4, v2

    if-ltz v6, :cond_1

    .line 51
    :cond_0
    iput-wide v0, p0, Lrx/internal/a/b$1;->c:J

    .line 52
    iget-object v0, p0, Lrx/internal/a/b$1;->a:Lrx/e;

    invoke-virtual {v0, p1}, Lrx/e;->onNext(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
