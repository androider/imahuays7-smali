.class Lorg/apache/httpcore/b/a/f;
.super Ljava/lang/Object;
.source "Worker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lorg/apache/httpcore/d/l;

.field private final b:Lorg/apache/httpcore/t;

.field private final c:Lorg/apache/httpcore/c;


# direct methods
.method constructor <init>(Lorg/apache/httpcore/d/l;Lorg/apache/httpcore/t;Lorg/apache/httpcore/c;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/apache/httpcore/b/a/f;->a:Lorg/apache/httpcore/d/l;

    .line 52
    iput-object p2, p0, Lorg/apache/httpcore/b/a/f;->b:Lorg/apache/httpcore/t;

    .line 53
    iput-object p3, p0, Lorg/apache/httpcore/b/a/f;->c:Lorg/apache/httpcore/c;

    return-void
.end method


# virtual methods
.method public a()Lorg/apache/httpcore/t;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/apache/httpcore/b/a/f;->b:Lorg/apache/httpcore/t;

    return-object v0
.end method

.method public run()V
    .locals 4

    .line 63
    :try_start_0
    new-instance v0, Lorg/apache/httpcore/d/a;

    invoke-direct {v0}, Lorg/apache/httpcore/d/a;-><init>()V

    .line 64
    invoke-static {v0}, Lorg/apache/httpcore/d/e;->a(Lorg/apache/httpcore/d/d;)Lorg/apache/httpcore/d/e;

    move-result-object v1

    .line 65
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/httpcore/b/a/f;->b:Lorg/apache/httpcore/t;

    invoke-interface {v2}, Lorg/apache/httpcore/t;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    iget-object v2, p0, Lorg/apache/httpcore/b/a/f;->a:Lorg/apache/httpcore/d/l;

    iget-object v3, p0, Lorg/apache/httpcore/b/a/f;->b:Lorg/apache/httpcore/t;

    invoke-virtual {v2, v3, v1}, Lorg/apache/httpcore/d/l;->a(Lorg/apache/httpcore/t;Lorg/apache/httpcore/d/d;)V

    .line 67
    invoke-virtual {v0}, Lorg/apache/httpcore/d/a;->a()V

    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p0, Lorg/apache/httpcore/b/a/f;->b:Lorg/apache/httpcore/t;

    invoke-interface {v0}, Lorg/apache/httpcore/t;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :try_start_1
    iget-object v0, p0, Lorg/apache/httpcore/b/a/f;->b:Lorg/apache/httpcore/t;

    invoke-interface {v0}, Lorg/apache/httpcore/t;->b()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 71
    :try_start_2
    iget-object v1, p0, Lorg/apache/httpcore/b/a/f;->c:Lorg/apache/httpcore/c;

    invoke-interface {v1, v0}, Lorg/apache/httpcore/c;->a(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    :try_start_3
    iget-object v0, p0, Lorg/apache/httpcore/b/a/f;->b:Lorg/apache/httpcore/t;

    invoke-interface {v0}, Lorg/apache/httpcore/t;->b()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 76
    iget-object v1, p0, Lorg/apache/httpcore/b/a/f;->c:Lorg/apache/httpcore/c;

    invoke-interface {v1, v0}, Lorg/apache/httpcore/c;->a(Ljava/lang/Exception;)V

    :goto_1
    return-void

    .line 74
    :goto_2
    :try_start_4
    iget-object v1, p0, Lorg/apache/httpcore/b/a/f;->b:Lorg/apache/httpcore/t;

    invoke-interface {v1}, Lorg/apache/httpcore/t;->b()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    .line 76
    iget-object v2, p0, Lorg/apache/httpcore/b/a/f;->c:Lorg/apache/httpcore/c;

    invoke-interface {v2, v1}, Lorg/apache/httpcore/c;->a(Ljava/lang/Exception;)V

    .line 77
    :goto_3
    throw v0
.end method
