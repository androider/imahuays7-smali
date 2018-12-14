.class final Lrx/e/a$c;
.super Lrx/internal/schedulers/b;
.source "CachedThreadScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private c:J


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 2

    .line 225
    invoke-direct {p0, p1}, Lrx/internal/schedulers/b;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    const-wide/16 v0, 0x0

    .line 226
    iput-wide v0, p0, Lrx/e/a$c;->c:J

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    .line 234
    iput-wide p1, p0, Lrx/e/a$c;->c:J

    return-void
.end method

.method public b()J
    .locals 2

    .line 230
    iget-wide v0, p0, Lrx/e/a$c;->c:J

    return-wide v0
.end method
