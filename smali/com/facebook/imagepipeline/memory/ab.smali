.class public Lcom/facebook/imagepipeline/memory/ab;
.super Ljava/lang/Object;
.source "PoolConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/memory/ab$a;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/memory/ad;

.field private final b:Lcom/facebook/imagepipeline/memory/ae;

.field private final c:Lcom/facebook/imagepipeline/memory/ad;

.field private final d:Lcom/facebook/common/memory/c;

.field private final e:Lcom/facebook/imagepipeline/memory/ad;

.field private final f:Lcom/facebook/imagepipeline/memory/ae;

.field private final g:Lcom/facebook/imagepipeline/memory/ad;

.field private final h:Lcom/facebook/imagepipeline/memory/ae;

.field private final i:Ljava/lang/String;

.field private final j:I

.field private final k:I


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/memory/ab$a;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PoolConfig()"

    .line 42
    invoke-static {v0}, Lcom/facebook/imagepipeline/l/b;->a(Ljava/lang/String;)V

    .line 45
    :cond_0
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/ab$a;->a(Lcom/facebook/imagepipeline/memory/ab$a;)Lcom/facebook/imagepipeline/memory/ad;

    move-result-object v0

    if-nez v0, :cond_1

    .line 46
    invoke-static {}, Lcom/facebook/imagepipeline/memory/j;->a()Lcom/facebook/imagepipeline/memory/ad;

    move-result-object v0

    goto :goto_0

    .line 47
    :cond_1
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/ab$a;->a(Lcom/facebook/imagepipeline/memory/ab$a;)Lcom/facebook/imagepipeline/memory/ad;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/ab;->a:Lcom/facebook/imagepipeline/memory/ad;

    .line 49
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/ab$a;->b(Lcom/facebook/imagepipeline/memory/ab$a;)Lcom/facebook/imagepipeline/memory/ae;

    move-result-object v0

    if-nez v0, :cond_2

    .line 50
    invoke-static {}, Lcom/facebook/imagepipeline/memory/y;->a()Lcom/facebook/imagepipeline/memory/y;

    move-result-object v0

    goto :goto_1

    .line 51
    :cond_2
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/ab$a;->b(Lcom/facebook/imagepipeline/memory/ab$a;)Lcom/facebook/imagepipeline/memory/ae;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/ab;->b:Lcom/facebook/imagepipeline/memory/ae;

    .line 53
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/ab$a;->c(Lcom/facebook/imagepipeline/memory/ab$a;)Lcom/facebook/imagepipeline/memory/ad;

    move-result-object v0

    if-nez v0, :cond_3

    .line 54
    invoke-static {}, Lcom/facebook/imagepipeline/memory/l;->a()Lcom/facebook/imagepipeline/memory/ad;

    move-result-object v0

    goto :goto_2

    .line 55
    :cond_3
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/ab$a;->c(Lcom/facebook/imagepipeline/memory/ab$a;)Lcom/facebook/imagepipeline/memory/ad;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/ab;->c:Lcom/facebook/imagepipeline/memory/ad;

    .line 57
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/ab$a;->d(Lcom/facebook/imagepipeline/memory/ab$a;)Lcom/facebook/common/memory/c;

    move-result-object v0

    if-nez v0, :cond_4

    .line 58
    invoke-static {}, Lcom/facebook/common/memory/d;->a()Lcom/facebook/common/memory/d;

    move-result-object v0

    goto :goto_3

    .line 59
    :cond_4
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/ab$a;->d(Lcom/facebook/imagepipeline/memory/ab$a;)Lcom/facebook/common/memory/c;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/ab;->d:Lcom/facebook/common/memory/c;

    .line 61
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/ab$a;->e(Lcom/facebook/imagepipeline/memory/ab$a;)Lcom/facebook/imagepipeline/memory/ad;

    move-result-object v0

    if-nez v0, :cond_5

    .line 62
    invoke-static {}, Lcom/facebook/imagepipeline/memory/m;->a()Lcom/facebook/imagepipeline/memory/ad;

    move-result-object v0

    goto :goto_4

    .line 63
    :cond_5
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/ab$a;->e(Lcom/facebook/imagepipeline/memory/ab$a;)Lcom/facebook/imagepipeline/memory/ad;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/ab;->e:Lcom/facebook/imagepipeline/memory/ad;

    .line 65
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/ab$a;->f(Lcom/facebook/imagepipeline/memory/ab$a;)Lcom/facebook/imagepipeline/memory/ae;

    move-result-object v0

    if-nez v0, :cond_6

    .line 66
    invoke-static {}, Lcom/facebook/imagepipeline/memory/y;->a()Lcom/facebook/imagepipeline/memory/y;

    move-result-object v0

    goto :goto_5

    .line 67
    :cond_6
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/ab$a;->f(Lcom/facebook/imagepipeline/memory/ab$a;)Lcom/facebook/imagepipeline/memory/ae;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/ab;->f:Lcom/facebook/imagepipeline/memory/ae;

    .line 69
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/ab$a;->g(Lcom/facebook/imagepipeline/memory/ab$a;)Lcom/facebook/imagepipeline/memory/ad;

    move-result-object v0

    if-nez v0, :cond_7

    .line 70
    invoke-static {}, Lcom/facebook/imagepipeline/memory/k;->a()Lcom/facebook/imagepipeline/memory/ad;

    move-result-object v0

    goto :goto_6

    .line 71
    :cond_7
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/ab$a;->g(Lcom/facebook/imagepipeline/memory/ab$a;)Lcom/facebook/imagepipeline/memory/ad;

    move-result-object v0

    :goto_6
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/ab;->g:Lcom/facebook/imagepipeline/memory/ad;

    .line 73
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/ab$a;->h(Lcom/facebook/imagepipeline/memory/ab$a;)Lcom/facebook/imagepipeline/memory/ae;

    move-result-object v0

    if-nez v0, :cond_8

    .line 74
    invoke-static {}, Lcom/facebook/imagepipeline/memory/y;->a()Lcom/facebook/imagepipeline/memory/y;

    move-result-object v0

    goto :goto_7

    .line 75
    :cond_8
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/ab$a;->h(Lcom/facebook/imagepipeline/memory/ab$a;)Lcom/facebook/imagepipeline/memory/ae;

    move-result-object v0

    :goto_7
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/ab;->h:Lcom/facebook/imagepipeline/memory/ae;

    .line 78
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/ab$a;->i(Lcom/facebook/imagepipeline/memory/ab$a;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, "legacy"

    goto :goto_8

    :cond_9
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/ab$a;->i(Lcom/facebook/imagepipeline/memory/ab$a;)Ljava/lang/String;

    move-result-object v0

    :goto_8
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/ab;->i:Ljava/lang/String;

    .line 79
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/ab$a;->j(Lcom/facebook/imagepipeline/memory/ab$a;)I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/memory/ab;->j:I

    .line 81
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/ab$a;->k(Lcom/facebook/imagepipeline/memory/ab$a;)I

    move-result v0

    if-lez v0, :cond_a

    .line 82
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/ab$a;->k(Lcom/facebook/imagepipeline/memory/ab$a;)I

    move-result p1

    goto :goto_9

    :cond_a
    const/high16 p1, 0x400000

    :goto_9
    iput p1, p0, Lcom/facebook/imagepipeline/memory/ab;->k:I

    .line 84
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->b()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 85
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->a()V

    :cond_b
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/memory/ab$a;Lcom/facebook/imagepipeline/memory/ab$1;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/memory/ab;-><init>(Lcom/facebook/imagepipeline/memory/ab$a;)V

    return-void
.end method

.method public static l()Lcom/facebook/imagepipeline/memory/ab$a;
    .locals 2

    .line 134
    new-instance v0, Lcom/facebook/imagepipeline/memory/ab$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/memory/ab$a;-><init>(Lcom/facebook/imagepipeline/memory/ab$1;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/facebook/imagepipeline/memory/ad;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/ab;->a:Lcom/facebook/imagepipeline/memory/ad;

    return-object v0
.end method

.method public b()Lcom/facebook/imagepipeline/memory/ae;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/ab;->b:Lcom/facebook/imagepipeline/memory/ae;

    return-object v0
.end method

.method public c()Lcom/facebook/common/memory/c;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/ab;->d:Lcom/facebook/common/memory/c;

    return-object v0
.end method

.method public d()Lcom/facebook/imagepipeline/memory/ad;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/ab;->e:Lcom/facebook/imagepipeline/memory/ad;

    return-object v0
.end method

.method public e()Lcom/facebook/imagepipeline/memory/ae;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/ab;->f:Lcom/facebook/imagepipeline/memory/ae;

    return-object v0
.end method

.method public f()Lcom/facebook/imagepipeline/memory/ad;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/ab;->c:Lcom/facebook/imagepipeline/memory/ad;

    return-object v0
.end method

.method public g()Lcom/facebook/imagepipeline/memory/ad;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/ab;->g:Lcom/facebook/imagepipeline/memory/ad;

    return-object v0
.end method

.method public h()Lcom/facebook/imagepipeline/memory/ae;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/ab;->h:Lcom/facebook/imagepipeline/memory/ae;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/ab;->i:Ljava/lang/String;

    return-object v0
.end method

.method public j()I
    .locals 1

    .line 126
    iget v0, p0, Lcom/facebook/imagepipeline/memory/ab;->j:I

    return v0
.end method

.method public k()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/facebook/imagepipeline/memory/ab;->k:I

    return v0
.end method
