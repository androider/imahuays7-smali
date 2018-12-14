.class Lcom/mh/movie/core/b/e$2;
.super Ljava/lang/Object;
.source "M3u8Down.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/b/e;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Ljava/io/File;

.field final synthetic d:J

.field final synthetic e:Lcom/mh/movie/core/b/d;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/mh/movie/core/b/e;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/b/e;Ljava/lang/String;ILjava/io/File;JLcom/mh/movie/core/b/d;Ljava/lang/String;)V
    .locals 0

    .line 456
    iput-object p1, p0, Lcom/mh/movie/core/b/e$2;->g:Lcom/mh/movie/core/b/e;

    iput-object p2, p0, Lcom/mh/movie/core/b/e$2;->a:Ljava/lang/String;

    iput p3, p0, Lcom/mh/movie/core/b/e$2;->b:I

    iput-object p4, p0, Lcom/mh/movie/core/b/e$2;->c:Ljava/io/File;

    iput-wide p5, p0, Lcom/mh/movie/core/b/e$2;->d:J

    iput-object p7, p0, Lcom/mh/movie/core/b/e$2;->e:Lcom/mh/movie/core/b/d;

    iput-object p8, p0, Lcom/mh/movie/core/b/e$2;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    const-string p1, "down error "

    const-string p2, "http\u8bf7\u6c42\u8d85\u65f6"

    .line 539
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object p1, p0, Lcom/mh/movie/core/b/e$2;->g:Lcom/mh/movie/core/b/e;

    iget-object p2, p0, Lcom/mh/movie/core/b/e$2;->a:Ljava/lang/String;

    iget v0, p0, Lcom/mh/movie/core/b/e$2;->b:I

    const/16 v1, 0xc

    invoke-static {p1, v1, p2, v0}, Lcom/mh/movie/core/b/e;->a(Lcom/mh/movie/core/b/e;ILjava/lang/Object;I)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 459
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->code()I

    move-result v2

    const/16 v3, 0xc

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0xc8

    if-eq v2, v6, :cond_0

    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->code()I

    move-result v2

    const/16 v6, 0xce

    if-eq v2, v6, :cond_0

    .line 460
    iget-object v2, v1, Lcom/mh/movie/core/b/e$2;->g:Lcom/mh/movie/core/b/e;

    new-array v4, v4, [Ljava/io/Closeable;

    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lcom/mh/movie/core/b/e;->a(Lcom/mh/movie/core/b/e;[Ljava/io/Closeable;)V

    .line 462
    iget-object v2, v1, Lcom/mh/movie/core/b/e$2;->g:Lcom/mh/movie/core/b/e;

    iget-object v4, v1, Lcom/mh/movie/core/b/e$2;->a:Ljava/lang/String;

    iget v5, v1, Lcom/mh/movie/core/b/e$2;->b:I

    invoke-static {v2, v3, v4, v5}, Lcom/mh/movie/core/b/e;->a(Lcom/mh/movie/core/b/e;ILjava/lang/Object;I)V

    return-void

    .line 466
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v6

    .line 468
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v2

    .line 469
    new-instance v8, Ljava/io/RandomAccessFile;

    iget-object v9, v1, Lcom/mh/movie/core/b/e$2;->c:Ljava/io/File;

    const-string v10, "rw"

    invoke-direct {v8, v9, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 470
    iget-wide v9, v1, Lcom/mh/movie/core/b/e$2;->d:J

    invoke-virtual {v8, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v9, 0x2000

    .line 473
    new-array v9, v9, [B

    :cond_1
    :goto_0
    const/4 v10, 0x2

    const/4 v11, 0x3

    .line 478
    :try_start_0
    invoke-virtual {v2, v9}, Ljava/io/InputStream;->read([B)I

    move-result v12

    if-lez v12, :cond_5

    .line 479
    invoke-static {}, Lcom/mh/movie/core/b/f;->a()Lcom/mh/movie/core/b/f;

    move-result-object v13

    iget v13, v13, Lcom/mh/movie/core/b/f;->a:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v13, :cond_2

    .line 481
    :try_start_1
    invoke-static {}, Lcom/mh/movie/core/b/f;->a()Lcom/mh/movie/core/b/f;

    move-result-object v13

    iget v13, v13, Lcom/mh/movie/core/b/f;->a:I

    mul-int/lit8 v13, v13, 0x2

    int-to-long v13, v13

    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v13, v0

    .line 485
    :try_start_2
    invoke-static {v13}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 489
    :cond_2
    :goto_1
    iget-object v13, v1, Lcom/mh/movie/core/b/e$2;->g:Lcom/mh/movie/core/b/e;

    invoke-static {v13}, Lcom/mh/movie/core/b/e;->a(Lcom/mh/movie/core/b/e;)I

    move-result v13

    if-lez v13, :cond_4

    .line 491
    iget-object v3, v1, Lcom/mh/movie/core/b/e$2;->e:Lcom/mh/movie/core/b/d;

    sget-byte v6, Lcom/mh/movie/core/b/d;->a:B

    iput-byte v6, v3, Lcom/mh/movie/core/b/d;->g:B

    .line 492
    iget-object v3, v1, Lcom/mh/movie/core/b/e$2;->g:Lcom/mh/movie/core/b/e;

    new-array v6, v11, [Ljava/io/Closeable;

    aput-object v8, v6, v5

    aput-object v2, v6, v4

    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v3, v6}, Lcom/mh/movie/core/b/e;->a(Lcom/mh/movie/core/b/e;[Ljava/io/Closeable;)V

    .line 493
    iget-object v3, v1, Lcom/mh/movie/core/b/e$2;->g:Lcom/mh/movie/core/b/e;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, v1, Lcom/mh/movie/core/b/e$2;->b:I

    invoke-static {v3, v11, v6, v7}, Lcom/mh/movie/core/b/e;->a(Lcom/mh/movie/core/b/e;ILjava/lang/Object;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 529
    iget-object v3, v1, Lcom/mh/movie/core/b/e$2;->g:Lcom/mh/movie/core/b/e;

    new-array v6, v11, [Ljava/io/Closeable;

    aput-object v8, v6, v5

    aput-object v2, v6, v4

    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    aput-object v2, v6, v10

    invoke-static {v3, v6}, Lcom/mh/movie/core/b/e;->a(Lcom/mh/movie/core/b/e;[Ljava/io/Closeable;)V

    .line 530
    iget-object v2, v1, Lcom/mh/movie/core/b/e$2;->g:Lcom/mh/movie/core/b/e;

    invoke-static {v2}, Lcom/mh/movie/core/b/e;->a(Lcom/mh/movie/core/b/e;)I

    move-result v2

    if-lez v2, :cond_3

    const-string v2, "down error "

    const-string v3, "http\u8bf7\u6c42\u4ee5\u53ca\u8bfb\u5199\u5b8c\u6210\u65f6\u6682\u505c"

    .line 531
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v2, v1, Lcom/mh/movie/core/b/e$2;->g:Lcom/mh/movie/core/b/e;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v1, Lcom/mh/movie/core/b/e$2;->b:I

    invoke-static {v2, v11, v3, v4}, Lcom/mh/movie/core/b/e;->a(Lcom/mh/movie/core/b/e;ILjava/lang/Object;I)V

    :cond_3
    return-void

    .line 497
    :cond_4
    :try_start_3
    invoke-virtual {v8, v9, v5, v12}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 498
    iget-object v13, v1, Lcom/mh/movie/core/b/e$2;->g:Lcom/mh/movie/core/b/e;

    invoke-static {v13}, Lcom/mh/movie/core/b/e;->b(Lcom/mh/movie/core/b/e;)[F

    move-result-object v13

    iget v14, v1, Lcom/mh/movie/core/b/e$2;->b:I

    aget v15, v13, v14

    int-to-float v12, v12

    add-float/2addr v15, v12

    aput v15, v13, v14

    .line 500
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 502
    iget-object v14, v1, Lcom/mh/movie/core/b/e$2;->g:Lcom/mh/movie/core/b/e;

    invoke-static {v14}, Lcom/mh/movie/core/b/e;->c(Lcom/mh/movie/core/b/e;)[J

    move-result-object v14

    iget v15, v1, Lcom/mh/movie/core/b/e$2;->b:I

    aget-wide v15, v14, v15

    const/4 v14, 0x0

    sub-long v17, v12, v15

    const-wide/16 v14, 0x3e8

    cmp-long v16, v17, v14

    if-ltz v16, :cond_1

    .line 503
    iget-object v14, v1, Lcom/mh/movie/core/b/e$2;->g:Lcom/mh/movie/core/b/e;

    invoke-static {v14}, Lcom/mh/movie/core/b/e;->c(Lcom/mh/movie/core/b/e;)[J

    move-result-object v14

    iget v15, v1, Lcom/mh/movie/core/b/e$2;->b:I

    aput-wide v12, v14, v15

    .line 504
    iget-object v12, v1, Lcom/mh/movie/core/b/e$2;->g:Lcom/mh/movie/core/b/e;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v12, v4, v13, v5}, Lcom/mh/movie/core/b/e;->a(Lcom/mh/movie/core/b/e;ILjava/lang/Object;I)V

    goto/16 :goto_0

    .line 508
    :cond_5
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v12

    .line 509
    iget-wide v14, v1, Lcom/mh/movie/core/b/e$2;->d:J

    const-wide/16 v16, 0x0

    cmp-long v9, v14, v16

    if-lez v9, :cond_6

    .line 510
    iget-wide v14, v1, Lcom/mh/movie/core/b/e$2;->d:J

    const/4 v9, 0x0

    sub-long v16, v12, v14

    move-wide/from16 v12, v16

    :cond_6
    const-string v9, "\u4e0b\u8f7dts\u7ed3\u675f"

    const-string v14, "%s:\u8bf7\u6c42\u957f\u5ea6:%s mtsdownladsiz:%s"

    .line 512
    new-array v15, v11, [Ljava/lang/Object;

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v5

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v4

    iget-object v11, v1, Lcom/mh/movie/core/b/e$2;->g:Lcom/mh/movie/core/b/e;

    invoke-static {v11}, Lcom/mh/movie/core/b/e;->b(Lcom/mh/movie/core/b/e;)[F

    move-result-object v11

    iget v3, v1, Lcom/mh/movie/core/b/e$2;->b:I

    aget v3, v11, v3

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v15, v10

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v14, 0x400

    cmp-long v3, v12, v14

    const/4 v9, 0x0

    if-lez v3, :cond_7

    const-wide/16 v14, -0x1

    cmp-long v3, v6, v14

    if-eqz v3, :cond_8

    :cond_7
    cmp-long v3, v12, v6

    if-nez v3, :cond_9

    .line 514
    :cond_8
    iget-object v3, v1, Lcom/mh/movie/core/b/e$2;->g:Lcom/mh/movie/core/b/e;

    iget-object v6, v1, Lcom/mh/movie/core/b/e$2;->g:Lcom/mh/movie/core/b/e;

    invoke-static {v6}, Lcom/mh/movie/core/b/e;->d(Lcom/mh/movie/core/b/e;)J

    move-result-wide v6

    long-to-float v6, v6

    iget-object v7, v1, Lcom/mh/movie/core/b/e$2;->g:Lcom/mh/movie/core/b/e;

    invoke-static {v7}, Lcom/mh/movie/core/b/e;->b(Lcom/mh/movie/core/b/e;)[F

    move-result-object v7

    iget v11, v1, Lcom/mh/movie/core/b/e$2;->b:I

    aget v7, v7, v11

    add-float/2addr v6, v7

    float-to-long v6, v6

    invoke-static {v3, v6, v7}, Lcom/mh/movie/core/b/e;->a(Lcom/mh/movie/core/b/e;J)J

    .line 515
    iget-object v3, v1, Lcom/mh/movie/core/b/e$2;->g:Lcom/mh/movie/core/b/e;

    invoke-static {v3}, Lcom/mh/movie/core/b/e;->b(Lcom/mh/movie/core/b/e;)[F

    move-result-object v3

    iget v6, v1, Lcom/mh/movie/core/b/e$2;->b:I

    aput v9, v3, v6

    .line 516
    iget-object v3, v1, Lcom/mh/movie/core/b/e$2;->c:Ljava/io/File;

    new-instance v6, Ljava/io/File;

    iget-object v7, v1, Lcom/mh/movie/core/b/e$2;->f:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 518
    iget-object v3, v1, Lcom/mh/movie/core/b/e$2;->g:Lcom/mh/movie/core/b/e;

    const/16 v6, 0xb

    iget-object v7, v1, Lcom/mh/movie/core/b/e$2;->a:Ljava/lang/String;

    iget v9, v1, Lcom/mh/movie/core/b/e$2;->b:I

    invoke-static {v3, v6, v7, v9}, Lcom/mh/movie/core/b/e;->a(Lcom/mh/movie/core/b/e;ILjava/lang/Object;I)V

    goto :goto_2

    :cond_9
    const-string v3, "\u4e0b\u8f7dts\u51fa\u9519 \u5927\u5c0f\u4e0d\u5bf9"

    const-string v11, "\u4e0b\u8f7d\u5927\u5c0f%s-\u7406\u8bba\u5927\u5c0f%s"

    .line 520
    new-array v14, v10, [Ljava/lang/Object;

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v14, v5

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v14, v4

    invoke-static {v11, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object v3, v1, Lcom/mh/movie/core/b/e$2;->g:Lcom/mh/movie/core/b/e;

    invoke-static {v3}, Lcom/mh/movie/core/b/e;->b(Lcom/mh/movie/core/b/e;)[F

    move-result-object v3

    iget v6, v1, Lcom/mh/movie/core/b/e$2;->b:I

    aput v9, v3, v6

    .line 522
    iget-object v3, v1, Lcom/mh/movie/core/b/e$2;->c:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 523
    iget-object v3, v1, Lcom/mh/movie/core/b/e$2;->g:Lcom/mh/movie/core/b/e;

    iget-object v6, v1, Lcom/mh/movie/core/b/e$2;->a:Ljava/lang/String;

    iget v7, v1, Lcom/mh/movie/core/b/e$2;->b:I

    const/16 v9, 0xc

    invoke-static {v3, v9, v6, v7}, Lcom/mh/movie/core/b/e;->a(Lcom/mh/movie/core/b/e;ILjava/lang/Object;I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 529
    :goto_2
    iget-object v3, v1, Lcom/mh/movie/core/b/e$2;->g:Lcom/mh/movie/core/b/e;

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/io/Closeable;

    aput-object v8, v7, v5

    aput-object v2, v7, v4

    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    aput-object v2, v7, v10

    invoke-static {v3, v7}, Lcom/mh/movie/core/b/e;->a(Lcom/mh/movie/core/b/e;[Ljava/io/Closeable;)V

    .line 530
    iget-object v2, v1, Lcom/mh/movie/core/b/e$2;->g:Lcom/mh/movie/core/b/e;

    invoke-static {v2}, Lcom/mh/movie/core/b/e;->a(Lcom/mh/movie/core/b/e;)I

    move-result v2

    if-lez v2, :cond_a

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v3, v0

    goto :goto_4

    :catch_1
    :try_start_4
    const-string v3, "down error "

    const-string v6, "\u7f13\u5b58\u8bfb\u5199IOException"

    .line 526
    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v3, v1, Lcom/mh/movie/core/b/e$2;->g:Lcom/mh/movie/core/b/e;

    const/16 v6, 0xd

    iget-object v7, v1, Lcom/mh/movie/core/b/e$2;->a:Ljava/lang/String;

    iget v9, v1, Lcom/mh/movie/core/b/e$2;->b:I

    invoke-static {v3, v6, v7, v9}, Lcom/mh/movie/core/b/e;->a(Lcom/mh/movie/core/b/e;ILjava/lang/Object;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 529
    iget-object v3, v1, Lcom/mh/movie/core/b/e$2;->g:Lcom/mh/movie/core/b/e;

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/io/Closeable;

    aput-object v8, v7, v5

    aput-object v2, v7, v4

    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    aput-object v2, v7, v10

    invoke-static {v3, v7}, Lcom/mh/movie/core/b/e;->a(Lcom/mh/movie/core/b/e;[Ljava/io/Closeable;)V

    .line 530
    iget-object v2, v1, Lcom/mh/movie/core/b/e$2;->g:Lcom/mh/movie/core/b/e;

    invoke-static {v2}, Lcom/mh/movie/core/b/e;->a(Lcom/mh/movie/core/b/e;)I

    move-result v2

    if-lez v2, :cond_a

    :goto_3
    const-string v2, "down error "

    const-string v3, "http\u8bf7\u6c42\u4ee5\u53ca\u8bfb\u5199\u5b8c\u6210\u65f6\u6682\u505c"

    .line 531
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v2, v1, Lcom/mh/movie/core/b/e$2;->g:Lcom/mh/movie/core/b/e;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v1, Lcom/mh/movie/core/b/e$2;->b:I

    const/4 v5, 0x3

    invoke-static {v2, v5, v3, v4}, Lcom/mh/movie/core/b/e;->a(Lcom/mh/movie/core/b/e;ILjava/lang/Object;I)V

    :cond_a
    return-void

    .line 529
    :goto_4
    iget-object v6, v1, Lcom/mh/movie/core/b/e$2;->g:Lcom/mh/movie/core/b/e;

    const/4 v7, 0x3

    new-array v9, v7, [Ljava/io/Closeable;

    aput-object v8, v9, v5

    aput-object v2, v9, v4

    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    aput-object v2, v9, v10

    invoke-static {v6, v9}, Lcom/mh/movie/core/b/e;->a(Lcom/mh/movie/core/b/e;[Ljava/io/Closeable;)V

    .line 530
    iget-object v2, v1, Lcom/mh/movie/core/b/e$2;->g:Lcom/mh/movie/core/b/e;

    invoke-static {v2}, Lcom/mh/movie/core/b/e;->a(Lcom/mh/movie/core/b/e;)I

    move-result v2

    if-lez v2, :cond_b

    const-string v2, "down error "

    const-string v4, "http\u8bf7\u6c42\u4ee5\u53ca\u8bfb\u5199\u5b8c\u6210\u65f6\u6682\u505c"

    .line 531
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v2, v1, Lcom/mh/movie/core/b/e$2;->g:Lcom/mh/movie/core/b/e;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v1, Lcom/mh/movie/core/b/e$2;->b:I

    const/4 v6, 0x3

    invoke-static {v2, v6, v4, v5}, Lcom/mh/movie/core/b/e;->a(Lcom/mh/movie/core/b/e;ILjava/lang/Object;I)V

    :cond_b
    throw v3
.end method
