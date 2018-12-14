.class public Lorg/apache/httpcore/b/c/n;
.super Ljava/io/OutputStream;
.source "IdentityOutputStream.java"


# instance fields
.field private final a:Lorg/apache/httpcore/c/h;

.field private b:Z


# direct methods
.method public constructor <init>(Lorg/apache/httpcore/c/h;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lorg/apache/httpcore/b/c/n;->b:Z

    const-string v0, "Session output buffer"

    .line 60
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/httpcore/c/h;

    iput-object p1, p0, Lorg/apache/httpcore/b/c/n;->a:Lorg/apache/httpcore/c/h;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    iget-boolean v0, p0, Lorg/apache/httpcore/b/c/n;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lorg/apache/httpcore/b/c/n;->b:Z

    .line 72
    iget-object v0, p0, Lorg/apache/httpcore/b/c/n;->a:Lorg/apache/httpcore/c/h;

    invoke-interface {v0}, Lorg/apache/httpcore/c/h;->c()V

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lorg/apache/httpcore/b/c/n;->a:Lorg/apache/httpcore/c/h;

    invoke-interface {v0}, Lorg/apache/httpcore/c/h;->c()V

    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    iget-boolean v0, p0, Lorg/apache/httpcore/b/c/n;->b:Z

    if-eqz v0, :cond_0

    .line 97
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Attempted write to closed stream."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 99
    :cond_0
    iget-object v0, p0, Lorg/apache/httpcore/b/c/n;->a:Lorg/apache/httpcore/c/h;

    invoke-interface {v0, p1}, Lorg/apache/httpcore/c/h;->a(I)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/httpcore/b/c/n;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-boolean v0, p0, Lorg/apache/httpcore/b/c/n;->b:Z

    if-eqz v0, :cond_0

    .line 84
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Attempted write to closed stream."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_0
    iget-object v0, p0, Lorg/apache/httpcore/b/c/n;->a:Lorg/apache/httpcore/c/h;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/httpcore/c/h;->a([BII)V

    return-void
.end method
