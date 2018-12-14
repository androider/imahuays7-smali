.class final Lcom/yanzhenjie/andserver/b$a;
.super Ljava/lang/Object;
.source "Core.java"

# interfaces
.implements Lcom/yanzhenjie/andserver/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yanzhenjie/andserver/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/net/InetAddress;

.field private b:I

.field private c:I

.field private d:Ljavax/net/ssl/SSLContext;

.field private e:Lcom/yanzhenjie/andserver/e/a;

.field private f:Lcom/yanzhenjie/andserver/c/a;

.field private g:Lcom/yanzhenjie/andserver/h/b;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/yanzhenjie/andserver/d;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/yanzhenjie/andserver/b/a;

.field private j:Lcom/yanzhenjie/andserver/exception/a/a;

.field private k:Lcom/yanzhenjie/andserver/e$b;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/yanzhenjie/andserver/b$a;->h:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/yanzhenjie/andserver/b$1;)V
    .locals 0

    .line 189
    invoke-direct {p0}, Lcom/yanzhenjie/andserver/b$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/yanzhenjie/andserver/b$a;)Ljava/net/InetAddress;
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/yanzhenjie/andserver/b$a;->a:Ljava/net/InetAddress;

    return-object p0
.end method

.method static synthetic b(Lcom/yanzhenjie/andserver/b$a;)I
    .locals 0

    .line 189
    iget p0, p0, Lcom/yanzhenjie/andserver/b$a;->b:I

    return p0
.end method

.method static synthetic c(Lcom/yanzhenjie/andserver/b$a;)I
    .locals 0

    .line 189
    iget p0, p0, Lcom/yanzhenjie/andserver/b$a;->c:I

    return p0
.end method

.method static synthetic d(Lcom/yanzhenjie/andserver/b$a;)Ljavax/net/ssl/SSLContext;
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/yanzhenjie/andserver/b$a;->d:Ljavax/net/ssl/SSLContext;

    return-object p0
.end method

.method static synthetic e(Lcom/yanzhenjie/andserver/b$a;)Lcom/yanzhenjie/andserver/e/a;
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/yanzhenjie/andserver/b$a;->e:Lcom/yanzhenjie/andserver/e/a;

    return-object p0
.end method

.method static synthetic f(Lcom/yanzhenjie/andserver/b$a;)Lcom/yanzhenjie/andserver/c/a;
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/yanzhenjie/andserver/b$a;->f:Lcom/yanzhenjie/andserver/c/a;

    return-object p0
.end method

.method static synthetic g(Lcom/yanzhenjie/andserver/b$a;)Lcom/yanzhenjie/andserver/h/b;
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/yanzhenjie/andserver/b$a;->g:Lcom/yanzhenjie/andserver/h/b;

    return-object p0
.end method

.method static synthetic h(Lcom/yanzhenjie/andserver/b$a;)Ljava/util/Map;
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/yanzhenjie/andserver/b$a;->h:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic i(Lcom/yanzhenjie/andserver/b$a;)Lcom/yanzhenjie/andserver/b/a;
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/yanzhenjie/andserver/b$a;->i:Lcom/yanzhenjie/andserver/b/a;

    return-object p0
.end method

.method static synthetic j(Lcom/yanzhenjie/andserver/b$a;)Lcom/yanzhenjie/andserver/exception/a/a;
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/yanzhenjie/andserver/b$a;->j:Lcom/yanzhenjie/andserver/exception/a/a;

    return-object p0
.end method

.method static synthetic k(Lcom/yanzhenjie/andserver/b$a;)Lcom/yanzhenjie/andserver/e$b;
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/yanzhenjie/andserver/b$a;->k:Lcom/yanzhenjie/andserver/e$b;

    return-object p0
.end method


# virtual methods
.method public a(I)Lcom/yanzhenjie/andserver/e$a;
    .locals 0

    .line 215
    iput p1, p0, Lcom/yanzhenjie/andserver/b$a;->b:I

    return-object p0
.end method

.method public a(ILjava/util/concurrent/TimeUnit;)Lcom/yanzhenjie/andserver/e$a;
    .locals 2

    int-to-long v0, p1

    .line 221
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    const-wide/32 v0, 0x7fffffff

    .line 222
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int p1, p1

    iput p1, p0, Lcom/yanzhenjie/andserver/b$a;->c:I

    return-object p0
.end method

.method public a(Lcom/yanzhenjie/andserver/b/a;)Lcom/yanzhenjie/andserver/e$a;
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/yanzhenjie/andserver/b$a;->i:Lcom/yanzhenjie/andserver/b/a;

    return-object p0
.end method

.method public a(Lcom/yanzhenjie/andserver/e$b;)Lcom/yanzhenjie/andserver/e$a;
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/yanzhenjie/andserver/b$a;->k:Lcom/yanzhenjie/andserver/e$b;

    return-object p0
.end method

.method public a(Lcom/yanzhenjie/andserver/h/b;)Lcom/yanzhenjie/andserver/e$a;
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/yanzhenjie/andserver/b$a;->g:Lcom/yanzhenjie/andserver/h/b;

    return-object p0
.end method

.method public a(Ljava/net/InetAddress;)Lcom/yanzhenjie/andserver/e$a;
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/yanzhenjie/andserver/b$a;->a:Ljava/net/InetAddress;

    return-object p0
.end method

.method public a()Lcom/yanzhenjie/andserver/e;
    .locals 2

    .line 276
    new-instance v0, Lcom/yanzhenjie/andserver/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yanzhenjie/andserver/b;-><init>(Lcom/yanzhenjie/andserver/b$a;Lcom/yanzhenjie/andserver/b$1;)V

    return-object v0
.end method
