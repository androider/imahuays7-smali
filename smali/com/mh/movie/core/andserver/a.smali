.class public Lcom/mh/movie/core/andserver/a;
.super Lcom/yanzhenjie/andserver/h/a;
.source "MyStorageWebsite.java"

# interfaces
.implements Lcom/yanzhenjie/andserver/d/a;
.implements Lcom/yanzhenjie/andserver/d/b;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/yanzhenjie/andserver/h/a;-><init>()V

    const-string v0, "test.ts"

    .line 67
    iput-object v0, p0, Lcom/mh/movie/core/andserver/a;->b:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/mh/movie/core/andserver/a;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/io/File;)Lcom/yanzhenjie/andserver/g/a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yanzhenjie/andserver/f/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    new-instance v1, Lorg/apache/httpcore/entity/e;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/apache/httpcore/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/httpcore/entity/ContentType;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lorg/apache/httpcore/entity/e;-><init>(Ljava/io/File;Lorg/apache/httpcore/entity/ContentType;)V

    .line 108
    new-instance p1, Lcom/yanzhenjie/andserver/g/a;

    const/16 v0, 0xc8

    invoke-direct {p1, v0, v1}, Lcom/yanzhenjie/andserver/g/a;-><init>(ILorg/apache/httpcore/j;)V

    return-object p1
.end method

.method private b(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    const-string v0, "/"

    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/mh/movie/core/andserver/a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/mh/movie/core/andserver/a;->b:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p1

    .line 75
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mh/movie/core/andserver/a;->a:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 77
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v0

    .line 80
    :cond_1
    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lcom/mh/movie/core/andserver/a;->b:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a(Lorg/apache/httpcore/n;)Lcom/yanzhenjie/andserver/g/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/httpcore/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-static {p1}, Lcom/yanzhenjie/andserver/f/e;->a(Lorg/apache/httpcore/n;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/andserver/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 93
    invoke-direct {p0, p1}, Lcom/mh/movie/core/andserver/a;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/yanzhenjie/andserver/exception/NotFoundException;

    invoke-direct {v0, p1}, Lcom/yanzhenjie/andserver/exception/NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    invoke-direct {p0, v0}, Lcom/mh/movie/core/andserver/a;->a(Ljava/io/File;)Lcom/yanzhenjie/andserver/g/a;

    move-result-object p1

    return-object p1
.end method

.method public a(Lorg/apache/httpcore/n;Lorg/apache/httpcore/d/d;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/httpcore/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-static {p1}, Lcom/yanzhenjie/andserver/f/e;->a(Lorg/apache/httpcore/n;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "/"

    .line 56
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, "/"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/yanzhenjie/andserver/f/e;->a(Lorg/apache/httpcore/n;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/andserver/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 57
    :goto_0
    invoke-direct {p0, p1}, Lcom/mh/movie/core/andserver/a;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public b(Lorg/apache/httpcore/n;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    invoke-static {p1}, Lcom/yanzhenjie/andserver/f/e;->a(Lorg/apache/httpcore/n;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/andserver/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 114
    invoke-direct {p0, p1}, Lcom/mh/movie/core/andserver/a;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 116
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public c(Lorg/apache/httpcore/n;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    invoke-static {p1}, Lcom/yanzhenjie/andserver/f/e;->a(Lorg/apache/httpcore/n;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/andserver/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-direct {p0, p1}, Lcom/mh/movie/core/andserver/a;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 125
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 126
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    .line 128
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
