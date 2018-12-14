.class final Lcom/yanzhenjie/andserver/b;
.super Ljava/lang/Object;
.source "Core.java"

# interfaces
.implements Lcom/yanzhenjie/andserver/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yanzhenjie/andserver/b$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/net/InetAddress;

.field private final b:I

.field private final c:I

.field private final d:Ljavax/net/ssl/SSLContext;

.field private final e:Lcom/yanzhenjie/andserver/e/a;

.field private final f:Lcom/yanzhenjie/andserver/c/a;

.field private final g:Lcom/yanzhenjie/andserver/h/b;

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/yanzhenjie/andserver/d;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/yanzhenjie/andserver/b/a;

.field private final j:Lcom/yanzhenjie/andserver/exception/a/a;

.field private final k:Lcom/yanzhenjie/andserver/e$b;

.field private l:Lorg/apache/httpcore/b/a/a;

.field private m:Z


# direct methods
.method private constructor <init>(Lcom/yanzhenjie/andserver/b$a;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {p1}, Lcom/yanzhenjie/andserver/b$a;->a(Lcom/yanzhenjie/andserver/b$a;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/yanzhenjie/andserver/b;->a:Ljava/net/InetAddress;

    .line 65
    invoke-static {p1}, Lcom/yanzhenjie/andserver/b$a;->b(Lcom/yanzhenjie/andserver/b$a;)I

    move-result v0

    iput v0, p0, Lcom/yanzhenjie/andserver/b;->b:I

    .line 66
    invoke-static {p1}, Lcom/yanzhenjie/andserver/b$a;->c(Lcom/yanzhenjie/andserver/b$a;)I

    move-result v0

    iput v0, p0, Lcom/yanzhenjie/andserver/b;->c:I

    .line 67
    invoke-static {p1}, Lcom/yanzhenjie/andserver/b$a;->d(Lcom/yanzhenjie/andserver/b$a;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/yanzhenjie/andserver/b;->d:Ljavax/net/ssl/SSLContext;

    .line 68
    invoke-static {p1}, Lcom/yanzhenjie/andserver/b$a;->e(Lcom/yanzhenjie/andserver/b$a;)Lcom/yanzhenjie/andserver/e/a;

    move-result-object v0

    iput-object v0, p0, Lcom/yanzhenjie/andserver/b;->e:Lcom/yanzhenjie/andserver/e/a;

    .line 69
    invoke-static {p1}, Lcom/yanzhenjie/andserver/b$a;->f(Lcom/yanzhenjie/andserver/b$a;)Lcom/yanzhenjie/andserver/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/yanzhenjie/andserver/b;->f:Lcom/yanzhenjie/andserver/c/a;

    .line 70
    invoke-static {p1}, Lcom/yanzhenjie/andserver/b$a;->g(Lcom/yanzhenjie/andserver/b$a;)Lcom/yanzhenjie/andserver/h/b;

    move-result-object v0

    iput-object v0, p0, Lcom/yanzhenjie/andserver/b;->g:Lcom/yanzhenjie/andserver/h/b;

    .line 71
    invoke-static {p1}, Lcom/yanzhenjie/andserver/b$a;->h(Lcom/yanzhenjie/andserver/b$a;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/yanzhenjie/andserver/b;->h:Ljava/util/Map;

    .line 72
    invoke-static {p1}, Lcom/yanzhenjie/andserver/b$a;->i(Lcom/yanzhenjie/andserver/b$a;)Lcom/yanzhenjie/andserver/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/yanzhenjie/andserver/b;->i:Lcom/yanzhenjie/andserver/b/a;

    .line 73
    invoke-static {p1}, Lcom/yanzhenjie/andserver/b$a;->j(Lcom/yanzhenjie/andserver/b$a;)Lcom/yanzhenjie/andserver/exception/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/yanzhenjie/andserver/b;->j:Lcom/yanzhenjie/andserver/exception/a/a;

    .line 74
    invoke-static {p1}, Lcom/yanzhenjie/andserver/b$a;->k(Lcom/yanzhenjie/andserver/b$a;)Lcom/yanzhenjie/andserver/e$b;

    move-result-object p1

    iput-object p1, p0, Lcom/yanzhenjie/andserver/b;->k:Lcom/yanzhenjie/andserver/e$b;

    return-void
.end method

.method synthetic constructor <init>(Lcom/yanzhenjie/andserver/b$a;Lcom/yanzhenjie/andserver/b$1;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/yanzhenjie/andserver/b;-><init>(Lcom/yanzhenjie/andserver/b$a;)V

    return-void
.end method

.method static a()Lcom/yanzhenjie/andserver/b$a;
    .locals 2

    .line 45
    new-instance v0, Lcom/yanzhenjie/andserver/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yanzhenjie/andserver/b$a;-><init>(Lcom/yanzhenjie/andserver/b$1;)V

    return-object v0
.end method

.method static synthetic a(Lcom/yanzhenjie/andserver/b;)Lcom/yanzhenjie/andserver/c/a;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/yanzhenjie/andserver/b;->f:Lcom/yanzhenjie/andserver/c/a;

    return-object p0
.end method

.method static synthetic a(Lcom/yanzhenjie/andserver/b;Lorg/apache/httpcore/b/a/a;)Lorg/apache/httpcore/b/a/a;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/yanzhenjie/andserver/b;->l:Lorg/apache/httpcore/b/a/a;

    return-object p1
.end method

.method static synthetic a(Lcom/yanzhenjie/andserver/b;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/yanzhenjie/andserver/b;->m:Z

    return p1
.end method

.method static synthetic b(Lcom/yanzhenjie/andserver/b;)Lcom/yanzhenjie/andserver/h/b;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/yanzhenjie/andserver/b;->g:Lcom/yanzhenjie/andserver/h/b;

    return-object p0
.end method

.method static synthetic c(Lcom/yanzhenjie/andserver/b;)Ljava/util/Map;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/yanzhenjie/andserver/b;->h:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic d(Lcom/yanzhenjie/andserver/b;)Lcom/yanzhenjie/andserver/b/a;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/yanzhenjie/andserver/b;->i:Lcom/yanzhenjie/andserver/b/a;

    return-object p0
.end method

.method static synthetic e(Lcom/yanzhenjie/andserver/b;)Lcom/yanzhenjie/andserver/exception/a/a;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/yanzhenjie/andserver/b;->j:Lcom/yanzhenjie/andserver/exception/a/a;

    return-object p0
.end method

.method static synthetic f(Lcom/yanzhenjie/andserver/b;)Lcom/yanzhenjie/andserver/e/a;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/yanzhenjie/andserver/b;->e:Lcom/yanzhenjie/andserver/e/a;

    return-object p0
.end method

.method static synthetic g(Lcom/yanzhenjie/andserver/b;)Ljavax/net/ssl/SSLContext;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/yanzhenjie/andserver/b;->d:Ljavax/net/ssl/SSLContext;

    return-object p0
.end method

.method static synthetic h(Lcom/yanzhenjie/andserver/b;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/yanzhenjie/andserver/b;->b:I

    return p0
.end method

.method static synthetic i(Lcom/yanzhenjie/andserver/b;)Ljava/net/InetAddress;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/yanzhenjie/andserver/b;->a:Ljava/net/InetAddress;

    return-object p0
.end method

.method static synthetic j(Lcom/yanzhenjie/andserver/b;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/yanzhenjie/andserver/b;->c:I

    return p0
.end method

.method static synthetic k(Lcom/yanzhenjie/andserver/b;)Lorg/apache/httpcore/b/a/a;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/yanzhenjie/andserver/b;->l:Lorg/apache/httpcore/b/a/a;

    return-object p0
.end method

.method static synthetic l(Lcom/yanzhenjie/andserver/b;)Lcom/yanzhenjie/andserver/e$b;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/yanzhenjie/andserver/b;->k:Lcom/yanzhenjie/andserver/e$b;

    return-object p0
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/yanzhenjie/andserver/b;->m:Z

    return v0
.end method

.method public c()V
    .locals 2

    .line 84
    iget-boolean v0, p0, Lcom/yanzhenjie/andserver/b;->m:Z

    if-eqz v0, :cond_0

    return-void

    .line 86
    :cond_0
    invoke-static {}, Lcom/yanzhenjie/andserver/f/c;->a()Lcom/yanzhenjie/andserver/f/c;

    move-result-object v0

    new-instance v1, Lcom/yanzhenjie/andserver/b$1;

    invoke-direct {v1, p0}, Lcom/yanzhenjie/andserver/b$1;-><init>(Lcom/yanzhenjie/andserver/b;)V

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/andserver/f/c;->b(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public d()Ljava/net/InetAddress;
    .locals 1

    .line 160
    iget-boolean v0, p0, Lcom/yanzhenjie/andserver/b;->m:Z

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/yanzhenjie/andserver/b;->l:Lorg/apache/httpcore/b/a/a;

    invoke-virtual {v0}, Lorg/apache/httpcore/b/a/a;->a()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()V
    .locals 2

    .line 170
    iget-boolean v0, p0, Lcom/yanzhenjie/andserver/b;->m:Z

    if-nez v0, :cond_0

    return-void

    .line 172
    :cond_0
    invoke-static {}, Lcom/yanzhenjie/andserver/f/c;->a()Lcom/yanzhenjie/andserver/f/c;

    move-result-object v0

    new-instance v1, Lcom/yanzhenjie/andserver/b$2;

    invoke-direct {v1, p0}, Lcom/yanzhenjie/andserver/b$2;-><init>(Lcom/yanzhenjie/andserver/b;)V

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/andserver/f/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method
