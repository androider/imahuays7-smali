.class public abstract Lcom/yanzhenjie/andserver/h/a;
.super Ljava/lang/Object;
.source "SimpleWebsite.java"

# interfaces
.implements Lcom/yanzhenjie/andserver/h/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lorg/apache/httpcore/n;)Lcom/yanzhenjie/andserver/g/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/httpcore/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    new-instance v0, Lcom/yanzhenjie/andserver/exception/NotFoundException;

    invoke-static {p1}, Lcom/yanzhenjie/andserver/f/e;->a(Lorg/apache/httpcore/n;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/yanzhenjie/andserver/exception/NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected a(Lorg/apache/httpcore/n;Lorg/apache/httpcore/q;)Lcom/yanzhenjie/andserver/g/a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/httpcore/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/andserver/h/a;->a(Lorg/apache/httpcore/n;)Lcom/yanzhenjie/andserver/g/a;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 79
    :goto_0
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public a(Lorg/apache/httpcore/n;Lorg/apache/httpcore/q;Lorg/apache/httpcore/d/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/httpcore/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/yanzhenjie/andserver/h/a;->a(Lorg/apache/httpcore/n;Lorg/apache/httpcore/q;)Lcom/yanzhenjie/andserver/g/a;

    move-result-object p1

    .line 98
    invoke-virtual {p1}, Lcom/yanzhenjie/andserver/g/a;->a()I

    move-result p3

    invoke-interface {p2, p3}, Lorg/apache/httpcore/q;->a(I)V

    .line 99
    invoke-virtual {p1}, Lcom/yanzhenjie/andserver/g/a;->c()Lorg/apache/httpcore/j;

    move-result-object p3

    invoke-interface {p2, p3}, Lorg/apache/httpcore/q;->a(Lorg/apache/httpcore/j;)V

    .line 100
    invoke-virtual {p1}, Lcom/yanzhenjie/andserver/g/a;->b()[Lorg/apache/httpcore/e;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/apache/httpcore/q;->a([Lorg/apache/httpcore/e;)V

    return-void
.end method
