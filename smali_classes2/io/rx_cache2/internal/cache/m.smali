.class public final Lio/rx_cache2/internal/cache/m;
.super Lio/rx_cache2/internal/cache/a;
.source "SaveRecord.java"


# instance fields
.field private final c:Ljava/lang/Integer;

.field private final d:Lio/rx_cache2/internal/cache/b;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/rx_cache2/internal/d;Lio/rx_cache2/internal/e;Ljava/lang/Integer;Lio/rx_cache2/internal/cache/b;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Lio/rx_cache2/internal/cache/a;-><init>(Lio/rx_cache2/internal/d;Lio/rx_cache2/internal/e;)V

    .line 35
    iput-object p3, p0, Lio/rx_cache2/internal/cache/m;->c:Ljava/lang/Integer;

    .line 36
    iput-object p4, p0, Lio/rx_cache2/internal/cache/m;->d:Lio/rx_cache2/internal/cache/b;

    .line 37
    iput-object p5, p0, Lio/rx_cache2/internal/cache/m;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Long;ZZ)V
    .locals 0

    .line 43
    invoke-virtual {p0, p1, p2, p3}, Lio/rx_cache2/internal/cache/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 45
    new-instance p2, Lio/rx_cache2/internal/Record;

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-direct {p2, p4, p3, p5}, Lio/rx_cache2/internal/Record;-><init>(Ljava/lang/Object;Ljava/lang/Boolean;Ljava/lang/Long;)V

    .line 46
    iget-object p3, p0, Lio/rx_cache2/internal/cache/m;->a:Lio/rx_cache2/internal/d;

    invoke-interface {p3, p1, p2}, Lio/rx_cache2/internal/d;->a(Ljava/lang/String;Lio/rx_cache2/internal/Record;)V

    .line 48
    iget-object p3, p0, Lio/rx_cache2/internal/cache/m;->b:Lio/rx_cache2/internal/e;

    invoke-interface {p3}, Lio/rx_cache2/internal/e;->b()I

    move-result p3

    iget-object p4, p0, Lio/rx_cache2/internal/cache/m;->c:Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-lt p3, p4, :cond_0

    .line 49
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "RxCache -> Record can not be persisted because it would exceed the max limit megabytes settled down"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_0
    iget-object p3, p0, Lio/rx_cache2/internal/cache/m;->b:Lio/rx_cache2/internal/e;

    iget-object p4, p0, Lio/rx_cache2/internal/cache/m;->e:Ljava/lang/String;

    invoke-interface {p3, p1, p2, p7, p4}, Lio/rx_cache2/internal/e;->a(Ljava/lang/String;Lio/rx_cache2/internal/Record;ZLjava/lang/String;)V

    .line 54
    :goto_0
    iget-object p1, p0, Lio/rx_cache2/internal/cache/m;->d:Lio/rx_cache2/internal/cache/b;

    invoke-virtual {p1, p7}, Lio/rx_cache2/internal/cache/b;->a(Z)Lio/reactivex/Observable;

    return-void
.end method
