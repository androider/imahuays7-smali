.class public Lcom/facebook/imagepipeline/d/h$a;
.super Ljava/lang/Object;
.source "ImagePipelineConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/d/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final A:Lcom/facebook/imagepipeline/d/i$a;

.field private B:Z

.field private a:Landroid/graphics/Bitmap$Config;

.field private b:Lcom/facebook/common/internal/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/j<",
            "Lcom/facebook/imagepipeline/c/q;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/facebook/imagepipeline/c/h$a;

.field private d:Lcom/facebook/imagepipeline/c/f;

.field private final e:Landroid/content/Context;

.field private f:Z

.field private g:Lcom/facebook/common/internal/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/j<",
            "Lcom/facebook/imagepipeline/c/q;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/facebook/imagepipeline/d/e;

.field private i:Lcom/facebook/imagepipeline/c/n;

.field private j:Lcom/facebook/imagepipeline/decoder/b;

.field private k:Lcom/facebook/imagepipeline/m/c;

.field private l:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private m:Lcom/facebook/common/internal/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/j<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/facebook/cache/a/c;

.field private o:Lcom/facebook/common/memory/c;

.field private p:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private q:Lcom/facebook/imagepipeline/k/ag;

.field private r:Lcom/facebook/imagepipeline/b/f;

.field private s:Lcom/facebook/imagepipeline/memory/ac;

.field private t:Lcom/facebook/imagepipeline/decoder/d;

.field private u:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/imagepipeline/h/c;",
            ">;"
        }
    .end annotation
.end field

.field private v:Z

.field private w:Lcom/facebook/cache/a/c;

.field private x:Lcom/facebook/imagepipeline/d/f;

.field private y:Lcom/facebook/imagepipeline/decoder/c;

.field private z:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 424
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/d/h$a;->f:Z

    const/4 v0, 0x0

    .line 430
    iput-object v0, p0, Lcom/facebook/imagepipeline/d/h$a;->l:Ljava/lang/Integer;

    .line 434
    iput-object v0, p0, Lcom/facebook/imagepipeline/d/h$a;->p:Ljava/lang/Integer;

    const/4 v0, 0x1

    .line 440
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/d/h$a;->v:Z

    const/4 v1, -0x1

    .line 444
    iput v1, p0, Lcom/facebook/imagepipeline/d/h$a;->z:I

    .line 445
    new-instance v1, Lcom/facebook/imagepipeline/d/i$a;

    invoke-direct {v1, p0}, Lcom/facebook/imagepipeline/d/i$a;-><init>(Lcom/facebook/imagepipeline/d/h$a;)V

    iput-object v1, p0, Lcom/facebook/imagepipeline/d/h$a;->A:Lcom/facebook/imagepipeline/d/i$a;

    .line 447
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/d/h$a;->B:Z

    .line 451
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/facebook/imagepipeline/d/h$a;->e:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/facebook/imagepipeline/d/h$1;)V
    .locals 0

    .line 417
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/d/h$a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic A(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/imagepipeline/m/c;
    .locals 0

    .line 417
    iget-object p0, p0, Lcom/facebook/imagepipeline/d/h$a;->k:Lcom/facebook/imagepipeline/m/c;

    return-object p0
.end method

.method static synthetic B(Lcom/facebook/imagepipeline/d/h$a;)Ljava/lang/Integer;
    .locals 0

    .line 417
    iget-object p0, p0, Lcom/facebook/imagepipeline/d/h$a;->p:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/imagepipeline/d/i$a;
    .locals 0

    .line 417
    iget-object p0, p0, Lcom/facebook/imagepipeline/d/h$a;->A:Lcom/facebook/imagepipeline/d/i$a;

    return-object p0
.end method

.method static synthetic b(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/common/internal/j;
    .locals 0

    .line 417
    iget-object p0, p0, Lcom/facebook/imagepipeline/d/h$a;->b:Lcom/facebook/common/internal/j;

    return-object p0
.end method

.method static synthetic c(Lcom/facebook/imagepipeline/d/h$a;)Landroid/content/Context;
    .locals 0

    .line 417
    iget-object p0, p0, Lcom/facebook/imagepipeline/d/h$a;->e:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/imagepipeline/c/h$a;
    .locals 0

    .line 417
    iget-object p0, p0, Lcom/facebook/imagepipeline/d/h$a;->c:Lcom/facebook/imagepipeline/c/h$a;

    return-object p0
.end method

.method static synthetic e(Lcom/facebook/imagepipeline/d/h$a;)Landroid/graphics/Bitmap$Config;
    .locals 0

    .line 417
    iget-object p0, p0, Lcom/facebook/imagepipeline/d/h$a;->a:Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method static synthetic f(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/imagepipeline/c/f;
    .locals 0

    .line 417
    iget-object p0, p0, Lcom/facebook/imagepipeline/d/h$a;->d:Lcom/facebook/imagepipeline/c/f;

    return-object p0
.end method

.method static synthetic g(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/imagepipeline/d/f;
    .locals 0

    .line 417
    iget-object p0, p0, Lcom/facebook/imagepipeline/d/h$a;->x:Lcom/facebook/imagepipeline/d/f;

    return-object p0
.end method

.method static synthetic h(Lcom/facebook/imagepipeline/d/h$a;)Z
    .locals 0

    .line 417
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/d/h$a;->f:Z

    return p0
.end method

.method static synthetic i(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/common/internal/j;
    .locals 0

    .line 417
    iget-object p0, p0, Lcom/facebook/imagepipeline/d/h$a;->g:Lcom/facebook/common/internal/j;

    return-object p0
.end method

.method static synthetic j(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/imagepipeline/c/n;
    .locals 0

    .line 417
    iget-object p0, p0, Lcom/facebook/imagepipeline/d/h$a;->i:Lcom/facebook/imagepipeline/c/n;

    return-object p0
.end method

.method static synthetic k(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/imagepipeline/decoder/b;
    .locals 0

    .line 417
    iget-object p0, p0, Lcom/facebook/imagepipeline/d/h$a;->j:Lcom/facebook/imagepipeline/decoder/b;

    return-object p0
.end method

.method static synthetic l(Lcom/facebook/imagepipeline/d/h$a;)Ljava/lang/Integer;
    .locals 0

    .line 417
    iget-object p0, p0, Lcom/facebook/imagepipeline/d/h$a;->l:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic m(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/common/internal/j;
    .locals 0

    .line 417
    iget-object p0, p0, Lcom/facebook/imagepipeline/d/h$a;->m:Lcom/facebook/common/internal/j;

    return-object p0
.end method

.method static synthetic n(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/cache/a/c;
    .locals 0

    .line 417
    iget-object p0, p0, Lcom/facebook/imagepipeline/d/h$a;->n:Lcom/facebook/cache/a/c;

    return-object p0
.end method

.method static synthetic o(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/common/memory/c;
    .locals 0

    .line 417
    iget-object p0, p0, Lcom/facebook/imagepipeline/d/h$a;->o:Lcom/facebook/common/memory/c;

    return-object p0
.end method

.method static synthetic p(Lcom/facebook/imagepipeline/d/h$a;)I
    .locals 0

    .line 417
    iget p0, p0, Lcom/facebook/imagepipeline/d/h$a;->z:I

    return p0
.end method

.method static synthetic q(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/imagepipeline/k/ag;
    .locals 0

    .line 417
    iget-object p0, p0, Lcom/facebook/imagepipeline/d/h$a;->q:Lcom/facebook/imagepipeline/k/ag;

    return-object p0
.end method

.method static synthetic r(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/imagepipeline/b/f;
    .locals 0

    .line 417
    iget-object p0, p0, Lcom/facebook/imagepipeline/d/h$a;->r:Lcom/facebook/imagepipeline/b/f;

    return-object p0
.end method

.method static synthetic s(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/imagepipeline/memory/ac;
    .locals 0

    .line 417
    iget-object p0, p0, Lcom/facebook/imagepipeline/d/h$a;->s:Lcom/facebook/imagepipeline/memory/ac;

    return-object p0
.end method

.method static synthetic t(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/imagepipeline/decoder/d;
    .locals 0

    .line 417
    iget-object p0, p0, Lcom/facebook/imagepipeline/d/h$a;->t:Lcom/facebook/imagepipeline/decoder/d;

    return-object p0
.end method

.method static synthetic u(Lcom/facebook/imagepipeline/d/h$a;)Ljava/util/Set;
    .locals 0

    .line 417
    iget-object p0, p0, Lcom/facebook/imagepipeline/d/h$a;->u:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic v(Lcom/facebook/imagepipeline/d/h$a;)Z
    .locals 0

    .line 417
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/d/h$a;->v:Z

    return p0
.end method

.method static synthetic w(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/cache/a/c;
    .locals 0

    .line 417
    iget-object p0, p0, Lcom/facebook/imagepipeline/d/h$a;->w:Lcom/facebook/cache/a/c;

    return-object p0
.end method

.method static synthetic x(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/imagepipeline/decoder/c;
    .locals 0

    .line 417
    iget-object p0, p0, Lcom/facebook/imagepipeline/d/h$a;->y:Lcom/facebook/imagepipeline/decoder/c;

    return-object p0
.end method

.method static synthetic y(Lcom/facebook/imagepipeline/d/h$a;)Lcom/facebook/imagepipeline/d/e;
    .locals 0

    .line 417
    iget-object p0, p0, Lcom/facebook/imagepipeline/d/h$a;->h:Lcom/facebook/imagepipeline/d/e;

    return-object p0
.end method

.method static synthetic z(Lcom/facebook/imagepipeline/d/h$a;)Z
    .locals 0

    .line 417
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/d/h$a;->B:Z

    return p0
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/d/h$a;
    .locals 0

    .line 455
    iput-object p1, p0, Lcom/facebook/imagepipeline/d/h$a;->a:Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method public a(Lcom/facebook/cache/a/c;)Lcom/facebook/imagepipeline/d/h$a;
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/facebook/imagepipeline/d/h$a;->n:Lcom/facebook/cache/a/c;

    return-object p0
.end method

.method public a(Lcom/facebook/imagepipeline/k/ag;)Lcom/facebook/imagepipeline/d/h$a;
    .locals 0

    .line 570
    iput-object p1, p0, Lcom/facebook/imagepipeline/d/h$a;->q:Lcom/facebook/imagepipeline/k/ag;

    return-object p0
.end method

.method public a(Ljava/util/Set;)Lcom/facebook/imagepipeline/d/h$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/facebook/imagepipeline/h/c;",
            ">;)",
            "Lcom/facebook/imagepipeline/d/h$a;"
        }
    .end annotation

    .line 590
    iput-object p1, p0, Lcom/facebook/imagepipeline/d/h$a;->u:Ljava/util/Set;

    return-object p0
.end method

.method public a(Z)Lcom/facebook/imagepipeline/d/h$a;
    .locals 0

    .line 492
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/d/h$a;->f:Z

    return-object p0
.end method

.method public a()Lcom/facebook/imagepipeline/d/h;
    .locals 2

    .line 614
    new-instance v0, Lcom/facebook/imagepipeline/d/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/imagepipeline/d/h;-><init>(Lcom/facebook/imagepipeline/d/h$a;Lcom/facebook/imagepipeline/d/h$1;)V

    return-object v0
.end method

.method public b(Z)Lcom/facebook/imagepipeline/d/h$a;
    .locals 0

    .line 501
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/d/h$a;->B:Z

    return-object p0
.end method

.method public c(Z)Lcom/facebook/imagepipeline/d/h$a;
    .locals 0

    .line 595
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/d/h$a;->v:Z

    return-object p0
.end method
