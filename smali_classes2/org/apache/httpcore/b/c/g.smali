.class public Lorg/apache/httpcore/b/c/g;
.super Lorg/apache/httpcore/b/c/a;
.source "DefaultHttpRequestParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/httpcore/b/c/a<",
        "Lorg/apache/httpcore/n;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lorg/apache/httpcore/o;

.field private final c:Lorg/apache/httpcore/util/CharArrayBuffer;


# direct methods
.method public constructor <init>(Lorg/apache/httpcore/c/g;Lorg/apache/httpcore/message/n;Lorg/apache/httpcore/o;Lorg/apache/httpcore/a/b;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2, p4}, Lorg/apache/httpcore/b/c/a;-><init>(Lorg/apache/httpcore/c/g;Lorg/apache/httpcore/message/n;Lorg/apache/httpcore/a/b;)V

    if-eqz p3, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    sget-object p3, Lorg/apache/httpcore/b/f;->a:Lorg/apache/httpcore/b/f;

    :goto_0
    iput-object p3, p0, Lorg/apache/httpcore/b/c/g;->b:Lorg/apache/httpcore/o;

    .line 105
    new-instance p1, Lorg/apache/httpcore/util/CharArrayBuffer;

    const/16 p2, 0x80

    invoke-direct {p1, p2}, Lorg/apache/httpcore/util/CharArrayBuffer;-><init>(I)V

    iput-object p1, p0, Lorg/apache/httpcore/b/c/g;->c:Lorg/apache/httpcore/util/CharArrayBuffer;

    return-void
.end method


# virtual methods
.method protected synthetic a(Lorg/apache/httpcore/c/g;)Lorg/apache/httpcore/m;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/httpcore/HttpException;,
            Lorg/apache/httpcore/ParseException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lorg/apache/httpcore/b/c/g;->b(Lorg/apache/httpcore/c/g;)Lorg/apache/httpcore/n;

    move-result-object p1

    return-object p1
.end method

.method protected b(Lorg/apache/httpcore/c/g;)Lorg/apache/httpcore/n;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/httpcore/HttpException;,
            Lorg/apache/httpcore/ParseException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lorg/apache/httpcore/b/c/g;->c:Lorg/apache/httpcore/util/CharArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/httpcore/util/CharArrayBuffer;->clear()V

    .line 130
    iget-object v0, p0, Lorg/apache/httpcore/b/c/g;->c:Lorg/apache/httpcore/util/CharArrayBuffer;

    invoke-interface {p1, v0}, Lorg/apache/httpcore/c/g;->a(Lorg/apache/httpcore/util/CharArrayBuffer;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 132
    new-instance p1, Lorg/apache/httpcore/ConnectionClosedException;

    const-string v0, "Client closed connection"

    invoke-direct {p1, v0}, Lorg/apache/httpcore/ConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 134
    :cond_0
    new-instance p1, Lorg/apache/httpcore/message/o;

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/httpcore/b/c/g;->c:Lorg/apache/httpcore/util/CharArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/httpcore/util/CharArrayBuffer;->length()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lorg/apache/httpcore/message/o;-><init>(II)V

    .line 135
    iget-object v0, p0, Lorg/apache/httpcore/b/c/g;->a:Lorg/apache/httpcore/message/n;

    iget-object v1, p0, Lorg/apache/httpcore/b/c/g;->c:Lorg/apache/httpcore/util/CharArrayBuffer;

    invoke-interface {v0, v1, p1}, Lorg/apache/httpcore/message/n;->b(Lorg/apache/httpcore/util/CharArrayBuffer;Lorg/apache/httpcore/message/o;)Lorg/apache/httpcore/w;

    move-result-object p1

    .line 136
    iget-object v0, p0, Lorg/apache/httpcore/b/c/g;->b:Lorg/apache/httpcore/o;

    invoke-interface {v0, p1}, Lorg/apache/httpcore/o;->a(Lorg/apache/httpcore/w;)Lorg/apache/httpcore/n;

    move-result-object p1

    return-object p1
.end method
