.class public final Lrx/internal/a/b;
.super Ljava/lang/Object;
.source "OperatorThrottleFirst.java"

# interfaces
.implements Lrx/a$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/a$b<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:Lrx/d;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lrx/d;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Lrx/internal/a/b;->a:J

    .line 33
    iput-object p4, p0, Lrx/internal/a/b;->b:Lrx/d;

    return-void
.end method

.method static synthetic a(Lrx/internal/a/b;)Lrx/d;
    .locals 0

    .line 26
    iget-object p0, p0, Lrx/internal/a/b;->b:Lrx/d;

    return-object p0
.end method

.method static synthetic b(Lrx/internal/a/b;)J
    .locals 2

    .line 26
    iget-wide v0, p0, Lrx/internal/a/b;->a:J

    return-wide v0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    check-cast p1, Lrx/e;

    invoke-virtual {p0, p1}, Lrx/internal/a/b;->a(Lrx/e;)Lrx/e;

    move-result-object p1

    return-object p1
.end method

.method public a(Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e<",
            "-TT;>;)",
            "Lrx/e<",
            "-TT;>;"
        }
    .end annotation

    .line 38
    new-instance v0, Lrx/internal/a/b$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/a/b$1;-><init>(Lrx/internal/a/b;Lrx/e;Lrx/e;)V

    return-object v0
.end method
