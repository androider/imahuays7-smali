.class public Lcom/facebook/imagepipeline/memory/ac;
.super Ljava/lang/Object;
.source "PoolFactory.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/memory/ab;

.field private b:Lcom/facebook/imagepipeline/memory/c;

.field private c:Lcom/facebook/imagepipeline/memory/i;

.field private d:Lcom/facebook/imagepipeline/memory/o;

.field private e:Lcom/facebook/imagepipeline/memory/x;

.field private f:Lcom/facebook/common/memory/g;

.field private g:Lcom/facebook/common/memory/j;

.field private h:Lcom/facebook/common/memory/a;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/memory/ab;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/memory/ab;

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/ac;->a:Lcom/facebook/imagepipeline/memory/ab;

    return-void
.end method

.method private b(I)Lcom/facebook/imagepipeline/memory/t;
    .locals 1

    packed-switch p1, :pswitch_data_0

    .line 155
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid MemoryChunkType"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 153
    :pswitch_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/ac;->b()Lcom/facebook/imagepipeline/memory/i;

    move-result-object p1

    return-object p1

    .line 151
    :pswitch_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/ac;->e()Lcom/facebook/imagepipeline/memory/x;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(I)Lcom/facebook/common/memory/g;
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/ac;->f:Lcom/facebook/common/memory/g;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/facebook/imagepipeline/memory/w;

    .line 117
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/memory/ac;->b(I)Lcom/facebook/imagepipeline/memory/t;

    move-result-object p1

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/ac;->g()Lcom/facebook/common/memory/j;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/facebook/imagepipeline/memory/w;-><init>(Lcom/facebook/imagepipeline/memory/t;Lcom/facebook/common/memory/j;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/ac;->f:Lcom/facebook/common/memory/g;

    .line 119
    :cond_0
    iget-object p1, p0, Lcom/facebook/imagepipeline/memory/ac;->f:Lcom/facebook/common/memory/g;

    return-object p1
.end method

.method public a()Lcom/facebook/imagepipeline/memory/c;
    .locals 4

    .line 42
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/ac;->b:Lcom/facebook/imagepipeline/memory/c;

    if-nez v0, :cond_5

    .line 43
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/ac;->a:Lcom/facebook/imagepipeline/memory/ab;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/ab;->i()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    .line 44
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x6f64eb86

    if-eq v2, v3, :cond_3

    const v3, -0x41f50c37

    if-eq v2, v3, :cond_2

    const v3, -0x181d2318

    if-eq v2, v3, :cond_1

    const v3, 0x5b804a8

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "dummy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string v2, "experimental"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "legacy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x3

    goto :goto_0

    :cond_3
    const-string v2, "legacy_default_params"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x2

    :cond_4
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 65
    new-instance v0, Lcom/facebook/imagepipeline/memory/g;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/ac;->a:Lcom/facebook/imagepipeline/memory/ab;

    .line 66
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/ab;->c()Lcom/facebook/common/memory/c;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/ac;->a:Lcom/facebook/imagepipeline/memory/ab;

    .line 67
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/memory/ab;->a()Lcom/facebook/imagepipeline/memory/ad;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/ac;->a:Lcom/facebook/imagepipeline/memory/ab;

    .line 68
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/memory/ab;->b()Lcom/facebook/imagepipeline/memory/ae;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/memory/g;-><init>(Lcom/facebook/common/memory/c;Lcom/facebook/imagepipeline/memory/ad;Lcom/facebook/imagepipeline/memory/ae;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/ac;->b:Lcom/facebook/imagepipeline/memory/c;

    goto :goto_1

    .line 56
    :pswitch_0
    new-instance v0, Lcom/facebook/imagepipeline/memory/g;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/ac;->a:Lcom/facebook/imagepipeline/memory/ab;

    .line 58
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/ab;->c()Lcom/facebook/common/memory/c;

    move-result-object v1

    .line 59
    invoke-static {}, Lcom/facebook/imagepipeline/memory/j;->a()Lcom/facebook/imagepipeline/memory/ad;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/ac;->a:Lcom/facebook/imagepipeline/memory/ab;

    .line 60
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/memory/ab;->b()Lcom/facebook/imagepipeline/memory/ae;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/memory/g;-><init>(Lcom/facebook/common/memory/c;Lcom/facebook/imagepipeline/memory/ad;Lcom/facebook/imagepipeline/memory/ae;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/ac;->b:Lcom/facebook/imagepipeline/memory/c;

    goto :goto_1

    .line 49
    :pswitch_1
    new-instance v0, Lcom/facebook/imagepipeline/memory/q;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/ac;->a:Lcom/facebook/imagepipeline/memory/ab;

    .line 51
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/ab;->j()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/ac;->a:Lcom/facebook/imagepipeline/memory/ab;

    .line 52
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/memory/ab;->k()I

    move-result v2

    .line 53
    invoke-static {}, Lcom/facebook/imagepipeline/memory/y;->a()Lcom/facebook/imagepipeline/memory/y;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/memory/q;-><init>(IILcom/facebook/imagepipeline/memory/ae;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/ac;->b:Lcom/facebook/imagepipeline/memory/c;

    goto :goto_1

    .line 46
    :pswitch_2
    new-instance v0, Lcom/facebook/imagepipeline/memory/n;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/memory/n;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/ac;->b:Lcom/facebook/imagepipeline/memory/c;

    .line 71
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/ac;->b:Lcom/facebook/imagepipeline/memory/c;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()Lcom/facebook/imagepipeline/memory/i;
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/ac;->c:Lcom/facebook/imagepipeline/memory/i;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/facebook/imagepipeline/memory/i;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/ac;->a:Lcom/facebook/imagepipeline/memory/ab;

    .line 78
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/ab;->c()Lcom/facebook/common/memory/c;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/ac;->a:Lcom/facebook/imagepipeline/memory/ab;

    .line 79
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/memory/ab;->d()Lcom/facebook/imagepipeline/memory/ad;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/ac;->a:Lcom/facebook/imagepipeline/memory/ab;

    .line 80
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/memory/ab;->e()Lcom/facebook/imagepipeline/memory/ae;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/memory/i;-><init>(Lcom/facebook/common/memory/c;Lcom/facebook/imagepipeline/memory/ad;Lcom/facebook/imagepipeline/memory/ae;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/ac;->c:Lcom/facebook/imagepipeline/memory/i;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/ac;->c:Lcom/facebook/imagepipeline/memory/i;

    return-object v0
.end method

.method public c()Lcom/facebook/imagepipeline/memory/o;
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/ac;->d:Lcom/facebook/imagepipeline/memory/o;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/facebook/imagepipeline/memory/o;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/ac;->a:Lcom/facebook/imagepipeline/memory/ab;

    .line 88
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/ab;->c()Lcom/facebook/common/memory/c;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/ac;->a:Lcom/facebook/imagepipeline/memory/ab;

    .line 89
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/memory/ab;->f()Lcom/facebook/imagepipeline/memory/ad;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/memory/o;-><init>(Lcom/facebook/common/memory/c;Lcom/facebook/imagepipeline/memory/ad;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/ac;->d:Lcom/facebook/imagepipeline/memory/o;

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/ac;->d:Lcom/facebook/imagepipeline/memory/o;

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/ac;->a:Lcom/facebook/imagepipeline/memory/ab;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/ab;->f()Lcom/facebook/imagepipeline/memory/ad;

    move-result-object v0

    iget v0, v0, Lcom/facebook/imagepipeline/memory/ad;->g:I

    return v0
.end method

.method public e()Lcom/facebook/imagepipeline/memory/x;
    .locals 4

    .line 99
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/ac;->e:Lcom/facebook/imagepipeline/memory/x;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/facebook/imagepipeline/memory/x;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/ac;->a:Lcom/facebook/imagepipeline/memory/ab;

    .line 102
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/ab;->c()Lcom/facebook/common/memory/c;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/ac;->a:Lcom/facebook/imagepipeline/memory/ab;

    .line 103
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/memory/ab;->d()Lcom/facebook/imagepipeline/memory/ad;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/ac;->a:Lcom/facebook/imagepipeline/memory/ab;

    .line 104
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/memory/ab;->e()Lcom/facebook/imagepipeline/memory/ae;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/memory/x;-><init>(Lcom/facebook/common/memory/c;Lcom/facebook/imagepipeline/memory/ad;Lcom/facebook/imagepipeline/memory/ae;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/ac;->e:Lcom/facebook/imagepipeline/memory/x;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/ac;->e:Lcom/facebook/imagepipeline/memory/x;

    return-object v0
.end method

.method public f()Lcom/facebook/common/memory/g;
    .locals 1

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/memory/ac;->a(I)Lcom/facebook/common/memory/g;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/facebook/common/memory/j;
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/ac;->g:Lcom/facebook/common/memory/j;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lcom/facebook/common/memory/j;

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/ac;->h()Lcom/facebook/common/memory/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/common/memory/j;-><init>(Lcom/facebook/common/memory/a;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/ac;->g:Lcom/facebook/common/memory/j;

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/ac;->g:Lcom/facebook/common/memory/j;

    return-object v0
.end method

.method public h()Lcom/facebook/common/memory/a;
    .locals 4

    .line 139
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/ac;->h:Lcom/facebook/common/memory/a;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lcom/facebook/imagepipeline/memory/p;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/ac;->a:Lcom/facebook/imagepipeline/memory/ab;

    .line 141
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/ab;->c()Lcom/facebook/common/memory/c;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/ac;->a:Lcom/facebook/imagepipeline/memory/ab;

    .line 142
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/memory/ab;->g()Lcom/facebook/imagepipeline/memory/ad;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/ac;->a:Lcom/facebook/imagepipeline/memory/ab;

    .line 143
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/memory/ab;->h()Lcom/facebook/imagepipeline/memory/ae;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/memory/p;-><init>(Lcom/facebook/common/memory/c;Lcom/facebook/imagepipeline/memory/ad;Lcom/facebook/imagepipeline/memory/ae;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/ac;->h:Lcom/facebook/common/memory/a;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/ac;->h:Lcom/facebook/common/memory/a;

    return-object v0
.end method
