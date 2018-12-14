.class public Lorg/apache/httpcore/d/a;
.super Ljava/lang/Object;
.source "BasicHttpContext.java"

# interfaces
.implements Lorg/apache/httpcore/d/d;


# instance fields
.field private final a:Lorg/apache/httpcore/d/d;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, v0}, Lorg/apache/httpcore/d/a;-><init>(Lorg/apache/httpcore/d/d;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/httpcore/d/d;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/httpcore/d/a;->b:Ljava/util/Map;

    .line 58
    iput-object p1, p0, Lorg/apache/httpcore/d/a;->a:Lorg/apache/httpcore/d/d;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const-string v0, "Id"

    .line 63
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lorg/apache/httpcore/d/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 65
    iget-object v1, p0, Lorg/apache/httpcore/d/a;->a:Lorg/apache/httpcore/d/d;

    if-eqz v1, :cond_0

    .line 66
    iget-object v0, p0, Lorg/apache/httpcore/d/a;->a:Lorg/apache/httpcore/d/d;

    invoke-interface {v0, p1}, Lorg/apache/httpcore/d/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public a()V
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/apache/httpcore/d/a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "Id"

    .line 73
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 75
    iget-object v0, p0, Lorg/apache/httpcore/d/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 77
    :cond_0
    iget-object p2, p0, Lorg/apache/httpcore/d/a;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/apache/httpcore/d/a;->b:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
