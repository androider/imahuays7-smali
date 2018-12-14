.class public Lorg/apache/httpcore/b/c/m;
.super Ljava/io/InputStream;
.source "IdentityInputStream.java"


# instance fields
.field private final a:Lorg/apache/httpcore/c/g;

.field private b:Z


# direct methods
.method public constructor <init>(Lorg/apache/httpcore/c/g;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lorg/apache/httpcore/b/c/m;->b:Z

    const-string v0, "Session input buffer"

    .line 62
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/httpcore/c/g;

    iput-object p1, p0, Lorg/apache/httpcore/b/c/m;->a:Lorg/apache/httpcore/c/g;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lorg/apache/httpcore/b/c/m;->a:Lorg/apache/httpcore/c/g;

    instance-of v0, v0, Lorg/apache/httpcore/c/a;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lorg/apache/httpcore/b/c/m;->a:Lorg/apache/httpcore/c/g;

    check-cast v0, Lorg/apache/httpcore/c/a;

    invoke-interface {v0}, Lorg/apache/httpcore/c/a;->b()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lorg/apache/httpcore/b/c/m;->b:Z

    return-void
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-boolean v0, p0, Lorg/apache/httpcore/b/c/m;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 84
    :cond_0
    iget-object v0, p0, Lorg/apache/httpcore/b/c/m;->a:Lorg/apache/httpcore/c/g;

    invoke-interface {v0}, Lorg/apache/httpcore/c/g;->f()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    iget-boolean v0, p0, Lorg/apache/httpcore/b/c/m;->b:Z

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 93
    :cond_0
    iget-object v0, p0, Lorg/apache/httpcore/b/c/m;->a:Lorg/apache/httpcore/c/g;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/httpcore/c/g;->a([BII)I

    move-result p1

    return p1
.end method
