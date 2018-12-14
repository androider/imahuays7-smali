.class public Lcom/flurry/sdk/aw;
.super Lcom/flurry/sdk/dn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/aw$a;
    }
.end annotation


# static fields
.field private static final t:Ljava/lang/String; = "com.flurry.sdk.aw"


# instance fields
.field final a:J

.field final b:I

.field final c:I

.field final d:Lcom/flurry/sdk/bd;

.field final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/flurry/sdk/ax;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lcom/flurry/sdk/ba;

.field h:J

.field i:I

.field j:I

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;JIILcom/flurry/sdk/bd;Ljava/util/Map;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "JII",
            "Lcom/flurry/sdk/bd;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lcom/flurry/sdk/dn;-><init>()V

    .line 1068
    iput-object p4, p0, Lcom/flurry/sdk/dn;->q:Ljava/lang/String;

    .line 1069
    iput-object p4, p0, Lcom/flurry/sdk/dn;->r:Ljava/lang/String;

    .line 2020
    iput-wide p5, p0, Lcom/flurry/sdk/dn;->n:J

    .line 43
    invoke-virtual {p0}, Lcom/flurry/sdk/aw;->a()V

    .line 45
    iput-object p1, p0, Lcom/flurry/sdk/aw;->l:Ljava/lang/String;

    .line 47
    iput-wide p2, p0, Lcom/flurry/sdk/aw;->a:J

    .line 2052
    iput p7, p0, Lcom/flurry/sdk/dn;->s:I

    .line 50
    iput p7, p0, Lcom/flurry/sdk/aw;->b:I

    .line 51
    iput p8, p0, Lcom/flurry/sdk/aw;->c:I

    .line 52
    iput-object p9, p0, Lcom/flurry/sdk/aw;->d:Lcom/flurry/sdk/bd;

    .line 53
    iput-object p10, p0, Lcom/flurry/sdk/aw;->e:Ljava/util/Map;

    .line 54
    iput p11, p0, Lcom/flurry/sdk/aw;->i:I

    .line 55
    iput p12, p0, Lcom/flurry/sdk/aw;->j:I

    .line 56
    iput-object p13, p0, Lcom/flurry/sdk/aw;->k:Ljava/lang/String;

    const-wide/16 p1, 0x7530

    .line 59
    iput-wide p1, p0, Lcom/flurry/sdk/aw;->h:J

    .line 61
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/flurry/sdk/aw;->f:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/aw;J)J
    .locals 0

    .line 18
    iput-wide p1, p0, Lcom/flurry/sdk/aw;->h:J

    return-wide p1
.end method

.method static synthetic a(Lcom/flurry/sdk/aw;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/flurry/sdk/aw;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/flurry/sdk/aw;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/flurry/sdk/aw;->m:Z

    return p1
.end method

.method static synthetic b(Lcom/flurry/sdk/aw;)J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/flurry/sdk/aw;->a:J

    return-wide v0
.end method

.method static synthetic c(Lcom/flurry/sdk/aw;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/flurry/sdk/aw;->b:I

    return p0
.end method

.method static synthetic d(Lcom/flurry/sdk/aw;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/flurry/sdk/aw;->c:I

    return p0
.end method

.method static synthetic e(Lcom/flurry/sdk/aw;)Lcom/flurry/sdk/bd;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/flurry/sdk/aw;->d:Lcom/flurry/sdk/bd;

    return-object p0
.end method

.method static synthetic f(Lcom/flurry/sdk/aw;)Ljava/util/Map;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/flurry/sdk/aw;->e:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic g(Lcom/flurry/sdk/aw;)J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/flurry/sdk/aw;->h:J

    return-wide v0
.end method

.method static synthetic h(Lcom/flurry/sdk/aw;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/flurry/sdk/aw;->i:I

    return p0
.end method

.method static synthetic i(Lcom/flurry/sdk/aw;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/flurry/sdk/aw;->j:I

    return p0
.end method

.method static synthetic j(Lcom/flurry/sdk/aw;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/flurry/sdk/aw;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k(Lcom/flurry/sdk/aw;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/flurry/sdk/aw;->m:Z

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 69
    invoke-super {p0}, Lcom/flurry/sdk/dn;->a()V

    .line 3032
    iget v0, p0, Lcom/flurry/sdk/dn;->p:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 72
    iget-wide v0, p0, Lcom/flurry/sdk/aw;->h:J

    const-wide/16 v2, 0x3

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/flurry/sdk/aw;->h:J

    :cond_0
    return-void
.end method

.method public final declared-synchronized b()V
    .locals 1

    monitor-enter p0

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/aw;->g:Lcom/flurry/sdk/ba;

    invoke-virtual {v0}, Lcom/flurry/sdk/ba;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 76
    monitor-exit p0

    throw v0
.end method

.method public final c()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/flurry/sdk/aw;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/ax;

    .line 160
    iput-object p0, v1, Lcom/flurry/sdk/ax;->l:Lcom/flurry/sdk/aw;

    goto :goto_0

    :cond_0
    return-void
.end method
