.class public Lcom/facebook/imagepipeline/d/l;
.super Ljava/lang/Object;
.source "ProducerFactory.java"


# instance fields
.field private a:Landroid/content/ContentResolver;

.field private b:Landroid/content/res/Resources;

.field private c:Landroid/content/res/AssetManager;

.field private final d:Lcom/facebook/common/memory/a;

.field private final e:Lcom/facebook/imagepipeline/decoder/b;

.field private final f:Lcom/facebook/imagepipeline/decoder/d;

.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private final j:Lcom/facebook/imagepipeline/d/e;

.field private final k:Lcom/facebook/common/memory/g;

.field private final l:Lcom/facebook/imagepipeline/c/e;

.field private final m:Lcom/facebook/imagepipeline/c/e;

.field private final n:Lcom/facebook/imagepipeline/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/c/p<",
            "Lcom/facebook/cache/common/b;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Lcom/facebook/imagepipeline/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/c/p<",
            "Lcom/facebook/cache/common/b;",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Lcom/facebook/imagepipeline/c/f;

.field private final q:Lcom/facebook/imagepipeline/b/f;

.field private final r:I

.field private final s:I

.field private t:Z

.field private final u:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/common/memory/a;Lcom/facebook/imagepipeline/decoder/b;Lcom/facebook/imagepipeline/decoder/d;ZZZLcom/facebook/imagepipeline/d/e;Lcom/facebook/common/memory/g;Lcom/facebook/imagepipeline/c/p;Lcom/facebook/imagepipeline/c/p;Lcom/facebook/imagepipeline/c/e;Lcom/facebook/imagepipeline/c/e;Lcom/facebook/imagepipeline/c/f;Lcom/facebook/imagepipeline/b/f;IIZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/common/memory/a;",
            "Lcom/facebook/imagepipeline/decoder/b;",
            "Lcom/facebook/imagepipeline/decoder/d;",
            "ZZZ",
            "Lcom/facebook/imagepipeline/d/e;",
            "Lcom/facebook/common/memory/g;",
            "Lcom/facebook/imagepipeline/c/p<",
            "Lcom/facebook/cache/common/b;",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;",
            "Lcom/facebook/imagepipeline/c/p<",
            "Lcom/facebook/cache/common/b;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;",
            "Lcom/facebook/imagepipeline/c/e;",
            "Lcom/facebook/imagepipeline/c/e;",
            "Lcom/facebook/imagepipeline/c/f;",
            "Lcom/facebook/imagepipeline/b/f;",
            "IIZI)V"
        }
    .end annotation

    move-object v0, p0

    .line 121
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/imagepipeline/d/l;->a:Landroid/content/ContentResolver;

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/imagepipeline/d/l;->b:Landroid/content/res/Resources;

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/imagepipeline/d/l;->c:Landroid/content/res/AssetManager;

    move-object v1, p2

    .line 126
    iput-object v1, v0, Lcom/facebook/imagepipeline/d/l;->d:Lcom/facebook/common/memory/a;

    move-object v1, p3

    .line 127
    iput-object v1, v0, Lcom/facebook/imagepipeline/d/l;->e:Lcom/facebook/imagepipeline/decoder/b;

    move-object v1, p4

    .line 128
    iput-object v1, v0, Lcom/facebook/imagepipeline/d/l;->f:Lcom/facebook/imagepipeline/decoder/d;

    move v1, p5

    .line 129
    iput-boolean v1, v0, Lcom/facebook/imagepipeline/d/l;->g:Z

    move v1, p6

    .line 130
    iput-boolean v1, v0, Lcom/facebook/imagepipeline/d/l;->h:Z

    move v1, p7

    .line 131
    iput-boolean v1, v0, Lcom/facebook/imagepipeline/d/l;->i:Z

    move-object v1, p8

    .line 133
    iput-object v1, v0, Lcom/facebook/imagepipeline/d/l;->j:Lcom/facebook/imagepipeline/d/e;

    move-object v1, p9

    .line 134
    iput-object v1, v0, Lcom/facebook/imagepipeline/d/l;->k:Lcom/facebook/common/memory/g;

    move-object v1, p10

    .line 136
    iput-object v1, v0, Lcom/facebook/imagepipeline/d/l;->o:Lcom/facebook/imagepipeline/c/p;

    move-object v1, p11

    .line 137
    iput-object v1, v0, Lcom/facebook/imagepipeline/d/l;->n:Lcom/facebook/imagepipeline/c/p;

    move-object v1, p12

    .line 138
    iput-object v1, v0, Lcom/facebook/imagepipeline/d/l;->l:Lcom/facebook/imagepipeline/c/e;

    move-object v1, p13

    .line 139
    iput-object v1, v0, Lcom/facebook/imagepipeline/d/l;->m:Lcom/facebook/imagepipeline/c/e;

    move-object/from16 v1, p14

    .line 140
    iput-object v1, v0, Lcom/facebook/imagepipeline/d/l;->p:Lcom/facebook/imagepipeline/c/f;

    move-object/from16 v1, p15

    .line 141
    iput-object v1, v0, Lcom/facebook/imagepipeline/d/l;->q:Lcom/facebook/imagepipeline/b/f;

    move/from16 v1, p16

    .line 143
    iput v1, v0, Lcom/facebook/imagepipeline/d/l;->r:I

    move/from16 v1, p17

    .line 144
    iput v1, v0, Lcom/facebook/imagepipeline/d/l;->s:I

    move/from16 v1, p18

    .line 145
    iput-boolean v1, v0, Lcom/facebook/imagepipeline/d/l;->t:Z

    move/from16 v1, p19

    .line 147
    iput v1, v0, Lcom/facebook/imagepipeline/d/l;->u:I

    return-void
.end method

.method public static a(Lcom/facebook/imagepipeline/k/ak;)Lcom/facebook/imagepipeline/k/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/ak<",
            "Lcom/facebook/imagepipeline/g/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/k/a;"
        }
    .end annotation

    .line 152
    new-instance v0, Lcom/facebook/imagepipeline/k/a;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/k/a;-><init>(Lcom/facebook/imagepipeline/k/ak;)V

    return-object v0
.end method

.method public static a(Lcom/facebook/imagepipeline/k/ak;Lcom/facebook/imagepipeline/k/ak;)Lcom/facebook/imagepipeline/k/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/ak<",
            "Lcom/facebook/imagepipeline/g/e;",
            ">;",
            "Lcom/facebook/imagepipeline/k/ak<",
            "Lcom/facebook/imagepipeline/g/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/k/j;"
        }
    .end annotation

    .line 173
    new-instance v0, Lcom/facebook/imagepipeline/k/j;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/k/j;-><init>(Lcom/facebook/imagepipeline/k/ak;Lcom/facebook/imagepipeline/k/ak;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/k/ag;)Lcom/facebook/imagepipeline/k/af;
    .locals 3

    .line 298
    new-instance v0, Lcom/facebook/imagepipeline/k/af;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/l;->k:Lcom/facebook/common/memory/g;

    iget-object v2, p0, Lcom/facebook/imagepipeline/d/l;->d:Lcom/facebook/common/memory/a;

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/k/af;-><init>(Lcom/facebook/common/memory/g;Lcom/facebook/common/memory/a;Lcom/facebook/imagepipeline/k/ag;)V

    return-object v0
.end method

.method public a(Lcom/facebook/imagepipeline/k/ak;ZLcom/facebook/imagepipeline/m/c;)Lcom/facebook/imagepipeline/k/ap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/ak<",
            "Lcom/facebook/imagepipeline/g/e;",
            ">;Z",
            "Lcom/facebook/imagepipeline/m/c;",
            ")",
            "Lcom/facebook/imagepipeline/k/ap;"
        }
    .end annotation

    .line 324
    new-instance v6, Lcom/facebook/imagepipeline/k/ap;

    iget-object v0, p0, Lcom/facebook/imagepipeline/d/l;->j:Lcom/facebook/imagepipeline/d/e;

    .line 325
    invoke-interface {v0}, Lcom/facebook/imagepipeline/d/e;->d()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/d/l;->k:Lcom/facebook/common/memory/g;

    move-object v0, v6

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/k/ap;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/g;Lcom/facebook/imagepipeline/k/ak;ZLcom/facebook/imagepipeline/m/c;)V

    return-object v6
.end method

.method public a(Lcom/facebook/imagepipeline/k/ak;Lcom/facebook/imagepipeline/k/at;)Lcom/facebook/imagepipeline/k/as;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/k/ak<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/k/at;",
            ")",
            "Lcom/facebook/imagepipeline/k/as<",
            "TT;>;"
        }
    .end annotation

    .line 338
    new-instance v0, Lcom/facebook/imagepipeline/k/as;

    invoke-direct {v0, p1, p2}, Lcom/facebook/imagepipeline/k/as;-><init>(Lcom/facebook/imagepipeline/k/ak;Lcom/facebook/imagepipeline/k/at;)V

    return-object v0
.end method

.method public a([Lcom/facebook/imagepipeline/k/aw;)Lcom/facebook/imagepipeline/k/av;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/facebook/imagepipeline/k/aw<",
            "Lcom/facebook/imagepipeline/g/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/k/av;"
        }
    .end annotation

    .line 268
    new-instance v0, Lcom/facebook/imagepipeline/k/av;

    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/k/av;-><init>([Lcom/facebook/imagepipeline/k/aw;)V

    return-object v0
.end method

.method public a()Lcom/facebook/imagepipeline/k/l;
    .locals 2

    .line 177
    new-instance v0, Lcom/facebook/imagepipeline/k/l;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/l;->k:Lcom/facebook/common/memory/g;

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/k/l;-><init>(Lcom/facebook/common/memory/g;)V

    return-object v0
.end method

.method public b(Lcom/facebook/imagepipeline/k/ak;)Lcom/facebook/imagepipeline/k/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/ak<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/k/f;"
        }
    .end annotation

    .line 157
    new-instance v0, Lcom/facebook/imagepipeline/k/f;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/l;->o:Lcom/facebook/imagepipeline/c/p;

    iget-object v2, p0, Lcom/facebook/imagepipeline/d/l;->p:Lcom/facebook/imagepipeline/c/f;

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/k/f;-><init>(Lcom/facebook/imagepipeline/c/p;Lcom/facebook/imagepipeline/c/f;Lcom/facebook/imagepipeline/k/ak;)V

    return-object v0
.end method

.method public b()Lcom/facebook/imagepipeline/k/w;
    .locals 4

    .line 239
    new-instance v0, Lcom/facebook/imagepipeline/k/w;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/l;->j:Lcom/facebook/imagepipeline/d/e;

    .line 240
    invoke-interface {v1}, Lcom/facebook/imagepipeline/d/e;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/d/l;->k:Lcom/facebook/common/memory/g;

    iget-object v3, p0, Lcom/facebook/imagepipeline/d/l;->c:Landroid/content/res/AssetManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/k/w;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/g;Landroid/content/res/AssetManager;)V

    return-object v0
.end method

.method public c(Lcom/facebook/imagepipeline/k/ak;)Lcom/facebook/imagepipeline/k/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/ak<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/k/g;"
        }
    .end annotation

    .line 162
    new-instance v0, Lcom/facebook/imagepipeline/k/g;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/l;->p:Lcom/facebook/imagepipeline/c/f;

    invoke-direct {v0, v1, p1}, Lcom/facebook/imagepipeline/k/g;-><init>(Lcom/facebook/imagepipeline/c/f;Lcom/facebook/imagepipeline/k/ak;)V

    return-object v0
.end method

.method public c()Lcom/facebook/imagepipeline/k/x;
    .locals 4

    .line 246
    new-instance v0, Lcom/facebook/imagepipeline/k/x;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/l;->j:Lcom/facebook/imagepipeline/d/e;

    .line 247
    invoke-interface {v1}, Lcom/facebook/imagepipeline/d/e;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/d/l;->k:Lcom/facebook/common/memory/g;

    iget-object v3, p0, Lcom/facebook/imagepipeline/d/l;->a:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/k/x;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/g;Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method public d(Lcom/facebook/imagepipeline/k/ak;)Lcom/facebook/imagepipeline/k/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/ak<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/k/h;"
        }
    .end annotation

    .line 167
    new-instance v0, Lcom/facebook/imagepipeline/k/h;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/l;->o:Lcom/facebook/imagepipeline/c/p;

    iget-object v2, p0, Lcom/facebook/imagepipeline/d/l;->p:Lcom/facebook/imagepipeline/c/f;

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/k/h;-><init>(Lcom/facebook/imagepipeline/c/p;Lcom/facebook/imagepipeline/c/f;Lcom/facebook/imagepipeline/k/ak;)V

    return-object v0
.end method

.method public d()Lcom/facebook/imagepipeline/k/y;
    .locals 4

    .line 253
    new-instance v0, Lcom/facebook/imagepipeline/k/y;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/l;->j:Lcom/facebook/imagepipeline/d/e;

    .line 254
    invoke-interface {v1}, Lcom/facebook/imagepipeline/d/e;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/d/l;->k:Lcom/facebook/common/memory/g;

    iget-object v3, p0, Lcom/facebook/imagepipeline/d/l;->a:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/k/y;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/g;Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method public e(Lcom/facebook/imagepipeline/k/ak;)Lcom/facebook/imagepipeline/k/m;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/ak<",
            "Lcom/facebook/imagepipeline/g/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/k/m;"
        }
    .end annotation

    .line 181
    new-instance v10, Lcom/facebook/imagepipeline/k/m;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/l;->d:Lcom/facebook/common/memory/a;

    iget-object v0, p0, Lcom/facebook/imagepipeline/d/l;->j:Lcom/facebook/imagepipeline/d/e;

    .line 183
    invoke-interface {v0}, Lcom/facebook/imagepipeline/d/e;->c()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/d/l;->e:Lcom/facebook/imagepipeline/decoder/b;

    iget-object v4, p0, Lcom/facebook/imagepipeline/d/l;->f:Lcom/facebook/imagepipeline/decoder/d;

    iget-boolean v5, p0, Lcom/facebook/imagepipeline/d/l;->g:Z

    iget-boolean v6, p0, Lcom/facebook/imagepipeline/d/l;->h:Z

    iget-boolean v7, p0, Lcom/facebook/imagepipeline/d/l;->i:Z

    iget v9, p0, Lcom/facebook/imagepipeline/d/l;->u:I

    move-object v0, v10

    move-object v8, p1

    invoke-direct/range {v0 .. v9}, Lcom/facebook/imagepipeline/k/m;-><init>(Lcom/facebook/common/memory/a;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/decoder/b;Lcom/facebook/imagepipeline/decoder/d;ZZZLcom/facebook/imagepipeline/k/ak;I)V

    return-object v10
.end method

.method public e()Lcom/facebook/imagepipeline/k/z;
    .locals 4

    .line 260
    new-instance v0, Lcom/facebook/imagepipeline/k/z;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/l;->j:Lcom/facebook/imagepipeline/d/e;

    .line 261
    invoke-interface {v1}, Lcom/facebook/imagepipeline/d/e;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/d/l;->k:Lcom/facebook/common/memory/g;

    iget-object v3, p0, Lcom/facebook/imagepipeline/d/l;->a:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/k/z;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/g;Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method public f()Lcom/facebook/imagepipeline/k/ab;
    .locals 3

    .line 272
    new-instance v0, Lcom/facebook/imagepipeline/k/ab;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/l;->j:Lcom/facebook/imagepipeline/d/e;

    .line 273
    invoke-interface {v1}, Lcom/facebook/imagepipeline/d/e;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/d/l;->k:Lcom/facebook/common/memory/g;

    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/k/ab;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/g;)V

    return-object v0
.end method

.method public f(Lcom/facebook/imagepipeline/k/ak;)Lcom/facebook/imagepipeline/k/o;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/ak<",
            "Lcom/facebook/imagepipeline/g/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/k/o;"
        }
    .end annotation

    .line 195
    new-instance v0, Lcom/facebook/imagepipeline/k/o;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/l;->l:Lcom/facebook/imagepipeline/c/e;

    iget-object v2, p0, Lcom/facebook/imagepipeline/d/l;->m:Lcom/facebook/imagepipeline/c/e;

    iget-object v3, p0, Lcom/facebook/imagepipeline/d/l;->p:Lcom/facebook/imagepipeline/c/f;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/facebook/imagepipeline/k/o;-><init>(Lcom/facebook/imagepipeline/c/e;Lcom/facebook/imagepipeline/c/e;Lcom/facebook/imagepipeline/c/f;Lcom/facebook/imagepipeline/k/ak;)V

    return-object v0
.end method

.method public g()Lcom/facebook/imagepipeline/k/ao;
    .locals 4

    .line 278
    new-instance v0, Lcom/facebook/imagepipeline/k/ao;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/l;->j:Lcom/facebook/imagepipeline/d/e;

    .line 279
    invoke-interface {v1}, Lcom/facebook/imagepipeline/d/e;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/d/l;->k:Lcom/facebook/common/memory/g;

    iget-object v3, p0, Lcom/facebook/imagepipeline/d/l;->a:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/k/ao;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/g;Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method public g(Lcom/facebook/imagepipeline/k/ak;)Lcom/facebook/imagepipeline/k/p;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/ak<",
            "Lcom/facebook/imagepipeline/g/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/k/p;"
        }
    .end annotation

    .line 205
    new-instance v0, Lcom/facebook/imagepipeline/k/p;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/l;->l:Lcom/facebook/imagepipeline/c/e;

    iget-object v2, p0, Lcom/facebook/imagepipeline/d/l;->m:Lcom/facebook/imagepipeline/c/e;

    iget-object v3, p0, Lcom/facebook/imagepipeline/d/l;->p:Lcom/facebook/imagepipeline/c/f;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/facebook/imagepipeline/k/p;-><init>(Lcom/facebook/imagepipeline/c/e;Lcom/facebook/imagepipeline/c/e;Lcom/facebook/imagepipeline/c/f;Lcom/facebook/imagepipeline/k/ak;)V

    return-object v0
.end method

.method public h()Lcom/facebook/imagepipeline/k/ac;
    .locals 4

    .line 285
    new-instance v0, Lcom/facebook/imagepipeline/k/ac;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/l;->j:Lcom/facebook/imagepipeline/d/e;

    .line 286
    invoke-interface {v1}, Lcom/facebook/imagepipeline/d/e;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/d/l;->k:Lcom/facebook/common/memory/g;

    iget-object v3, p0, Lcom/facebook/imagepipeline/d/l;->b:Landroid/content/res/Resources;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/k/ac;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/g;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public h(Lcom/facebook/imagepipeline/k/ak;)Lcom/facebook/imagepipeline/k/ah;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/ak<",
            "Lcom/facebook/imagepipeline/g/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/k/ah;"
        }
    .end annotation

    .line 215
    new-instance v6, Lcom/facebook/imagepipeline/k/ah;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/l;->l:Lcom/facebook/imagepipeline/c/e;

    iget-object v2, p0, Lcom/facebook/imagepipeline/d/l;->p:Lcom/facebook/imagepipeline/c/f;

    iget-object v3, p0, Lcom/facebook/imagepipeline/d/l;->k:Lcom/facebook/common/memory/g;

    iget-object v4, p0, Lcom/facebook/imagepipeline/d/l;->d:Lcom/facebook/common/memory/a;

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/k/ah;-><init>(Lcom/facebook/imagepipeline/c/e;Lcom/facebook/imagepipeline/c/f;Lcom/facebook/common/memory/g;Lcom/facebook/common/memory/a;Lcom/facebook/imagepipeline/k/ak;)V

    return-object v6
.end method

.method public i()Lcom/facebook/imagepipeline/k/ad;
    .locals 3

    .line 292
    new-instance v0, Lcom/facebook/imagepipeline/k/ad;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/l;->j:Lcom/facebook/imagepipeline/d/e;

    .line 293
    invoke-interface {v1}, Lcom/facebook/imagepipeline/d/e;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/d/l;->a:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/k/ad;-><init>(Ljava/util/concurrent/Executor;Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method public i(Lcom/facebook/imagepipeline/k/ak;)Lcom/facebook/imagepipeline/k/r;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/ak<",
            "Lcom/facebook/imagepipeline/g/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/k/r;"
        }
    .end annotation

    .line 225
    new-instance v0, Lcom/facebook/imagepipeline/k/r;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/l;->p:Lcom/facebook/imagepipeline/c/f;

    invoke-direct {v0, v1, p1}, Lcom/facebook/imagepipeline/k/r;-><init>(Lcom/facebook/imagepipeline/c/f;Lcom/facebook/imagepipeline/k/ak;)V

    return-object v0
.end method

.method public j(Lcom/facebook/imagepipeline/k/ak;)Lcom/facebook/imagepipeline/k/s;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/ak<",
            "Lcom/facebook/imagepipeline/g/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/k/s;"
        }
    .end annotation

    .line 232
    new-instance v0, Lcom/facebook/imagepipeline/k/s;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/l;->n:Lcom/facebook/imagepipeline/c/p;

    iget-object v2, p0, Lcom/facebook/imagepipeline/d/l;->p:Lcom/facebook/imagepipeline/c/f;

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/k/s;-><init>(Lcom/facebook/imagepipeline/c/p;Lcom/facebook/imagepipeline/c/f;Lcom/facebook/imagepipeline/k/ak;)V

    return-object v0
.end method

.method public k(Lcom/facebook/imagepipeline/k/ak;)Lcom/facebook/imagepipeline/k/ai;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/ak<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/k/ai;"
        }
    .end annotation

    .line 310
    new-instance v0, Lcom/facebook/imagepipeline/k/ai;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/l;->o:Lcom/facebook/imagepipeline/c/p;

    iget-object v2, p0, Lcom/facebook/imagepipeline/d/l;->p:Lcom/facebook/imagepipeline/c/f;

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/k/ai;-><init>(Lcom/facebook/imagepipeline/c/p;Lcom/facebook/imagepipeline/c/f;Lcom/facebook/imagepipeline/k/ak;)V

    return-object v0
.end method

.method public l(Lcom/facebook/imagepipeline/k/ak;)Lcom/facebook/imagepipeline/k/aj;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/ak<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/k/aj;"
        }
    .end annotation

    .line 316
    new-instance v0, Lcom/facebook/imagepipeline/k/aj;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/l;->q:Lcom/facebook/imagepipeline/b/f;

    iget-object v2, p0, Lcom/facebook/imagepipeline/d/l;->j:Lcom/facebook/imagepipeline/d/e;

    .line 317
    invoke-interface {v2}, Lcom/facebook/imagepipeline/d/e;->d()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/facebook/imagepipeline/k/aj;-><init>(Lcom/facebook/imagepipeline/k/ak;Lcom/facebook/imagepipeline/b/f;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public m(Lcom/facebook/imagepipeline/k/ak;)Lcom/facebook/imagepipeline/k/au;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/k/ak<",
            "TT;>;)",
            "Lcom/facebook/imagepipeline/k/au<",
            "TT;>;"
        }
    .end annotation

    .line 345
    new-instance v0, Lcom/facebook/imagepipeline/k/au;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/l;->j:Lcom/facebook/imagepipeline/d/e;

    .line 347
    invoke-interface {v1}, Lcom/facebook/imagepipeline/d/e;->e()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1, p1}, Lcom/facebook/imagepipeline/k/au;-><init>(ILjava/util/concurrent/Executor;Lcom/facebook/imagepipeline/k/ak;)V

    return-object v0
.end method

.method public n(Lcom/facebook/imagepipeline/k/ak;)Lcom/facebook/imagepipeline/k/ay;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/ak<",
            "Lcom/facebook/imagepipeline/g/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/k/ay;"
        }
    .end annotation

    .line 353
    new-instance v0, Lcom/facebook/imagepipeline/k/ay;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/l;->j:Lcom/facebook/imagepipeline/d/e;

    .line 354
    invoke-interface {v1}, Lcom/facebook/imagepipeline/d/e;->d()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/d/l;->k:Lcom/facebook/common/memory/g;

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/k/ay;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/g;Lcom/facebook/imagepipeline/k/ak;)V

    return-object v0
.end method

.method public o(Lcom/facebook/imagepipeline/k/ak;)Lcom/facebook/imagepipeline/k/i;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/ak<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/k/i;"
        }
    .end annotation

    .line 361
    new-instance v0, Lcom/facebook/imagepipeline/k/i;

    iget v1, p0, Lcom/facebook/imagepipeline/d/l;->r:I

    iget v2, p0, Lcom/facebook/imagepipeline/d/l;->s:I

    iget-boolean v3, p0, Lcom/facebook/imagepipeline/d/l;->t:Z

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/facebook/imagepipeline/k/i;-><init>(Lcom/facebook/imagepipeline/k/ak;IIZ)V

    return-object v0
.end method
