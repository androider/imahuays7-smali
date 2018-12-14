.class public Lorg/apache/httpcore/d/r;
.super Ljava/lang/Object;
.source "UriHttpRequestHandlerMapper.java"

# interfaces
.implements Lorg/apache/httpcore/d/k;


# instance fields
.field private final a:Lorg/apache/httpcore/d/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/httpcore/d/s<",
            "Lorg/apache/httpcore/d/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    new-instance v0, Lorg/apache/httpcore/d/s;

    invoke-direct {v0}, Lorg/apache/httpcore/d/s;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/httpcore/d/r;-><init>(Lorg/apache/httpcore/d/s;)V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/httpcore/d/s;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/httpcore/d/s<",
            "Lorg/apache/httpcore/d/j;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Pattern matcher"

    .line 59
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/httpcore/d/s;

    iput-object p1, p0, Lorg/apache/httpcore/d/r;->a:Lorg/apache/httpcore/d/s;

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/httpcore/n;)Lorg/apache/httpcore/d/j;
    .locals 1

    const-string v0, "HTTP request"

    .line 113
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lorg/apache/httpcore/d/r;->a:Lorg/apache/httpcore/d/s;

    invoke-virtual {p0, p1}, Lorg/apache/httpcore/d/r;->b(Lorg/apache/httpcore/n;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/httpcore/d/s;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/httpcore/d/j;

    return-object p1
.end method

.method public a(Ljava/lang/String;Lorg/apache/httpcore/d/j;)V
    .locals 1

    const-string v0, "Pattern"

    .line 74
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Handler"

    .line 75
    invoke-static {p2, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lorg/apache/httpcore/d/r;->a:Lorg/apache/httpcore/d/s;

    invoke-virtual {v0, p1, p2}, Lorg/apache/httpcore/d/s;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected b(Lorg/apache/httpcore/n;)Ljava/lang/String;
    .locals 3

    .line 92
    invoke-interface {p1}, Lorg/apache/httpcore/n;->e()Lorg/apache/httpcore/w;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/httpcore/w;->getUri()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x3f

    .line 93
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 95
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/16 v0, 0x23

    .line 97
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 99
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method
