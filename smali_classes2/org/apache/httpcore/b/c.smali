.class public Lorg/apache/httpcore/b/c;
.super Lorg/apache/httpcore/b/a;
.source "DefaultBHttpServerConnection.java"

# interfaces
.implements Lorg/apache/httpcore/t;


# instance fields
.field private final a:Lorg/apache/httpcore/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/httpcore/c/b<",
            "Lorg/apache/httpcore/n;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lorg/apache/httpcore/c/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/httpcore/c/d<",
            "Lorg/apache/httpcore/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILjava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lorg/apache/httpcore/a/b;Lorg/apache/httpcore/entity/d;Lorg/apache/httpcore/entity/d;Lorg/apache/httpcore/c/c;Lorg/apache/httpcore/c/e;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/nio/charset/CharsetDecoder;",
            "Ljava/nio/charset/CharsetEncoder;",
            "Lorg/apache/httpcore/a/b;",
            "Lorg/apache/httpcore/entity/d;",
            "Lorg/apache/httpcore/entity/d;",
            "Lorg/apache/httpcore/c/c<",
            "Lorg/apache/httpcore/n;",
            ">;",
            "Lorg/apache/httpcore/c/e<",
            "Lorg/apache/httpcore/q;",
            ">;)V"
        }
    .end annotation

    move-object v8, p0

    if-eqz p6, :cond_0

    move-object v6, p6

    goto :goto_0

    .line 94
    :cond_0
    sget-object v0, Lorg/apache/httpcore/b/b/a;->a:Lorg/apache/httpcore/b/b/a;

    move-object v6, v0

    :goto_0
    move-object v0, v8

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/apache/httpcore/b/a;-><init>(IILjava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lorg/apache/httpcore/a/b;Lorg/apache/httpcore/entity/d;Lorg/apache/httpcore/entity/d;)V

    if-eqz p8, :cond_1

    move-object/from16 v0, p8

    goto :goto_1

    .line 97
    :cond_1
    sget-object v0, Lorg/apache/httpcore/b/c/h;->a:Lorg/apache/httpcore/b/c/h;

    .line 98
    :goto_1
    invoke-virtual {v8}, Lorg/apache/httpcore/b/c;->f()Lorg/apache/httpcore/c/g;

    move-result-object v1

    move-object v2, p5

    invoke-interface {v0, v1, v2}, Lorg/apache/httpcore/c/c;->a(Lorg/apache/httpcore/c/g;Lorg/apache/httpcore/a/b;)Lorg/apache/httpcore/c/b;

    move-result-object v0

    iput-object v0, v8, Lorg/apache/httpcore/b/c;->a:Lorg/apache/httpcore/c/b;

    if-eqz p9, :cond_2

    move-object/from16 v0, p9

    goto :goto_2

    .line 99
    :cond_2
    sget-object v0, Lorg/apache/httpcore/b/c/j;->a:Lorg/apache/httpcore/b/c/j;

    .line 100
    :goto_2
    invoke-virtual {v8}, Lorg/apache/httpcore/b/c;->g()Lorg/apache/httpcore/c/h;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/httpcore/c/e;->a(Lorg/apache/httpcore/c/h;)Lorg/apache/httpcore/c/d;

    move-result-object v0

    iput-object v0, v8, Lorg/apache/httpcore/b/c;->b:Lorg/apache/httpcore/c/d;

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/httpcore/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/httpcore/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "HTTP request"

    .line 139
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 140
    invoke-virtual {p0}, Lorg/apache/httpcore/b/c;->e()V

    .line 141
    invoke-virtual {p0, p1}, Lorg/apache/httpcore/b/c;->b(Lorg/apache/httpcore/m;)Lorg/apache/httpcore/j;

    move-result-object v0

    .line 142
    invoke-interface {p1, v0}, Lorg/apache/httpcore/k;->a(Lorg/apache/httpcore/j;)V

    return-void
.end method

.method protected a(Lorg/apache/httpcore/n;)V
    .locals 0

    return-void
.end method

.method public a(Lorg/apache/httpcore/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/httpcore/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "HTTP response"

    .line 148
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 149
    invoke-virtual {p0}, Lorg/apache/httpcore/b/c;->e()V

    .line 150
    iget-object v0, p0, Lorg/apache/httpcore/b/c;->b:Lorg/apache/httpcore/c/d;

    invoke-interface {v0, p1}, Lorg/apache/httpcore/c/d;->b(Lorg/apache/httpcore/m;)V

    .line 151
    invoke-virtual {p0, p1}, Lorg/apache/httpcore/b/c;->c(Lorg/apache/httpcore/q;)V

    .line 152
    invoke-interface {p1}, Lorg/apache/httpcore/q;->a()Lorg/apache/httpcore/x;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/httpcore/x;->getStatusCode()I

    move-result p1

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lorg/apache/httpcore/b/c;->j()V

    :cond_0
    return-void
.end method

.method public b(Lorg/apache/httpcore/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/httpcore/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "HTTP response"

    .line 160
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 161
    invoke-virtual {p0}, Lorg/apache/httpcore/b/c;->e()V

    .line 162
    invoke-interface {p1}, Lorg/apache/httpcore/q;->b()Lorg/apache/httpcore/j;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 166
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/httpcore/b/c;->a(Lorg/apache/httpcore/m;)Ljava/io/OutputStream;

    move-result-object p1

    .line 167
    invoke-interface {v0, p1}, Lorg/apache/httpcore/j;->a(Ljava/io/OutputStream;)V

    .line 168
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public c()Lorg/apache/httpcore/n;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/httpcore/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Lorg/apache/httpcore/b/c;->e()V

    .line 130
    iget-object v0, p0, Lorg/apache/httpcore/b/c;->a:Lorg/apache/httpcore/c/b;

    invoke-interface {v0}, Lorg/apache/httpcore/c/b;->a()Lorg/apache/httpcore/m;

    move-result-object v0

    check-cast v0, Lorg/apache/httpcore/n;

    .line 131
    invoke-virtual {p0, v0}, Lorg/apache/httpcore/b/c;->a(Lorg/apache/httpcore/n;)V

    .line 132
    invoke-virtual {p0}, Lorg/apache/httpcore/b/c;->i()V

    return-object v0
.end method

.method public c(Ljava/net/Socket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    invoke-super {p0, p1}, Lorg/apache/httpcore/b/a;->c(Ljava/net/Socket;)V

    return-void
.end method

.method protected c(Lorg/apache/httpcore/q;)V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    invoke-virtual {p0}, Lorg/apache/httpcore/b/c;->e()V

    .line 174
    invoke-virtual {p0}, Lorg/apache/httpcore/b/c;->h()V

    return-void
.end method
