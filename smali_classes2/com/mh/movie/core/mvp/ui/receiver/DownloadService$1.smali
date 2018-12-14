.class Lcom/mh/movie/core/mvp/ui/receiver/DownloadService$1;
.super Ljava/lang/Object;
.source "DownloadService.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/io/File;

.field final synthetic c:Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;JLjava/io/File;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService$1;->c:Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;

    iput-wide p2, p0, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService$1;->a:J

    iput-object p4, p0, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService$1;->b:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    .line 235
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService$1;->c:Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;

    const/16 p2, 0x111

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;->a(Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;II)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 188
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->code()I

    move-result v1

    const/16 v2, 0x111

    const/4 v3, 0x0

    const/16 v4, 0xce

    if-eq v1, v4, :cond_0

    .line 189
    iget-object v1, v0, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService$1;->c:Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;

    invoke-static {v1, v2, v3}, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;->a(Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;II)V

    return-void

    .line 192
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService$1;->a:J

    add-long v8, v4, v6

    .line 193
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v1

    const/16 v5, 0x1000

    .line 197
    new-array v5, v5, [B

    .line 199
    iget-wide v6, v0, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService$1;->a:J

    const/4 v14, 0x3

    .line 202
    :try_start_0
    new-instance v15, Ljava/io/RandomAccessFile;

    iget-object v4, v0, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService$1;->b:Ljava/io/File;

    const-string v10, "rw"

    invoke-direct {v15, v4, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :try_start_1
    iget-wide v10, v0, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService$1;->a:J

    invoke-virtual {v15, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    const-wide/16 v10, 0x0

    .line 205
    :goto_0
    invoke-virtual {v1, v5}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_2

    .line 206
    invoke-virtual {v15, v5, v3, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    int-to-long v12, v4

    add-long v16, v6, v12

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v4, 0x0

    sub-long v12, v6, v10

    const-wide/16 v6, 0x3e8

    cmp-long v4, v12, v6

    if-lez v4, :cond_1

    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 214
    iget-object v4, v0, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService$1;->c:Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;

    const-wide/16 v6, 0x64

    mul-long v6, v6, v16

    div-long/2addr v6, v8

    long-to-int v6, v6

    invoke-static {v4, v6}, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;->a(Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;I)V

    :cond_1
    move-wide/from16 v6, v16

    goto :goto_0

    .line 218
    :cond_2
    iget-object v4, v0, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService$1;->c:Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;

    new-array v5, v14, [Ljava/io/Closeable;

    aput-object v15, v5, v3

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;->a(Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;[Ljava/io/Closeable;)V

    .line 221
    iget-object v4, v0, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService$1;->c:Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;

    const/16 v5, 0x11

    const/16 v6, 0x64

    invoke-static {v4, v5, v6}, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;->a(Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;II)V

    .line 222
    iget-object v4, v0, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService$1;->c:Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;

    invoke-static {v4}, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;->a(Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;)Landroid/app/NotificationManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    const/4 v15, 0x0

    :catch_1
    if-eqz v15, :cond_3

    .line 226
    iget-object v4, v0, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService$1;->c:Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;

    new-array v5, v14, [Ljava/io/Closeable;

    aput-object v15, v5, v3

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    const/4 v6, 0x2

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;->a(Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;[Ljava/io/Closeable;)V

    .line 228
    :cond_3
    iget-object v1, v0, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService$1;->c:Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;

    invoke-static {v1, v2, v3}, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;->a(Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;II)V

    :goto_1
    return-void
.end method
