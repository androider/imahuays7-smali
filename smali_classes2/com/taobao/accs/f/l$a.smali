.class public Lcom/taobao/accs/f/l$a;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/f/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Lcom/taobao/accs/f/c;


# direct methods
.method public constructor <init>(Lcom/taobao/accs/f/c;Ljava/lang/String;)V
    .locals 2

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    invoke-virtual {p1}, Lcom/taobao/accs/f/c;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/f/l$a;->c:Ljava/lang/String;

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/accs/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/taobao/accs/f/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/taobao/accs/f/l$a;->a:Ljava/lang/String;

    .line 465
    iget p2, p1, Lcom/taobao/accs/f/c;->c:I

    iput p2, p0, Lcom/taobao/accs/f/l$a;->b:I

    .line 466
    iput-object p1, p0, Lcom/taobao/accs/f/l$a;->d:Lcom/taobao/accs/f/c;

    return-void
.end method

.method static synthetic a(Lcom/taobao/accs/f/l$a;)Ljava/lang/String;
    .locals 0

    .line 455
    iget-object p0, p0, Lcom/taobao/accs/f/l$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/taobao/accs/f/l$a;)Lcom/taobao/accs/f/c;
    .locals 0

    .line 455
    iget-object p0, p0, Lcom/taobao/accs/f/l$a;->d:Lcom/taobao/accs/f/c;

    return-object p0
.end method


# virtual methods
.method public a(Lanet/channel/Session;Lanet/channel/e$a;)V
    .locals 6

    .line 473
    iget-object v0, p0, Lcom/taobao/accs/f/l$a;->c:Ljava/lang/String;

    const-string v1, "auth begin"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "seq"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p1, Lanet/channel/Session;->m:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 475
    iget-object v0, p0, Lcom/taobao/accs/f/l$a;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/taobao/accs/f/l$a;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " auth URL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/accs/f/l$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    new-instance v0, Lanet/channel/request/d$a;

    invoke-direct {v0}, Lanet/channel/request/d$a;-><init>()V

    iget-object v1, p0, Lcom/taobao/accs/f/l$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lanet/channel/request/d$a;->a(Ljava/lang/String;)Lanet/channel/request/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lanet/channel/request/d$a;->a()Lanet/channel/request/d;

    move-result-object v0

    .line 478
    new-instance v1, Lcom/taobao/accs/f/o;

    invoke-direct {v1, p0, p1, p2}, Lcom/taobao/accs/f/o;-><init>(Lcom/taobao/accs/f/l$a;Lanet/channel/Session;Lanet/channel/e$a;)V

    invoke-virtual {p1, v0, v1}, Lanet/channel/Session;->a(Lanet/channel/request/d;Lanet/channel/f;)Lanet/channel/request/b;

    return-void
.end method
