.class public Lcom/facebook/imagepipeline/d/h;
.super Ljava/lang/Object;
.source "ImagePipelineConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/d/h$a;,
        Lcom/facebook/imagepipeline/d/h$b;
    }
.end annotation


# static fields
.field private static C:Lcom/facebook/imagepipeline/d/h$b;


# instance fields
.field private final A:Lcom/facebook/imagepipeline/d/i;

.field private final B:Z

.field private final a:Landroid/graphics/Bitmap$Config;

.field private final b:Lcom/facebook/common/internal/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/j<",
            "Lcom/facebook/imagepipeline/c/q;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/facebook/imagepipeline/c/h$a;

.field private final d:Lcom/facebook/imagepipeline/c/f;

.field private final e:Landroid/content/Context;

.field private final f:Z

.field private final g:Lcom/facebook/imagepipeline/d/f;

.field private final h:Lcom/facebook/common/internal/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/j<",
            "Lcom/facebook/imagepipeline/c/q;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/facebook/imagepipeline/d/e;

.field private final j:Lcom/facebook/imagepipeline/c/n;

.field private final k:Lcom/facebook/imagepipeline/decoder/b;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final l:Lcom/facebook/imagepipeline/m/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final m:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final n:Lcom/facebook/common/internal/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/j<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Lcom/facebook/cache/a/c;

.field private final p:Lcom/facebook/common/memory/c;

.field private final q:I

.field private final r:Lcom/facebook/imagepipeline/k/ag;

.field private final s:I

.field private final t:Lcom/facebook/imagepipeline/b/f;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final u:Lcom/facebook/imagepipeline/memory/ac;

.field private final v:Lcom/facebook/imagepipeline/decoder/d;

.field private final w:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/imagepipeline/h/c;",
            ">;"
        }
    .end annotation
.end field

.field private final x:Z

.field private final y:Lcom/facebook/cache/a/c;

.field private final z:Lcom/facebook/imagepipeline/decoder/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 99
    new-instance v0, Lcom/facebook/imagepipeline/d/h$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/d/h$b;-><init>(Lcom/facebook/imagepipeline/d/h$1;)V

    sput-object v0, Lcom/facebook/imagepipeline/d/h;->C:Lcom/facebook/imagepipeline/d/h$b;

    return-void
.end method

.method private constructor <init>(Lcom/facebook/imagepipeline/d/h$a;)V
    .locals 3

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ImagePipelineConfig()"

    .line 103
    invoke-static {v0}, Lcom/facebook/imagepipeline/l/b;->a(Ljava/lang/String;)V

    .line 106
    :cond_0
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/h$a;->a(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/imagepipeline/d/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/d/i$a;->a()Lcom/facebook/imagepipeline/d/i;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/h;->A:Lcom/facebook/imagepipeline/d/i;

    .line 108
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/h$a;->b(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/common/internal/j;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/facebook/imagepipeline/c/i;

    .line 110
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/h$a;->c(Lcom/facebook/imagepipeline/d/h$a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/c/i;-><init>(Landroid/app/ActivityManager;)V

    goto :goto_0

    .line 111
    :cond_1
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/h$a;->b(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/common/internal/j;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/facebook/imagepipeline/d/h;->b:Lcom/facebook/common/internal/j;

    .line 113
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/h$a;->d(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/imagepipeline/c/h$a;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/facebook/imagepipeline/c/d;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/c/d;-><init>()V

    goto :goto_1

    .line 115
    :cond_2
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/h$a;->d(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/imagepipeline/c/h$a;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/facebook/imagepipeline/d/h;->c:Lcom/facebook/imagepipeline/c/h$a;

    .line 116
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/h$a;->e(Lcom/facebook/imagepipeline/d/h$a;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/h$a;->e(Lcom/facebook/imagepipeline/d/h$a;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/facebook/imagepipeline/d/h;->a:Landroid/graphics/Bitmap$Config;

    .line 118
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/h$a;->f(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/imagepipeline/c/f;

    move-result-object v0

    if-nez v0, :cond_4

    .line 119
    invoke-static {}, Lcom/facebook/imagepipeline/c/j;->a()Lcom/facebook/imagepipeline/c/j;

    move-result-object v0

    goto :goto_3

    .line 120
    :cond_4
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/h$a;->f(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/imagepipeline/c/f;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/facebook/imagepipeline/d/h;->d:Lcom/facebook/imagepipeline/c/f;

    .line 121
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/h$a;->c(Lcom/facebook/imagepipeline/d/h$a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/h;->e:Landroid/content/Context;

    .line 123
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/h$a;->g(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/imagepipeline/d/f;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v0, Lcom/facebook/imagepipeline/d/b;

    new-instance v1, Lcom/facebook/imagepipeline/d/d;

    invoke-direct {v1}, Lcom/facebook/imagepipeline/d/d;-><init>()V

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/d/b;-><init>(Lcom/facebook/imagepipeline/d/c;)V

    goto :goto_4

    .line 125
    :cond_5
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/h$a;->g(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/imagepipeline/d/f;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lcom/facebook/imagepipeline/d/h;->g:Lcom/facebook/imagepipeline/d/f;

    .line 126
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/h$a;->h(Lcom/facebook/imagepipeline/d/h$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/d/h;->f:Z

    .line 128
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/h$a;->i(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/common/internal/j;

    move-result-object v0

    if-nez v0, :cond_6

    new-instance v0, Lcom/facebook/imagepipeline/c/k;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/c/k;-><init>()V

    goto :goto_5

    .line 130
    :cond_6
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/h$a;->i(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/common/internal/j;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lcom/facebook/imagepipeline/d/h;->h:Lcom/facebook/common/internal/j;

    .line 132
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/h$a;->j(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/imagepipeline/c/n;

    move-result-object v0

    if-nez v0, :cond_7

    .line 133
    invoke-static {}, Lcom/facebook/imagepipeline/c/t;->h()Lcom/facebook/imagepipeline/c/t;

    move-result-object v0

    goto :goto_6

    .line 134
    :cond_7
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/h$a;->j(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/imagepipeline/c/n;

    move-result-object v0

    :goto_6
    iput-object v0, p0, Lcom/facebook/imagepipeline/d/h;->j:Lcom/facebook/imagepipeline/c/n;

    .line 135
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/h$a;->k(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/imagepipeline/decoder/b;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/h;->k:Lcom/facebook/imagepipeline/decoder/b;

    .line 136
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/h;->a(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/imagepipeline/m/c;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/h;->l:Lcom/facebook/imagepipeline/m/c;

    .line 137
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/h$a;->l(Lcom/facebook/imagepipeline/d/h$a;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/h;->m:Ljava/lang/Integer;

    .line 139
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/h$a;->m(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/common/internal/j;

    move-result-object v0

    if-nez v0, :cond_8

    new-instance v0, Lcom/facebook/imagepipeline/d/h$1;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/d/h$1;-><init>(Lcom/facebook/imagepipeline/d/h;)V

    goto :goto_7

    .line 146
    :cond_8
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/h$a;->m(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/common/internal/j;

    move-result-object v0

    :goto_7
    iput-object v0, p0, Lcom/facebook/imagepipeline/d/h;->n:Lcom/facebook/common/internal/j;

    .line 148
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/h$a;->n(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/cache/a/c;

    move-result-object v0

    if-nez v0, :cond_9

    .line 149
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/h$a;->c(Lcom/facebook/imagepipeline/d/h$a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/imagepipeline/d/h;->b(Landroid/content/Context;)Lcom/facebook/cache/a/c;

    move-result-object v0

    goto :goto_8

    .line 150
    :cond_9
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/h$a;->n(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/cache/a/c;

    move-result-object v0

    :goto_8
    iput-object v0, p0, Lcom/facebook/imagepipeline/d/h;->o:Lcom/facebook/cache/a/c;

    .line 152
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/h$a;->o(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/common/memory/c;

    move-result-object v0

    if-nez v0, :cond_a

    .line 153
    invoke-static {}, Lcom/facebook/common/memory/d;->a()Lcom/facebook/common/memory/d;

    move-result-object v0

    goto :goto_9

    .line 154
    :cond_a
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/h$a;->o(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/common/memory/c;

    move-result-object v0

    :goto_9
    iput-object v0, p0, Lcom/facebook/imagepipeline/d/h;->p:Lcom/facebook/common/memory/c;

    .line 155
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->A:Lcom/facebook/imagepipeline/d/i;

    invoke-static {p1, v0}, Lcom/facebook/imagepipeline/d/h;->a(Lcom/facebook/imagepipeline/d/h$a;Lcom/facebook/imagepipeline/d/i;)I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/d/h;->q:I

    .line 157
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/h$a;->p(Lcom/facebook/imagepipeline/d/h$a;)I

    move-result v0

    if-gez v0, :cond_b

    const/16 v0, 0x7530

    goto :goto_a

    .line 159
    :cond_b
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/h$a;->p(Lcom/facebook/imagepipeline/d/h$a;)I

    move-result v0

    :goto_a
    iput v0, p0, Lcom/facebook/imagepipeline/d/h;->s:I

    .line 160
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "ImagePipelineConfig->mNetworkFetcher"

    .line 161
    invoke-static {v0}, Lcom/facebook/imagepipeline/l/b;->a(Ljava/lang/String;)V

    .line 164
    :cond_c
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/h$a;->q(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/imagepipeline/k/ag;

    move-result-object v0

    if-nez v0, :cond_d

    new-instance v0, Lcom/facebook/imagepipeline/k/u;

    iget v1, p0, Lcom/facebook/imagepipeline/d/h;->s:I

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/k/u;-><init>(I)V

    goto :goto_b

    .line 166
    :cond_d
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/h$a;->q(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/imagepipeline/k/ag;

    move-result-object v0

    :goto_b
    iput-object v0, p0, Lcom/facebook/imagepipeline/d/h;->r:Lcom/facebook/imagepipeline/k/ag;

    .line 167
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 168
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->a()V

    .line 170
    :cond_e
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/h$a;->r(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/imagepipeline/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/h;->t:Lcom/facebook/imagepipeline/b/f;

    .line 172
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/h$a;->s(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/imagepipeline/memory/ac;

    move-result-object v0

    if-nez v0, :cond_f

    new-instance v0, Lcom/facebook/imagepipeline/memory/ac;

    .line 173
    invoke-static {}, Lcom/facebook/imagepipeline/memory/ab;->l()Lcom/facebook/imagepipeline/memory/ab$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/ab$a;->a()Lcom/facebook/imagepipeline/memory/ab;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/memory/ac;-><init>(Lcom/facebook/imagepipeline/memory/ab;)V

    goto :goto_c

    .line 174
    :cond_f
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/h$a;->s(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/imagepipeline/memory/ac;

    move-result-object v0

    :goto_c
    iput-object v0, p0, Lcom/facebook/imagepipeline/d/h;->u:Lcom/facebook/imagepipeline/memory/ac;

    .line 176
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/h$a;->t(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/imagepipeline/decoder/d;

    move-result-object v0

    if-nez v0, :cond_10

    new-instance v0, Lcom/facebook/imagepipeline/decoder/f;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/decoder/f;-><init>()V

    goto :goto_d

    .line 178
    :cond_10
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/h$a;->t(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/imagepipeline/decoder/d;

    move-result-object v0

    :goto_d
    iput-object v0, p0, Lcom/facebook/imagepipeline/d/h;->v:Lcom/facebook/imagepipeline/decoder/d;

    .line 180
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/h$a;->u(Lcom/facebook/imagepipeline/d/h$a;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_11

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_e

    .line 182
    :cond_11
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/h$a;->u(Lcom/facebook/imagepipeline/d/h$a;)Ljava/util/Set;

    move-result-object v0

    :goto_e
    iput-object v0, p0, Lcom/facebook/imagepipeline/d/h;->w:Ljava/util/Set;

    .line 183
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/h$a;->v(Lcom/facebook/imagepipeline/d/h$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/d/h;->x:Z

    .line 185
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/h$a;->w(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/cache/a/c;

    move-result-object v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->o:Lcom/facebook/cache/a/c;

    goto :goto_f

    .line 187
    :cond_12
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/h$a;->w(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/cache/a/c;

    move-result-object v0

    :goto_f
    iput-object v0, p0, Lcom/facebook/imagepipeline/d/h;->y:Lcom/facebook/cache/a/c;

    .line 188
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/h$a;->x(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/imagepipeline/decoder/c;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/h;->z:Lcom/facebook/imagepipeline/decoder/c;

    .line 190
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->u:Lcom/facebook/imagepipeline/memory/ac;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/ac;->d()I

    move-result v0

    .line 192
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/h$a;->y(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/imagepipeline/d/e;

    move-result-object v1

    if-nez v1, :cond_13

    new-instance v1, Lcom/facebook/imagepipeline/d/a;

    invoke-direct {v1, v0}, Lcom/facebook/imagepipeline/d/a;-><init>(I)V

    goto :goto_10

    .line 194
    :cond_13
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/h$a;->y(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/imagepipeline/d/e;

    move-result-object v1

    :goto_10
    iput-object v1, p0, Lcom/facebook/imagepipeline/d/h;->i:Lcom/facebook/imagepipeline/d/e;

    .line 195
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/h$a;->z(Lcom/facebook/imagepipeline/d/h$a;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/facebook/imagepipeline/d/h;->B:Z

    .line 197
    iget-object p1, p0, Lcom/facebook/imagepipeline/d/h;->A:Lcom/facebook/imagepipeline/d/i;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/d/i;->e()Lcom/facebook/common/f/b;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 199
    new-instance v0, Lcom/facebook/imagepipeline/b/d;

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/d/h;->u()Lcom/facebook/imagepipeline/memory/ac;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/b/d;-><init>(Lcom/facebook/imagepipeline/memory/ac;)V

    .line 200
    iget-object v1, p0, Lcom/facebook/imagepipeline/d/h;->A:Lcom/facebook/imagepipeline/d/i;

    invoke-static {p1, v1, v0}, Lcom/facebook/imagepipeline/d/h;->a(Lcom/facebook/common/f/b;Lcom/facebook/imagepipeline/d/i;Lcom/facebook/common/f/a;)V

    goto :goto_11

    .line 203
    :cond_14
    iget-object p1, p0, Lcom/facebook/imagepipeline/d/h;->A:Lcom/facebook/imagepipeline/d/i;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/d/i;->b()Z

    move-result p1

    if-eqz p1, :cond_15

    sget-boolean p1, Lcom/facebook/common/f/c;->a:Z

    if-eqz p1, :cond_15

    .line 205
    invoke-static {}, Lcom/facebook/common/f/c;->a()Lcom/facebook/common/f/b;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 207
    new-instance v0, Lcom/facebook/imagepipeline/b/d;

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/d/h;->u()Lcom/facebook/imagepipeline/memory/ac;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/b/d;-><init>(Lcom/facebook/imagepipeline/memory/ac;)V

    .line 208
    iget-object v1, p0, Lcom/facebook/imagepipeline/d/h;->A:Lcom/facebook/imagepipeline/d/i;

    invoke-static {p1, v1, v0}, Lcom/facebook/imagepipeline/d/h;->a(Lcom/facebook/common/f/b;Lcom/facebook/imagepipeline/d/i;Lcom/facebook/common/f/a;)V

    .line 212
    :cond_15
    :goto_11
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->b()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 213
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->a()V

    :cond_16
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/d/h$a;Lcom/facebook/imagepipeline/d/h$1;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/d/h;-><init>(Lcom/facebook/imagepipeline/d/h$a;)V

    return-void
.end method

.method private static a(Lcom/facebook/imagepipeline/d/h$a;Lcom/facebook/imagepipeline/d/i;)I
    .locals 1

    .line 389
    invoke-static {p0}, Lcom/facebook/imagepipeline/d/h$a;->B(Lcom/facebook/imagepipeline/d/h$a;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 390
    invoke-static {p0}, Lcom/facebook/imagepipeline/d/h$a;->B(Lcom/facebook/imagepipeline/d/h$a;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 391
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/d/i;->i()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Landroid/content/Context;)Lcom/facebook/imagepipeline/d/h$a;
    .locals 2

    .line 370
    new-instance v0, Lcom/facebook/imagepipeline/d/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/imagepipeline/d/h$a;-><init>(Landroid/content/Context;Lcom/facebook/imagepipeline/d/h$1;)V

    return-object v0
.end method

.method private static a(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/imagepipeline/m/c;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 375
    invoke-static {p0}, Lcom/facebook/imagepipeline/d/h$a;->A(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/imagepipeline/m/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/imagepipeline/d/h$a;->l(Lcom/facebook/imagepipeline/d/h$a;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 376
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You can\'t define a custom ImageTranscoderFactory and provide an ImageTranscoderType"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 379
    :cond_0
    invoke-static {p0}, Lcom/facebook/imagepipeline/d/h$a;->A(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/imagepipeline/m/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 380
    invoke-static {p0}, Lcom/facebook/imagepipeline/d/h$a;->A(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/imagepipeline/m/c;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Lcom/facebook/common/f/b;Lcom/facebook/imagepipeline/d/i;Lcom/facebook/common/f/a;)V
    .locals 0

    .line 221
    sput-object p0, Lcom/facebook/common/f/c;->d:Lcom/facebook/common/f/b;

    .line 223
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/d/i;->d()Lcom/facebook/common/f/b$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 225
    invoke-interface {p0, p1}, Lcom/facebook/common/f/b;->a(Lcom/facebook/common/f/b$a;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 228
    invoke-interface {p0, p2}, Lcom/facebook/common/f/b;->a(Lcom/facebook/common/f/a;)V

    :cond_1
    return-void
.end method

.method private static b(Landroid/content/Context;)Lcom/facebook/cache/a/c;
    .locals 1

    .line 234
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DiskCacheConfig.getDefaultMainDiskCacheConfig"

    .line 235
    invoke-static {v0}, Lcom/facebook/imagepipeline/l/b;->a(Ljava/lang/String;)V

    .line 237
    :cond_0
    invoke-static {p0}, Lcom/facebook/cache/a/c;->a(Landroid/content/Context;)Lcom/facebook/cache/a/c$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/facebook/cache/a/c$a;->a()Lcom/facebook/cache/a/c;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->a()V

    :cond_1
    return-object p0

    :catchall_0
    move-exception p0

    .line 239
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->a()V

    .line 242
    :cond_2
    throw p0
.end method

.method public static f()Lcom/facebook/imagepipeline/d/h$b;
    .locals 1

    .line 271
    sget-object v0, Lcom/facebook/imagepipeline/d/h;->C:Lcom/facebook/imagepipeline/d/h$b;

    return-object v0
.end method


# virtual methods
.method public A()Lcom/facebook/imagepipeline/d/i;
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->A:Lcom/facebook/imagepipeline/d/i;

    return-object v0
.end method

.method public a()Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->a:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public b()Lcom/facebook/common/internal/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/j<",
            "Lcom/facebook/imagepipeline/c/q;",
            ">;"
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->b:Lcom/facebook/common/internal/j;

    return-object v0
.end method

.method public c()Lcom/facebook/imagepipeline/c/h$a;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->c:Lcom/facebook/imagepipeline/c/h$a;

    return-object v0
.end method

.method public d()Lcom/facebook/imagepipeline/c/f;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->d:Lcom/facebook/imagepipeline/c/f;

    return-object v0
.end method

.method public e()Landroid/content/Context;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->e:Landroid/content/Context;

    return-object v0
.end method

.method public g()Lcom/facebook/imagepipeline/d/f;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->g:Lcom/facebook/imagepipeline/d/f;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 279
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/d/h;->f:Z

    return v0
.end method

.method public i()Z
    .locals 1

    .line 283
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/d/h;->B:Z

    return v0
.end method

.method public j()Lcom/facebook/common/internal/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/j<",
            "Lcom/facebook/imagepipeline/c/q;",
            ">;"
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->h:Lcom/facebook/common/internal/j;

    return-object v0
.end method

.method public k()Lcom/facebook/imagepipeline/d/e;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->i:Lcom/facebook/imagepipeline/d/e;

    return-object v0
.end method

.method public l()Lcom/facebook/imagepipeline/c/n;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->j:Lcom/facebook/imagepipeline/c/n;

    return-object v0
.end method

.method public m()Lcom/facebook/imagepipeline/decoder/b;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->k:Lcom/facebook/imagepipeline/decoder/b;

    return-object v0
.end method

.method public n()Lcom/facebook/imagepipeline/m/c;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->l:Lcom/facebook/imagepipeline/m/c;

    return-object v0
.end method

.method public o()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->m:Ljava/lang/Integer;

    return-object v0
.end method

.method public p()Lcom/facebook/common/internal/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/j<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->n:Lcom/facebook/common/internal/j;

    return-object v0
.end method

.method public q()Lcom/facebook/cache/a/c;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->o:Lcom/facebook/cache/a/c;

    return-object v0
.end method

.method public r()Lcom/facebook/common/memory/c;
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->p:Lcom/facebook/common/memory/c;

    return-object v0
.end method

.method public s()I
    .locals 1

    .line 328
    iget v0, p0, Lcom/facebook/imagepipeline/d/h;->q:I

    return v0
.end method

.method public t()Lcom/facebook/imagepipeline/k/ag;
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->r:Lcom/facebook/imagepipeline/k/ag;

    return-object v0
.end method

.method public u()Lcom/facebook/imagepipeline/memory/ac;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->u:Lcom/facebook/imagepipeline/memory/ac;

    return-object v0
.end method

.method public v()Lcom/facebook/imagepipeline/decoder/d;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->v:Lcom/facebook/imagepipeline/decoder/d;

    return-object v0
.end method

.method public w()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/facebook/imagepipeline/h/c;",
            ">;"
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->w:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public x()Z
    .locals 1

    .line 353
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/d/h;->x:Z

    return v0
.end method

.method public y()Lcom/facebook/cache/a/c;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->y:Lcom/facebook/cache/a/c;

    return-object v0
.end method

.method public z()Lcom/facebook/imagepipeline/decoder/c;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->z:Lcom/facebook/imagepipeline/decoder/c;

    return-object v0
.end method
