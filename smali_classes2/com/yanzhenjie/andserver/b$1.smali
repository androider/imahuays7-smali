.class Lcom/yanzhenjie/andserver/b$1;
.super Ljava/lang/Object;
.source "Core.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yanzhenjie/andserver/b;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yanzhenjie/andserver/b;


# direct methods
.method constructor <init>(Lcom/yanzhenjie/andserver/b;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/yanzhenjie/andserver/b$1;->a:Lcom/yanzhenjie/andserver/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 89
    new-instance v0, Lcom/yanzhenjie/andserver/c;

    invoke-direct {v0}, Lcom/yanzhenjie/andserver/c;-><init>()V

    .line 90
    iget-object v1, p0, Lcom/yanzhenjie/andserver/b$1;->a:Lcom/yanzhenjie/andserver/b;

    invoke-static {v1}, Lcom/yanzhenjie/andserver/b;->a(Lcom/yanzhenjie/andserver/b;)Lcom/yanzhenjie/andserver/c/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/andserver/c;->a(Lcom/yanzhenjie/andserver/c/a;)V

    .line 91
    iget-object v1, p0, Lcom/yanzhenjie/andserver/b$1;->a:Lcom/yanzhenjie/andserver/b;

    invoke-static {v1}, Lcom/yanzhenjie/andserver/b;->b(Lcom/yanzhenjie/andserver/b;)Lcom/yanzhenjie/andserver/h/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/andserver/c;->a(Lcom/yanzhenjie/andserver/h/b;)V

    .line 92
    iget-object v1, p0, Lcom/yanzhenjie/andserver/b$1;->a:Lcom/yanzhenjie/andserver/b;

    invoke-static {v1}, Lcom/yanzhenjie/andserver/b;->c(Lcom/yanzhenjie/andserver/b;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yanzhenjie/andserver/b$1;->a:Lcom/yanzhenjie/andserver/b;

    invoke-static {v1}, Lcom/yanzhenjie/andserver/b;->c(Lcom/yanzhenjie/andserver/b;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/yanzhenjie/andserver/b$1;->a:Lcom/yanzhenjie/andserver/b;

    invoke-static {v1}, Lcom/yanzhenjie/andserver/b;->c(Lcom/yanzhenjie/andserver/b;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 94
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 95
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yanzhenjie/andserver/d;

    .line 96
    invoke-virtual {v0, v3, v2}, Lcom/yanzhenjie/andserver/c;->a(Ljava/lang/String;Lcom/yanzhenjie/andserver/d;)V

    goto :goto_0

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/yanzhenjie/andserver/b$1;->a:Lcom/yanzhenjie/andserver/b;

    invoke-static {v1}, Lcom/yanzhenjie/andserver/b;->d(Lcom/yanzhenjie/andserver/b;)Lcom/yanzhenjie/andserver/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/andserver/c;->a(Lcom/yanzhenjie/andserver/b/a;)V

    .line 100
    iget-object v1, p0, Lcom/yanzhenjie/andserver/b$1;->a:Lcom/yanzhenjie/andserver/b;

    invoke-static {v1}, Lcom/yanzhenjie/andserver/b;->e(Lcom/yanzhenjie/andserver/b;)Lcom/yanzhenjie/andserver/exception/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/andserver/c;->a(Lcom/yanzhenjie/andserver/exception/a/a;)V

    .line 102
    iget-object v1, p0, Lcom/yanzhenjie/andserver/b$1;->a:Lcom/yanzhenjie/andserver/b;

    invoke-static {}, Lorg/apache/httpcore/b/a/d;->a()Lorg/apache/httpcore/b/a/d;

    move-result-object v2

    .line 104
    invoke-static {}, Lorg/apache/httpcore/a/c;->j()Lorg/apache/httpcore/a/c$a;

    move-result-object v3

    const/4 v4, 0x1

    .line 105
    invoke-virtual {v3, v4}, Lorg/apache/httpcore/a/c$a;->b(Z)Lorg/apache/httpcore/a/c$a;

    move-result-object v3

    .line 106
    invoke-virtual {v3, v4}, Lorg/apache/httpcore/a/c$a;->a(Z)Lorg/apache/httpcore/a/c$a;

    move-result-object v3

    iget-object v5, p0, Lcom/yanzhenjie/andserver/b$1;->a:Lcom/yanzhenjie/andserver/b;

    .line 107
    invoke-static {v5}, Lcom/yanzhenjie/andserver/b;->j(Lcom/yanzhenjie/andserver/b;)I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/apache/httpcore/a/c$a;->a(I)Lorg/apache/httpcore/a/c$a;

    move-result-object v3

    const/4 v5, 0x0

    .line 108
    invoke-virtual {v3, v5}, Lorg/apache/httpcore/a/c$a;->c(Z)Lorg/apache/httpcore/a/c$a;

    move-result-object v3

    .line 109
    invoke-virtual {v3}, Lorg/apache/httpcore/a/c$a;->a()Lorg/apache/httpcore/a/c;

    move-result-object v3

    .line 103
    invoke-virtual {v2, v3}, Lorg/apache/httpcore/b/a/d;->a(Lorg/apache/httpcore/a/c;)Lorg/apache/httpcore/b/a/d;

    move-result-object v2

    .line 112
    invoke-static {}, Lorg/apache/httpcore/a/a;->h()Lorg/apache/httpcore/a/a$a;

    move-result-object v3

    const/16 v5, 0x1000

    .line 113
    invoke-virtual {v3, v5}, Lorg/apache/httpcore/a/a$a;->a(I)Lorg/apache/httpcore/a/a$a;

    move-result-object v3

    .line 114
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/apache/httpcore/a/a$a;->a(Ljava/nio/charset/Charset;)Lorg/apache/httpcore/a/a$a;

    move-result-object v3

    .line 115
    invoke-virtual {v3}, Lorg/apache/httpcore/a/a$a;->a()Lorg/apache/httpcore/a/a;

    move-result-object v3

    .line 111
    invoke-virtual {v2, v3}, Lorg/apache/httpcore/b/a/d;->a(Lorg/apache/httpcore/a/a;)Lorg/apache/httpcore/b/a/d;

    move-result-object v2

    iget-object v3, p0, Lcom/yanzhenjie/andserver/b$1;->a:Lcom/yanzhenjie/andserver/b;

    .line 117
    invoke-static {v3}, Lcom/yanzhenjie/andserver/b;->i(Lcom/yanzhenjie/andserver/b;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/httpcore/b/a/d;->a(Ljava/net/InetAddress;)Lorg/apache/httpcore/b/a/d;

    move-result-object v2

    iget-object v3, p0, Lcom/yanzhenjie/andserver/b$1;->a:Lcom/yanzhenjie/andserver/b;

    .line 118
    invoke-static {v3}, Lcom/yanzhenjie/andserver/b;->h(Lcom/yanzhenjie/andserver/b;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/httpcore/b/a/d;->a(I)Lorg/apache/httpcore/b/a/d;

    move-result-object v2

    iget-object v3, p0, Lcom/yanzhenjie/andserver/b$1;->a:Lcom/yanzhenjie/andserver/b;

    .line 119
    invoke-static {v3}, Lcom/yanzhenjie/andserver/b;->g(Lcom/yanzhenjie/andserver/b;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/httpcore/b/a/d;->a(Ljavax/net/ssl/SSLContext;)Lorg/apache/httpcore/b/a/d;

    move-result-object v2

    new-instance v3, Lcom/yanzhenjie/andserver/e/a$a;

    iget-object v5, p0, Lcom/yanzhenjie/andserver/b$1;->a:Lcom/yanzhenjie/andserver/b;

    .line 120
    invoke-static {v5}, Lcom/yanzhenjie/andserver/b;->f(Lcom/yanzhenjie/andserver/b;)Lcom/yanzhenjie/andserver/e/a;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/yanzhenjie/andserver/e/a$a;-><init>(Lcom/yanzhenjie/andserver/e/a;)V

    invoke-virtual {v2, v3}, Lorg/apache/httpcore/b/a/d;->a(Lorg/apache/httpcore/b/a/c;)Lorg/apache/httpcore/b/a/d;

    move-result-object v2

    const-string v3, "AndServer"

    .line 121
    invoke-virtual {v2, v3}, Lorg/apache/httpcore/b/a/d;->a(Ljava/lang/String;)Lorg/apache/httpcore/b/a/d;

    move-result-object v2

    const-string v3, "*"

    .line 122
    invoke-virtual {v2, v3, v0}, Lorg/apache/httpcore/b/a/d;->a(Ljava/lang/String;Lorg/apache/httpcore/d/j;)Lorg/apache/httpcore/b/a/d;

    move-result-object v0

    sget-object v2, Lorg/apache/httpcore/c;->b:Lorg/apache/httpcore/c;

    .line 123
    invoke-virtual {v0, v2}, Lorg/apache/httpcore/b/a/d;->a(Lorg/apache/httpcore/c;)Lorg/apache/httpcore/b/a/d;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lorg/apache/httpcore/b/a/d;->b()Lorg/apache/httpcore/b/a/a;

    move-result-object v0

    .line 102
    invoke-static {v1, v0}, Lcom/yanzhenjie/andserver/b;->a(Lcom/yanzhenjie/andserver/b;Lorg/apache/httpcore/b/a/a;)Lorg/apache/httpcore/b/a/a;

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/yanzhenjie/andserver/b$1;->a:Lcom/yanzhenjie/andserver/b;

    invoke-static {v0, v4}, Lcom/yanzhenjie/andserver/b;->a(Lcom/yanzhenjie/andserver/b;Z)Z

    .line 127
    iget-object v0, p0, Lcom/yanzhenjie/andserver/b$1;->a:Lcom/yanzhenjie/andserver/b;

    invoke-static {v0}, Lcom/yanzhenjie/andserver/b;->k(Lcom/yanzhenjie/andserver/b;)Lorg/apache/httpcore/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/httpcore/b/a/a;->b()V

    .line 129
    invoke-static {}, Lcom/yanzhenjie/andserver/f/c;->a()Lcom/yanzhenjie/andserver/f/c;

    move-result-object v0

    new-instance v1, Lcom/yanzhenjie/andserver/b$1$1;

    invoke-direct {v1, p0}, Lcom/yanzhenjie/andserver/b$1$1;-><init>(Lcom/yanzhenjie/andserver/b$1;)V

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/andserver/f/c;->c(Ljava/lang/Runnable;)V

    .line 136
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Lcom/yanzhenjie/andserver/b$1$2;

    invoke-direct {v1, p0}, Lcom/yanzhenjie/andserver/b$1$2;-><init>(Lcom/yanzhenjie/andserver/b$1;)V

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 143
    invoke-static {}, Lcom/yanzhenjie/andserver/f/c;->a()Lcom/yanzhenjie/andserver/f/c;

    move-result-object v1

    new-instance v2, Lcom/yanzhenjie/andserver/b$1$3;

    invoke-direct {v2, p0, v0}, Lcom/yanzhenjie/andserver/b$1$3;-><init>(Lcom/yanzhenjie/andserver/b$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Lcom/yanzhenjie/andserver/f/c;->c(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method
