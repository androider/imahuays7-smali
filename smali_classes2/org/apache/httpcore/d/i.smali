.class public Lorg/apache/httpcore/d/i;
.super Ljava/lang/Object;
.source "HttpProcessorBuilder.java"


# instance fields
.field private a:Lorg/apache/httpcore/d/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/httpcore/d/b<",
            "Lorg/apache/httpcore/p;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lorg/apache/httpcore/d/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/httpcore/d/b<",
            "Lorg/apache/httpcore/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lorg/apache/httpcore/d/i;
    .locals 1

    .line 44
    new-instance v0, Lorg/apache/httpcore/d/i;

    invoke-direct {v0}, Lorg/apache/httpcore/d/i;-><init>()V

    return-object v0
.end method

.method private c()Lorg/apache/httpcore/d/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/httpcore/d/b<",
            "Lorg/apache/httpcore/p;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lorg/apache/httpcore/d/i;->a:Lorg/apache/httpcore/d/b;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lorg/apache/httpcore/d/b;

    invoke-direct {v0}, Lorg/apache/httpcore/d/b;-><init>()V

    iput-object v0, p0, Lorg/apache/httpcore/d/i;->a:Lorg/apache/httpcore/d/b;

    .line 55
    :cond_0
    iget-object v0, p0, Lorg/apache/httpcore/d/i;->a:Lorg/apache/httpcore/d/b;

    return-object v0
.end method

.method private d()Lorg/apache/httpcore/d/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/httpcore/d/b<",
            "Lorg/apache/httpcore/s;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lorg/apache/httpcore/d/i;->b:Lorg/apache/httpcore/d/b;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lorg/apache/httpcore/d/b;

    invoke-direct {v0}, Lorg/apache/httpcore/d/b;-><init>()V

    iput-object v0, p0, Lorg/apache/httpcore/d/i;->b:Lorg/apache/httpcore/d/b;

    .line 62
    :cond_0
    iget-object v0, p0, Lorg/apache/httpcore/d/i;->b:Lorg/apache/httpcore/d/b;

    return-object v0
.end method


# virtual methods
.method public a(Lorg/apache/httpcore/p;)Lorg/apache/httpcore/d/i;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 69
    :cond_0
    invoke-direct {p0}, Lorg/apache/httpcore/d/i;->c()Lorg/apache/httpcore/d/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/httpcore/d/b;->a(Ljava/lang/Object;)Lorg/apache/httpcore/d/b;

    return-object p0
.end method

.method public a(Lorg/apache/httpcore/s;)Lorg/apache/httpcore/d/i;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 109
    :cond_0
    invoke-direct {p0}, Lorg/apache/httpcore/d/i;->d()Lorg/apache/httpcore/d/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/httpcore/d/b;->a(Ljava/lang/Object;)Lorg/apache/httpcore/d/b;

    return-object p0
.end method

.method public varargs a([Lorg/apache/httpcore/s;)Lorg/apache/httpcore/d/i;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 137
    :cond_0
    invoke-direct {p0}, Lorg/apache/httpcore/d/i;->d()Lorg/apache/httpcore/d/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/httpcore/d/b;->a([Ljava/lang/Object;)Lorg/apache/httpcore/d/b;

    return-object p0
.end method

.method public b()Lorg/apache/httpcore/d/h;
    .locals 4

    .line 146
    new-instance v0, Lorg/apache/httpcore/d/m;

    iget-object v1, p0, Lorg/apache/httpcore/d/i;->a:Lorg/apache/httpcore/d/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/httpcore/d/i;->a:Lorg/apache/httpcore/d/b;

    .line 147
    invoke-virtual {v1}, Lorg/apache/httpcore/d/b;->a()Ljava/util/LinkedList;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iget-object v3, p0, Lorg/apache/httpcore/d/i;->b:Lorg/apache/httpcore/d/b;

    if-eqz v3, :cond_1

    iget-object v2, p0, Lorg/apache/httpcore/d/i;->b:Lorg/apache/httpcore/d/b;

    .line 148
    invoke-virtual {v2}, Lorg/apache/httpcore/d/b;->a()Ljava/util/LinkedList;

    move-result-object v2

    :cond_1
    invoke-direct {v0, v1, v2}, Lorg/apache/httpcore/d/m;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public b(Lorg/apache/httpcore/p;)Lorg/apache/httpcore/d/i;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 77
    :cond_0
    invoke-direct {p0}, Lorg/apache/httpcore/d/i;->c()Lorg/apache/httpcore/d/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/httpcore/d/b;->b(Ljava/lang/Object;)Lorg/apache/httpcore/d/b;

    return-object p0
.end method

.method public b(Lorg/apache/httpcore/s;)Lorg/apache/httpcore/d/i;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 117
    :cond_0
    invoke-direct {p0}, Lorg/apache/httpcore/d/i;->d()Lorg/apache/httpcore/d/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/httpcore/d/b;->b(Ljava/lang/Object;)Lorg/apache/httpcore/d/b;

    return-object p0
.end method

.method public varargs b([Lorg/apache/httpcore/s;)Lorg/apache/httpcore/d/i;
    .locals 0

    .line 142
    invoke-virtual {p0, p1}, Lorg/apache/httpcore/d/i;->a([Lorg/apache/httpcore/s;)Lorg/apache/httpcore/d/i;

    move-result-object p1

    return-object p1
.end method
