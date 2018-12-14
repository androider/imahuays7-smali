.class public final Lio/rx_cache2/internal/a/c;
.super Ljava/lang/Object;
.source "FileEncryptor.java"


# instance fields
.field private final a:Lio/rx_cache2/internal/a/b;


# direct methods
.method public constructor <init>(Lio/rx_cache2/internal/a/b;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lio/rx_cache2/internal/a/c;->a:Lio/rx_cache2/internal/a/b;

    return-void
.end method

.method private a(Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 9

    const/4 v0, 0x0

    .line 62
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 63
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-wide/16 v3, 0x0

    .line 65
    :try_start_2
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    move-object v2, v1

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 66
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    .line 72
    :try_start_3
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    :cond_0
    if-eqz v8, :cond_2

    .line 75
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_6

    :catch_1
    move-exception p1

    move-object v8, v0

    :goto_0
    move-object v0, v1

    goto :goto_1

    :catchall_2
    move-exception p1

    move-object v1, v0

    goto :goto_6

    :catch_2
    move-exception p1

    move-object v8, v0

    .line 68
    :goto_1
    :try_start_4
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v0, :cond_1

    .line 72
    :try_start_5
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_2

    :catch_3
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_2
    if-eqz v8, :cond_2

    .line 75
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    .line 78
    :goto_3
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    return-object p2

    :catchall_3
    move-exception p1

    move-object v1, v0

    :goto_5
    move-object v0, v8

    :goto_6
    if-eqz v1, :cond_3

    .line 72
    :try_start_6
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_7

    :catch_4
    move-exception p2

    goto :goto_8

    :cond_3
    :goto_7
    if-eqz v0, :cond_4

    .line 75
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_9

    .line 78
    :goto_8
    invoke-static {p2}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 79
    :cond_4
    :goto_9
    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 4

    .line 35
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    .line 37
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 38
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v1}, Lio/rx_cache2/internal/a/c;->a(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object p2

    .line 39
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lio/rx_cache2/internal/a/c;->a:Lio/rx_cache2/internal/a/b;

    invoke-interface {v0, p1, p2, v1}, Lio/rx_cache2/internal/a/b;->a(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V

    .line 42
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    return-object v1
.end method

.method public b(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 3

    .line 48
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    .line 50
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 51
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-tmp"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lio/rx_cache2/internal/a/c;->a:Lio/rx_cache2/internal/a/b;

    invoke-interface {v0, p1, p2, v1}, Lio/rx_cache2/internal/a/b;->b(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V

    return-object v1
.end method
