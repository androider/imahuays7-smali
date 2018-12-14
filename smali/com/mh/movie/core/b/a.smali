.class public Lcom/mh/movie/core/b/a;
.super Ljava/lang/Object;
.source "DownloadInfo.java"


# instance fields
.field private a:Z

.field private b:Lcom/mh/movie/core/mvp/model/entity/DownloadData;

.field private c:Ljava/io/File;

.field private d:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/b/a;->d:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public constructor <init>(Lcom/mh/movie/core/mvp/model/entity/DownloadData;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/b/a;->d:Ljava/util/concurrent/locks/Lock;

    .line 40
    iput-object p1, p0, Lcom/mh/movie/core/b/a;->b:Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/b/a;)Z
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/mh/movie/core/b/a;->d()Z

    move-result p0

    return p0
.end method

.method private d()Z
    .locals 5

    const/4 v0, 0x0

    .line 180
    iput-boolean v0, p0, Lcom/mh/movie/core/b/a;->a:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 183
    :try_start_0
    iget-object v2, p0, Lcom/mh/movie/core/b/a;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 184
    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lcom/mh/movie/core/b/a;->c:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :try_start_1
    invoke-virtual {p0}, Lcom/mh/movie/core/b/a;->c()Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/AesUtil;->getKey(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mh/movie/core/mvp/ui/utils/AesUtil;->encryptToHex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 188
    invoke-virtual {v2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/mh/movie/core/b/a;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 196
    :try_start_2
    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    .line 192
    :goto_0
    :try_start_3
    invoke-static {v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 194
    iget-object v1, p0, Lcom/mh/movie/core/b/a;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 196
    :try_start_4
    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    .line 198
    invoke-static {v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_1
    return v0

    :catchall_1
    move-exception v0

    .line 194
    :goto_2
    iget-object v1, p0, Lcom/mh/movie/core/b/a;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 196
    :try_start_5
    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 198
    invoke-static {v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 199
    :goto_3
    throw v0
.end method


# virtual methods
.method public a()Lcom/mh/movie/core/mvp/model/entity/DownloadData;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/mh/movie/core/b/a;->b:Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    return-object v0
.end method

.method public a(J)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/mh/movie/core/b/a;->b:Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/mh/movie/core/b/a;->b:Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    invoke-virtual {v0, p1, p2}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->setDownloadSize(J)V

    const/4 p1, 0x0

    .line 81
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/b/a;->a(Z)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 67
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mh/movie/core/b/a;->c:Ljava/io/File;

    .line 68
    iget-object p1, p0, Lcom/mh/movie/core/b/a;->b:Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    if-eqz p1, :cond_0

    .line 69
    iget-object p1, p0, Lcom/mh/movie/core/b/a;->b:Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->setLocalUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 70
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/b/a;->a(Z)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/io/File;)Z
    .locals 5

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 145
    :try_start_0
    iget-object v3, p0, Lcom/mh/movie/core/b/a;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 146
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 148
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 149
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 152
    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/utils/AesUtil;->getKey(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/AesUtil;->decryptHex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 154
    new-instance v0, Lcom/google/gson/e;

    invoke-direct {v0}, Lcom/google/gson/e;-><init>()V

    .line 155
    new-instance v2, Lcom/mh/movie/core/b/a$2;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/b/a$2;-><init>(Lcom/mh/movie/core/b/a;)V

    invoke-virtual {v2}, Lcom/mh/movie/core/b/a$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 156
    invoke-virtual {v0, p1, v2}, Lcom/google/gson/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    iput-object p1, p0, Lcom/mh/movie/core/b/a;->b:Lcom/mh/movie/core/mvp/model/entity/DownloadData;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    :cond_1
    iget-object p1, p0, Lcom/mh/movie/core/b/a;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 163
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v2, v3

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v3, v2

    goto :goto_3

    :catch_1
    move-exception p1

    .line 159
    :goto_1
    :try_start_3
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 161
    iget-object p1, p0, Lcom/mh/movie/core/b/a;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 163
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 165
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 169
    :goto_2
    iget-object p1, p0, Lcom/mh/movie/core/b/a;->b:Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1

    .line 161
    :goto_3
    iget-object v0, p0, Lcom/mh/movie/core/b/a;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 163
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    .line 165
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 166
    :goto_4
    throw p1
.end method

.method public a(Z)Z
    .locals 4

    .line 111
    iget-object v0, p0, Lcom/mh/movie/core/b/a;->b:Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    .line 116
    invoke-direct {p0}, Lcom/mh/movie/core/b/a;->d()Z

    goto :goto_0

    .line 117
    :cond_1
    iget-boolean p1, p0, Lcom/mh/movie/core/b/a;->a:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 118
    iput-boolean p1, p0, Lcom/mh/movie/core/b/a;->a:Z

    .line 120
    :try_start_0
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    .line 121
    new-instance v0, Lcom/mh/movie/core/b/a$1;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/b/a$1;-><init>(Lcom/mh/movie/core/b/a;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {p1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 128
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return v1
.end method

.method public b()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/mh/movie/core/b/a;->b:Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/mh/movie/core/b/a;->b:Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->setFinish(Z)V

    .line 91
    invoke-virtual {p0, v1}, Lcom/mh/movie/core/b/a;->a(Z)Z

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/mh/movie/core/b/a;->b:Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 102
    :cond_0
    new-instance v0, Lcom/google/gson/e;

    invoke-direct {v0}, Lcom/google/gson/e;-><init>()V

    .line 103
    iget-object v1, p0, Lcom/mh/movie/core/b/a;->b:Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    invoke-virtual {v0, v1}, Lcom/google/gson/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
