.class Lcom/mh/movie/core/b/e$1;
.super Ljava/lang/Object;
.source "M3u8Down.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/b/e;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mh/movie/core/b/e;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/b/e;Ljava/lang/String;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/mh/movie/core/b/e$1;->b:Lcom/mh/movie/core/b/e;

    iput-object p2, p0, Lcom/mh/movie/core/b/e$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    .line 216
    iget-object p1, p0, Lcom/mh/movie/core/b/e$1;->b:Lcom/mh/movie/core/b/e;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {p1, v1, v0, p2}, Lcom/mh/movie/core/b/e;->a(Lcom/mh/movie/core/b/e;ILjava/lang/Object;I)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/mh/movie/core/b/e$1;->a:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 207
    :cond_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 209
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 211
    iget-object p1, p0, Lcom/mh/movie/core/b/e$1;->b:Lcom/mh/movie/core/b/e;

    const/16 p2, 0x8

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, p2, v1, v0}, Lcom/mh/movie/core/b/e;->a(Lcom/mh/movie/core/b/e;ILjava/lang/Object;I)V

    return-void
.end method
