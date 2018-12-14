.class public final Lcom/danikula/videocache/g$a;
.super Ljava/lang/Object;
.source "HttpProxyCacheServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danikula/videocache/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/io/File;

.field private b:Lcom/danikula/videocache/a/c;

.field private c:Lcom/danikula/videocache/a/a;

.field private d:Lcom/danikula/videocache/c/c;

.field private e:Lcom/danikula/videocache/b/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    invoke-static {p1}, Lcom/danikula/videocache/c/d;->a(Landroid/content/Context;)Lcom/danikula/videocache/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/danikula/videocache/g$a;->d:Lcom/danikula/videocache/c/c;

    .line 351
    invoke-static {p1}, Lcom/danikula/videocache/q;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/danikula/videocache/g$a;->a:Ljava/io/File;

    .line 352
    new-instance p1, Lcom/danikula/videocache/a/g;

    const-wide/32 v0, 0x20000000

    invoke-direct {p1, v0, v1}, Lcom/danikula/videocache/a/g;-><init>(J)V

    iput-object p1, p0, Lcom/danikula/videocache/g$a;->c:Lcom/danikula/videocache/a/a;

    .line 353
    new-instance p1, Lcom/danikula/videocache/a/f;

    invoke-direct {p1}, Lcom/danikula/videocache/a/f;-><init>()V

    iput-object p1, p0, Lcom/danikula/videocache/g$a;->b:Lcom/danikula/videocache/a/c;

    .line 354
    new-instance p1, Lcom/danikula/videocache/b/a;

    invoke-direct {p1}, Lcom/danikula/videocache/b/a;-><init>()V

    iput-object p1, p0, Lcom/danikula/videocache/g$a;->e:Lcom/danikula/videocache/b/b;

    return-void
.end method

.method private b()Lcom/danikula/videocache/c;
    .locals 7

    .line 447
    new-instance v6, Lcom/danikula/videocache/c;

    iget-object v1, p0, Lcom/danikula/videocache/g$a;->a:Ljava/io/File;

    iget-object v2, p0, Lcom/danikula/videocache/g$a;->b:Lcom/danikula/videocache/a/c;

    iget-object v3, p0, Lcom/danikula/videocache/g$a;->c:Lcom/danikula/videocache/a/a;

    iget-object v4, p0, Lcom/danikula/videocache/g$a;->d:Lcom/danikula/videocache/c/c;

    iget-object v5, p0, Lcom/danikula/videocache/g$a;->e:Lcom/danikula/videocache/b/b;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/danikula/videocache/c;-><init>(Ljava/io/File;Lcom/danikula/videocache/a/c;Lcom/danikula/videocache/a/a;Lcom/danikula/videocache/c/c;Lcom/danikula/videocache/b/b;)V

    return-object v6
.end method


# virtual methods
.method public a(Lcom/danikula/videocache/b/b;)Lcom/danikula/videocache/g$a;
    .locals 0

    .line 432
    invoke-static {p1}, Lcom/danikula/videocache/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/danikula/videocache/b/b;

    iput-object p1, p0, Lcom/danikula/videocache/g$a;->e:Lcom/danikula/videocache/b/b;

    return-object p0
.end method

.method public a(Ljava/io/File;)Lcom/danikula/videocache/g$a;
    .locals 0

    .line 370
    invoke-static {p1}, Lcom/danikula/videocache/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    iput-object p1, p0, Lcom/danikula/videocache/g$a;->a:Ljava/io/File;

    return-object p0
.end method

.method public a()Lcom/danikula/videocache/g;
    .locals 3

    .line 442
    invoke-direct {p0}, Lcom/danikula/videocache/g$a;->b()Lcom/danikula/videocache/c;

    move-result-object v0

    .line 443
    new-instance v1, Lcom/danikula/videocache/g;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/danikula/videocache/g;-><init>(Lcom/danikula/videocache/c;Lcom/danikula/videocache/g$1;)V

    return-object v1
.end method
