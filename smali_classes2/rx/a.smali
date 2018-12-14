.class public Lrx/a;
.super Ljava/lang/Object;
.source "Observable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/a$b;,
        Lrx/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final b:Lrx/d/b;


# instance fields
.field final a:Lrx/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/a$a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    invoke-static {}, Lrx/d/d;->a()Lrx/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d/d;->c()Lrx/d/b;

    move-result-object v0

    sput-object v0, Lrx/a;->b:Lrx/d/b;

    return-void
.end method

.method protected constructor <init>(Lrx/a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/a$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lrx/a;->a:Lrx/a$a;

    return-void
.end method

.method public static final a(Lrx/a$a;)Lrx/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/a$a<",
            "TT;>;)",
            "Lrx/a<",
            "TT;>;"
        }
    .end annotation

    .line 95
    new-instance v0, Lrx/a;

    sget-object v1, Lrx/a;->b:Lrx/d/b;

    invoke-virtual {v1, p0}, Lrx/d/b;->a(Lrx/a$a;)Lrx/a$a;

    move-result-object p0

    invoke-direct {v0, p0}, Lrx/a;-><init>(Lrx/a$a;)V

    return-object v0
.end method

.method static synthetic a()Lrx/d/b;
    .locals 1

    .line 46
    sget-object v0, Lrx/a;->b:Lrx/d/b;

    return-object v0
.end method

.method private static a(Lrx/e;Lrx/a;)Lrx/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e<",
            "-TT;>;",
            "Lrx/a<",
            "TT;>;)",
            "Lrx/f;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 8164
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "observer can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8166
    :cond_0
    iget-object v0, p1, Lrx/a;->a:Lrx/a$a;

    if-nez v0, :cond_1

    .line 8167
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "onSubscribe function can not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8175
    :cond_1
    invoke-virtual {p0}, Lrx/e;->a()V

    .line 8182
    instance-of v0, p0, Lrx/c/a;

    if-nez v0, :cond_2

    .line 8184
    new-instance v0, Lrx/c/a;

    invoke-direct {v0, p0}, Lrx/c/a;-><init>(Lrx/e;)V

    move-object p0, v0

    .line 8191
    :cond_2
    :try_start_0
    sget-object v0, Lrx/a;->b:Lrx/d/b;

    iget-object v1, p1, Lrx/a;->a:Lrx/a$a;

    invoke-virtual {v0, p1, v1}, Lrx/d/b;->a(Lrx/a;Lrx/a$a;)Lrx/a$a;

    move-result-object p1

    invoke-interface {p1, p0}, Lrx/a$a;->a(Ljava/lang/Object;)V

    .line 8192
    sget-object p1, Lrx/a;->b:Lrx/d/b;

    invoke-virtual {p1, p0}, Lrx/d/b;->a(Lrx/f;)Lrx/f;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 8195
    invoke-static {p1}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;)V

    .line 8198
    :try_start_1
    sget-object v0, Lrx/a;->b:Lrx/d/b;

    invoke-virtual {v0, p1}, Lrx/d/b;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/e;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 8209
    invoke-static {}, Lrx/f/c;->a()Lrx/f;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    .line 8200
    invoke-static {p0}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;)V

    .line 8203
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error occurred attempting to subscribe ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] and then again while trying to pass to onError."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8205
    sget-object p0, Lrx/a;->b:Lrx/d/b;

    invoke-virtual {p0, v0}, Lrx/d/b;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 8207
    throw v0
.end method


# virtual methods
.method public final a(JLjava/util/concurrent/TimeUnit;)Lrx/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/a<",
            "TT;>;"
        }
    .end annotation

    .line 8687
    invoke-static {}, Lrx/e/c;->a()Lrx/d;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lrx/a;->a(JLjava/util/concurrent/TimeUnit;Lrx/d;)Lrx/a;

    move-result-object p1

    return-object p1
.end method

.method public final a(JLjava/util/concurrent/TimeUnit;Lrx/d;)Lrx/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/d;",
            ")",
            "Lrx/a<",
            "TT;>;"
        }
    .end annotation

    .line 8717
    new-instance v0, Lrx/internal/a/b;

    invoke-direct {v0, p1, p2, p3, p4}, Lrx/internal/a/b;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/d;)V

    invoke-virtual {p0, v0}, Lrx/a;->a(Lrx/a$b;)Lrx/a;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lrx/a$b;)Lrx/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/a$b<",
            "+TR;-TT;>;)",
            "Lrx/a<",
            "TR;>;"
        }
    .end annotation

    .line 154
    new-instance v0, Lrx/a;

    new-instance v1, Lrx/a$1;

    invoke-direct {v1, p0, p1}, Lrx/a$1;-><init>(Lrx/a;Lrx/a$b;)V

    invoke-direct {v0, v1}, Lrx/a;-><init>(Lrx/a$a;)V

    return-object v0
.end method

.method public final a(Lrx/b/b;)Lrx/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/b<",
            "-TT;>;)",
            "Lrx/f;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 7911
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "onNext can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7914
    :cond_0
    new-instance v0, Lrx/a$2;

    invoke-direct {v0, p0, p1}, Lrx/a$2;-><init>(Lrx/a;Lrx/b/b;)V

    invoke-virtual {p0, v0}, Lrx/a;->a(Lrx/e;)Lrx/f;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lrx/e;)Lrx/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e<",
            "-TT;>;)",
            "Lrx/f;"
        }
    .end annotation

    .line 8158
    invoke-static {p1, p0}, Lrx/a;->a(Lrx/e;Lrx/a;)Lrx/f;

    move-result-object p1

    return-object p1
.end method
