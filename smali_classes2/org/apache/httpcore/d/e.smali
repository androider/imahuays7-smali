.class public Lorg/apache/httpcore/d/e;
.super Ljava/lang/Object;
.source "HttpCoreContext.java"

# interfaces
.implements Lorg/apache/httpcore/d/d;


# instance fields
.field private final a:Lorg/apache/httpcore/d/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Lorg/apache/httpcore/d/a;

    invoke-direct {v0}, Lorg/apache/httpcore/d/a;-><init>()V

    iput-object v0, p0, Lorg/apache/httpcore/d/e;->a:Lorg/apache/httpcore/d/d;

    return-void
.end method

.method public constructor <init>(Lorg/apache/httpcore/d/d;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lorg/apache/httpcore/d/e;->a:Lorg/apache/httpcore/d/d;

    return-void
.end method

.method public static a(Lorg/apache/httpcore/d/d;)Lorg/apache/httpcore/d/e;
    .locals 1

    const-string v0, "HTTP context"

    .line 80
    invoke-static {p0, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    instance-of v0, p0, Lorg/apache/httpcore/d/e;

    if-eqz v0, :cond_0

    .line 82
    check-cast p0, Lorg/apache/httpcore/d/e;

    return-object p0

    .line 84
    :cond_0
    new-instance v0, Lorg/apache/httpcore/d/e;

    invoke-direct {v0, p0}, Lorg/apache/httpcore/d/e;-><init>(Lorg/apache/httpcore/d/d;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/apache/httpcore/d/e;->a:Lorg/apache/httpcore/d/d;

    invoke-interface {v0, p1}, Lorg/apache/httpcore/d/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "Attribute class"

    .line 116
    invoke-static {p2, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    invoke-virtual {p0, p1}, Lorg/apache/httpcore/d/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 121
    :cond_0
    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a()Lorg/apache/httpcore/n;
    .locals 2

    const-string v0, "http.request"

    .line 133
    const-class v1, Lorg/apache/httpcore/n;

    invoke-virtual {p0, v0, v1}, Lorg/apache/httpcore/d/e;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/httpcore/n;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/apache/httpcore/d/e;->a:Lorg/apache/httpcore/d/d;

    invoke-interface {v0, p1, p2}, Lorg/apache/httpcore/d/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
