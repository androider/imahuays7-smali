.class public Lorg/apache/httpcore/b/c/i;
.super Lorg/apache/httpcore/b/c/b;
.source "DefaultHttpResponseWriter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/httpcore/b/c/b<",
        "Lorg/apache/httpcore/q;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/httpcore/c/h;Lorg/apache/httpcore/message/m;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lorg/apache/httpcore/b/c/b;-><init>(Lorg/apache/httpcore/c/h;Lorg/apache/httpcore/message/m;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lorg/apache/httpcore/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    check-cast p1, Lorg/apache/httpcore/q;

    invoke-virtual {p0, p1}, Lorg/apache/httpcore/b/c/i;->a(Lorg/apache/httpcore/q;)V

    return-void
.end method

.method protected a(Lorg/apache/httpcore/q;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lorg/apache/httpcore/b/c/i;->c:Lorg/apache/httpcore/message/m;

    iget-object v1, p0, Lorg/apache/httpcore/b/c/i;->b:Lorg/apache/httpcore/util/CharArrayBuffer;

    invoke-interface {p1}, Lorg/apache/httpcore/q;->a()Lorg/apache/httpcore/x;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lorg/apache/httpcore/message/m;->a(Lorg/apache/httpcore/util/CharArrayBuffer;Lorg/apache/httpcore/x;)Lorg/apache/httpcore/util/CharArrayBuffer;

    .line 65
    iget-object p1, p0, Lorg/apache/httpcore/b/c/i;->a:Lorg/apache/httpcore/c/h;

    iget-object v0, p0, Lorg/apache/httpcore/b/c/i;->b:Lorg/apache/httpcore/util/CharArrayBuffer;

    invoke-interface {p1, v0}, Lorg/apache/httpcore/c/h;->a(Lorg/apache/httpcore/util/CharArrayBuffer;)V

    return-void
.end method
