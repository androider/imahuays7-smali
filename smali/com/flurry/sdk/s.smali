.class public abstract Lcom/flurry/sdk/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final i:Ljava/lang/String; = "s"

.field private static j:Ljava/util/concurrent/ExecutorService;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Lcom/flurry/sdk/h;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field public h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 44
    sget-object v0, Lcom/flurry/sdk/s;->i:Ljava/lang/String;

    const-string v1, "Submit transport task."

    invoke-static {v0, v1}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    sget-object v0, Lcom/flurry/sdk/s;->j:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 47
    new-instance v1, Lcom/flurry/sdk/s$1;

    invoke-direct {v1}, Lcom/flurry/sdk/s$1;-><init>()V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/s;->j:Ljava/util/concurrent/ExecutorService;

    .line 57
    :cond_0
    sget-object v0, Lcom/flurry/sdk/s;->j:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected abstract a()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected a(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected abstract b()V
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/flurry/sdk/s;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/flurry/sdk/s;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/flurry/sdk/s;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/flurry/sdk/s;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/flurry/sdk/s;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Lcom/flurry/sdk/h;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/flurry/sdk/s;->b:Lcom/flurry/sdk/h;

    return-object v0
.end method

.method public run()V
    .locals 7

    .line 63
    sget-object v0, Lcom/flurry/sdk/h;->a:Lcom/flurry/sdk/h;

    iput-object v0, p0, Lcom/flurry/sdk/s;->b:Lcom/flurry/sdk/h;

    const/4 v0, 0x0

    .line 65
    :try_start_0
    invoke-virtual {p0}, Lcom/flurry/sdk/s;->a()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 66
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/s;->b:Lcom/flurry/sdk/h;

    sget-object v2, Lcom/flurry/sdk/h;->a:Lcom/flurry/sdk/h;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v0, v2, :cond_1

    if-eqz v1, :cond_0

    .line 107
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 109
    sget-object v1, Lcom/flurry/sdk/s;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/flurry/sdk/s;->b()V

    return-void

    :cond_1
    if-nez v1, :cond_3

    .line 71
    :try_start_3
    sget-object v0, Lcom/flurry/sdk/s;->i:Ljava/lang/String;

    const-string v2, "Null InputStream"

    invoke-static {v0, v2}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v0, Lcom/flurry/sdk/h;

    sget-object v2, Lcom/flurry/sdk/h$a;->c:Lcom/flurry/sdk/h$a;

    const-string v3, "Null InputStream"

    invoke-direct {v0, v2, v3}, Lcom/flurry/sdk/h;-><init>(Lcom/flurry/sdk/h$a;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/flurry/sdk/s;->b:Lcom/flurry/sdk/h;
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_2

    .line 107
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 109
    sget-object v1, Lcom/flurry/sdk/s;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/flurry/sdk/s;->b()V

    return-void

    .line 76
    :cond_3
    :try_start_5
    invoke-static {v1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v0

    .line 77
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 78
    invoke-static {v2}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v3

    const/16 v4, 0x4000

    .line 79
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 80
    :goto_2
    invoke-interface {v0, v4}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v5

    if-gez v5, :cond_8

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    if-lez v5, :cond_4

    goto :goto_5

    .line 85
    :cond_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 88
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/s;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 89
    new-instance v0, Lcom/flurry/sdk/h;

    sget-object v2, Lcom/flurry/sdk/h$a;->e:Lcom/flurry/sdk/h$a;

    const-string v3, "Signature Error."

    invoke-direct {v0, v2, v3}, Lcom/flurry/sdk/h;-><init>(Lcom/flurry/sdk/h$a;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/flurry/sdk/s;->b:Lcom/flurry/sdk/h;
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljavax/net/ssl/SSLException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_5

    .line 107
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 109
    sget-object v1, Lcom/flurry/sdk/s;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/flurry/sdk/s;->b()V

    return-void

    .line 93
    :cond_6
    :try_start_7
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const-string v3, "utf-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/flurry/sdk/s;->h:Ljava/lang/String;
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljavax/net/ssl/SSLException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v1, :cond_7

    .line 107
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    .line 109
    sget-object v1, Lcom/flurry/sdk/s;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    :cond_7
    :goto_4
    invoke-virtual {p0}, Lcom/flurry/sdk/s;->b()V

    return-void

    .line 81
    :cond_8
    :goto_5
    :try_start_9
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 82
    invoke-interface {v3, v4}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 83
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;
    :try_end_9
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljavax/net/ssl/SSLException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_e

    :catch_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    goto :goto_8

    :catch_6
    move-exception v0

    goto/16 :goto_a

    :catch_7
    move-exception v0

    goto/16 :goto_c

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_e

    :catch_8
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 103
    :goto_6
    :try_start_a
    new-instance v2, Lcom/flurry/sdk/h;

    sget-object v3, Lcom/flurry/sdk/h$a;->g:Lcom/flurry/sdk/h$a;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/flurry/sdk/h;-><init>(Lcom/flurry/sdk/h$a;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/flurry/sdk/s;->b:Lcom/flurry/sdk/h;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v1, :cond_9

    .line 107
    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_7

    :catch_9
    move-exception v0

    .line 109
    sget-object v1, Lcom/flurry/sdk/s;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    :cond_9
    :goto_7
    invoke-virtual {p0}, Lcom/flurry/sdk/s;->b()V

    return-void

    :catch_a
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 100
    :goto_8
    :try_start_c
    sget-object v2, Lcom/flurry/sdk/s;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    new-instance v2, Lcom/flurry/sdk/h;

    sget-object v3, Lcom/flurry/sdk/h$a;->c:Lcom/flurry/sdk/h$a;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/flurry/sdk/h;-><init>(Lcom/flurry/sdk/h$a;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/flurry/sdk/s;->b:Lcom/flurry/sdk/h;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v1, :cond_a

    .line 107
    :try_start_d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    goto :goto_9

    :catch_b
    move-exception v0

    .line 109
    sget-object v1, Lcom/flurry/sdk/s;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    :cond_a
    :goto_9
    invoke-virtual {p0}, Lcom/flurry/sdk/s;->b()V

    return-void

    :catch_c
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 97
    :goto_a
    :try_start_e
    sget-object v2, Lcom/flurry/sdk/s;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    new-instance v2, Lcom/flurry/sdk/h;

    sget-object v3, Lcom/flurry/sdk/h$a;->f:Lcom/flurry/sdk/h$a;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/flurry/sdk/h;-><init>(Lcom/flurry/sdk/h$a;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/flurry/sdk/s;->b:Lcom/flurry/sdk/h;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v1, :cond_b

    .line 107
    :try_start_f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_d

    goto :goto_b

    :catch_d
    move-exception v0

    .line 109
    sget-object v1, Lcom/flurry/sdk/s;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    :cond_b
    :goto_b
    invoke-virtual {p0}, Lcom/flurry/sdk/s;->b()V

    return-void

    :catch_e
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 95
    :goto_c
    :try_start_10
    new-instance v2, Lcom/flurry/sdk/h;

    sget-object v3, Lcom/flurry/sdk/h$a;->g:Lcom/flurry/sdk/h$a;

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/flurry/sdk/h;-><init>(Lcom/flurry/sdk/h$a;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/flurry/sdk/s;->b:Lcom/flurry/sdk/h;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    if-eqz v1, :cond_c

    .line 107
    :try_start_11
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_f

    goto :goto_d

    :catch_f
    move-exception v0

    .line 109
    sget-object v1, Lcom/flurry/sdk/s;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    :cond_c
    :goto_d
    invoke-virtual {p0}, Lcom/flurry/sdk/s;->b()V

    return-void

    :goto_e
    if-eqz v1, :cond_d

    .line 107
    :try_start_12
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_10

    goto :goto_f

    :catch_10
    move-exception v1

    .line 109
    sget-object v2, Lcom/flurry/sdk/s;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    :cond_d
    :goto_f
    invoke-virtual {p0}, Lcom/flurry/sdk/s;->b()V

    throw v0
.end method
