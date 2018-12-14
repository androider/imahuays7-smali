.class Lcom/yanzhenjie/andserver/c;
.super Ljava/lang/Object;
.source "DispatchRequestHandler.java"

# interfaces
.implements Lorg/apache/httpcore/d/j;


# static fields
.field private static a:Lcom/yanzhenjie/andserver/exception/a/a;


# instance fields
.field private b:Lcom/yanzhenjie/andserver/c/a;

.field private c:Lcom/yanzhenjie/andserver/h/b;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/yanzhenjie/andserver/d;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/yanzhenjie/andserver/b/a;

.field private f:Lcom/yanzhenjie/andserver/exception/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lcom/yanzhenjie/andserver/exception/a/b;

    invoke-direct {v0}, Lcom/yanzhenjie/andserver/exception/a/b;-><init>()V

    sput-object v0, Lcom/yanzhenjie/andserver/c;->a:Lcom/yanzhenjie/andserver/exception/a/a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/yanzhenjie/andserver/c;->d:Ljava/util/Map;

    .line 54
    sget-object v0, Lcom/yanzhenjie/andserver/c;->a:Lcom/yanzhenjie/andserver/exception/a/a;

    iput-object v0, p0, Lcom/yanzhenjie/andserver/c;->f:Lcom/yanzhenjie/andserver/exception/a/a;

    return-void
.end method

.method private a(Lorg/apache/httpcore/n;Lorg/apache/httpcore/d/d;)Lcom/yanzhenjie/andserver/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/httpcore/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    invoke-static {p1}, Lcom/yanzhenjie/andserver/f/e;->a(Lorg/apache/httpcore/n;)Ljava/lang/String;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/yanzhenjie/andserver/c;->c:Lcom/yanzhenjie/andserver/h/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yanzhenjie/andserver/c;->c:Lcom/yanzhenjie/andserver/h/b;

    invoke-interface {v1, p1, p2}, Lcom/yanzhenjie/andserver/h/b;->a(Lorg/apache/httpcore/n;Lorg/apache/httpcore/d/d;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 122
    iget-object p1, p0, Lcom/yanzhenjie/andserver/c;->c:Lcom/yanzhenjie/andserver/h/b;

    return-object p1

    .line 124
    :cond_0
    iget-object p1, p0, Lcom/yanzhenjie/andserver/c;->d:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yanzhenjie/andserver/d;

    return-object p1
.end method

.method private a(Lcom/yanzhenjie/andserver/d;Lorg/apache/httpcore/n;Lorg/apache/httpcore/q;Lorg/apache/httpcore/d/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/httpcore/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-direct {p0, p2, p1}, Lcom/yanzhenjie/andserver/c;->a(Lorg/apache/httpcore/n;Lcom/yanzhenjie/andserver/d;)V

    .line 109
    iget-object v0, p0, Lcom/yanzhenjie/andserver/c;->e:Lcom/yanzhenjie/andserver/b/a;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/yanzhenjie/andserver/c;->e:Lcom/yanzhenjie/andserver/b/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/yanzhenjie/andserver/b/a;->a(Lcom/yanzhenjie/andserver/d;Lorg/apache/httpcore/n;Lorg/apache/httpcore/q;Lorg/apache/httpcore/d/d;)V

    goto :goto_0

    .line 112
    :cond_0
    invoke-interface {p1, p2, p3, p4}, Lcom/yanzhenjie/andserver/d;->a(Lorg/apache/httpcore/n;Lorg/apache/httpcore/q;Lorg/apache/httpcore/d/d;)V

    :goto_0
    return-void
.end method

.method private a(Lorg/apache/httpcore/n;Lcom/yanzhenjie/andserver/d;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yanzhenjie/andserver/exception/BaseException;
        }
    .end annotation

    .line 128
    invoke-interface {p1}, Lorg/apache/httpcore/n;->e()Lorg/apache/httpcore/w;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/httpcore/w;->getMethod()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/yanzhenjie/andserver/RequestMethod;->reverse(Ljava/lang/String;)Lcom/yanzhenjie/andserver/RequestMethod;

    move-result-object p1

    .line 129
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    :try_start_0
    const-string v0, "handle"

    const/4 v1, 0x3

    .line 131
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lorg/apache/httpcore/n;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lorg/apache/httpcore/q;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lorg/apache/httpcore/d/d;

    aput-object v3, v1, v2

    invoke-virtual {p2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 132
    const-class v0, Lcom/yanzhenjie/andserver/a/a;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p2

    check-cast p2, Lcom/yanzhenjie/andserver/a/a;

    if-eqz p2, :cond_0

    .line 134
    invoke-interface {p2}, Lcom/yanzhenjie/andserver/a/a;->a()[Lcom/yanzhenjie/andserver/RequestMethod;

    move-result-object p2

    .line 135
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 136
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 137
    new-instance p2, Lcom/yanzhenjie/andserver/exception/MethodNotSupported;

    invoke-direct {p2, p1}, Lcom/yanzhenjie/andserver/exception/MethodNotSupported;-><init>(Lcom/yanzhenjie/andserver/RequestMethod;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method a(Lcom/yanzhenjie/andserver/b/a;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/yanzhenjie/andserver/c;->e:Lcom/yanzhenjie/andserver/b/a;

    return-void
.end method

.method a(Lcom/yanzhenjie/andserver/c/a;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/yanzhenjie/andserver/c;->b:Lcom/yanzhenjie/andserver/c/a;

    return-void
.end method

.method a(Lcom/yanzhenjie/andserver/exception/a/a;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/yanzhenjie/andserver/c;->f:Lcom/yanzhenjie/andserver/exception/a/a;

    return-void
.end method

.method a(Lcom/yanzhenjie/andserver/h/b;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/yanzhenjie/andserver/c;->c:Lcom/yanzhenjie/andserver/h/b;

    return-void
.end method

.method a(Ljava/lang/String;Lcom/yanzhenjie/andserver/d;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/yanzhenjie/andserver/c;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lorg/apache/httpcore/n;Lorg/apache/httpcore/q;Lorg/apache/httpcore/d/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/httpcore/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/yanzhenjie/andserver/c;->b:Lcom/yanzhenjie/andserver/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yanzhenjie/andserver/c;->b:Lcom/yanzhenjie/andserver/c/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/yanzhenjie/andserver/c/a;->a(Lorg/apache/httpcore/n;Lorg/apache/httpcore/q;Lorg/apache/httpcore/d/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 85
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/yanzhenjie/andserver/c;->a(Lorg/apache/httpcore/n;Lorg/apache/httpcore/d/d;)Lcom/yanzhenjie/andserver/d;

    move-result-object v0

    if-nez v0, :cond_1

    .line 87
    invoke-static {p1}, Lcom/yanzhenjie/andserver/f/e;->a(Lorg/apache/httpcore/n;)Ljava/lang/String;

    move-result-object v0

    .line 88
    new-instance v1, Lcom/yanzhenjie/andserver/exception/NotFoundException;

    invoke-direct {v1, v0}, Lcom/yanzhenjie/andserver/exception/NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :cond_1
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/yanzhenjie/andserver/c;->a(Lcom/yanzhenjie/andserver/d;Lorg/apache/httpcore/n;Lorg/apache/httpcore/q;Lorg/apache/httpcore/d/d;)V

    .line 93
    iget-object v0, p0, Lcom/yanzhenjie/andserver/c;->b:Lcom/yanzhenjie/andserver/c/a;

    if-eqz v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/yanzhenjie/andserver/c;->b:Lcom/yanzhenjie/andserver/c/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/yanzhenjie/andserver/c/a;->b(Lorg/apache/httpcore/n;Lorg/apache/httpcore/q;Lorg/apache/httpcore/d/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 97
    :try_start_1
    iget-object v1, p0, Lcom/yanzhenjie/andserver/c;->f:Lcom/yanzhenjie/andserver/exception/a/a;

    invoke-interface {v1, v0, p1, p2, p3}, Lcom/yanzhenjie/andserver/exception/a/a;->a(Ljava/lang/Exception;Lorg/apache/httpcore/n;Lorg/apache/httpcore/q;Lorg/apache/httpcore/d/d;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 99
    :catch_1
    sget-object v1, Lcom/yanzhenjie/andserver/c;->a:Lcom/yanzhenjie/andserver/exception/a/a;

    invoke-interface {v1, v0, p1, p2, p3}, Lcom/yanzhenjie/andserver/exception/a/a;->a(Ljava/lang/Exception;Lorg/apache/httpcore/n;Lorg/apache/httpcore/q;Lorg/apache/httpcore/d/d;)V

    :cond_2
    :goto_0
    return-void
.end method
