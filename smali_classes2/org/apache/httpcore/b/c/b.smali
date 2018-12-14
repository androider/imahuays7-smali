.class public abstract Lorg/apache/httpcore/b/c/b;
.super Ljava/lang/Object;
.source "AbstractMessageWriter.java"

# interfaces
.implements Lorg/apache/httpcore/c/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/httpcore/m;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/httpcore/c/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final a:Lorg/apache/httpcore/c/h;

.field protected final b:Lorg/apache/httpcore/util/CharArrayBuffer;

.field protected final c:Lorg/apache/httpcore/message/m;


# direct methods
.method public constructor <init>(Lorg/apache/httpcore/c/h;Lorg/apache/httpcore/message/m;)V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Session input buffer"

    .line 91
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/httpcore/c/h;

    iput-object p1, p0, Lorg/apache/httpcore/b/c/b;->a:Lorg/apache/httpcore/c/h;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    sget-object p2, Lorg/apache/httpcore/message/h;->b:Lorg/apache/httpcore/message/h;

    :goto_0
    iput-object p2, p0, Lorg/apache/httpcore/b/c/b;->c:Lorg/apache/httpcore/message/m;

    .line 93
    new-instance p1, Lorg/apache/httpcore/util/CharArrayBuffer;

    const/16 p2, 0x80

    invoke-direct {p1, p2}, Lorg/apache/httpcore/util/CharArrayBuffer;-><init>(I)V

    iput-object p1, p0, Lorg/apache/httpcore/b/c/b;->b:Lorg/apache/httpcore/util/CharArrayBuffer;

    return-void
.end method


# virtual methods
.method protected abstract a(Lorg/apache/httpcore/m;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public b(Lorg/apache/httpcore/m;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/httpcore/HttpException;
        }
    .end annotation

    const-string v0, "HTTP message"

    .line 107
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 108
    invoke-virtual {p0, p1}, Lorg/apache/httpcore/b/c/b;->a(Lorg/apache/httpcore/m;)V

    .line 109
    invoke-interface {p1}, Lorg/apache/httpcore/m;->d()Lorg/apache/httpcore/g;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Lorg/apache/httpcore/g;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-interface {p1}, Lorg/apache/httpcore/g;->a()Lorg/apache/httpcore/e;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lorg/apache/httpcore/b/c/b;->a:Lorg/apache/httpcore/c/h;

    iget-object v2, p0, Lorg/apache/httpcore/b/c/b;->c:Lorg/apache/httpcore/message/m;

    iget-object v3, p0, Lorg/apache/httpcore/b/c/b;->b:Lorg/apache/httpcore/util/CharArrayBuffer;

    .line 112
    invoke-interface {v2, v3, v0}, Lorg/apache/httpcore/message/m;->a(Lorg/apache/httpcore/util/CharArrayBuffer;Lorg/apache/httpcore/e;)Lorg/apache/httpcore/util/CharArrayBuffer;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/httpcore/c/h;->a(Lorg/apache/httpcore/util/CharArrayBuffer;)V

    goto :goto_0

    .line 114
    :cond_0
    iget-object p1, p0, Lorg/apache/httpcore/b/c/b;->b:Lorg/apache/httpcore/util/CharArrayBuffer;

    invoke-virtual {p1}, Lorg/apache/httpcore/util/CharArrayBuffer;->clear()V

    .line 115
    iget-object p1, p0, Lorg/apache/httpcore/b/c/b;->a:Lorg/apache/httpcore/c/h;

    iget-object v0, p0, Lorg/apache/httpcore/b/c/b;->b:Lorg/apache/httpcore/util/CharArrayBuffer;

    invoke-interface {p1, v0}, Lorg/apache/httpcore/c/h;->a(Lorg/apache/httpcore/util/CharArrayBuffer;)V

    return-void
.end method
