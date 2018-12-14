.class public Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
.super Ljava/lang/Object;
.source "DanmakuContext.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$a;,
        Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;
    }
.end annotation


# instance fields
.field private A:Lmaster/flame/danmaku/danmaku/model/android/b;

.field private B:Z

.field private C:Z

.field public a:Landroid/graphics/Typeface;

.field public b:I

.field public c:F

.field public d:I

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public k:I

.field public l:F

.field public m:Lmaster/flame/danmaku/danmaku/model/a;

.field n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public q:Lmaster/flame/danmaku/danmaku/model/b;

.field public r:Lmaster/flame/danmaku/danmaku/model/j;

.field public s:Lmaster/flame/danmaku/a/b;

.field public t:Lmaster/flame/danmaku/danmaku/model/android/d;

.field public u:Lmaster/flame/danmaku/danmaku/model/android/c;

.field public v:B

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a:Landroid/graphics/Typeface;

    .line 46
    sget v0, Lmaster/flame/danmaku/danmaku/model/c;->a:I

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->b:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 48
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->c:F

    const/4 v1, 0x0

    .line 50
    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->d:I

    const/4 v2, 0x1

    .line 55
    iput-boolean v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->e:Z

    .line 57
    iput-boolean v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->f:Z

    .line 59
    iput-boolean v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->g:Z

    .line 61
    iput-boolean v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->h:Z

    .line 63
    iput-boolean v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->i:Z

    .line 65
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->j:Ljava/util/List;

    const/4 v2, -0x1

    .line 70
    iput v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->k:I

    .line 75
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->l:F

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->n:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->o:Ljava/util/List;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->p:Ljava/util/List;

    .line 87
    iput-boolean v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->x:Z

    .line 89
    iput-boolean v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->y:Z

    .line 91
    iput-boolean v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->z:Z

    .line 99
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/a;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/android/a;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->q:Lmaster/flame/danmaku/danmaku/model/b;

    .line 101
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/j;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/j;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->r:Lmaster/flame/danmaku/danmaku/model/j;

    .line 103
    new-instance v0, Lmaster/flame/danmaku/a/b;

    invoke-direct {v0}, Lmaster/flame/danmaku/a/b;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->s:Lmaster/flame/danmaku/a/b;

    .line 105
    invoke-static {}, Lmaster/flame/danmaku/danmaku/model/android/d;->a()Lmaster/flame/danmaku/danmaku/model/android/d;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Lmaster/flame/danmaku/danmaku/model/android/d;

    .line 107
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/c;->c:Lmaster/flame/danmaku/danmaku/model/android/c;

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->u:Lmaster/flame/danmaku/danmaku/model/android/c;

    .line 130
    iput-byte v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->v:B

    return-void
.end method

.method public static a()Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 1

    .line 24
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;-><init>()V

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;Z)V"
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->s:Lmaster/flame/danmaku/a/b;

    invoke-virtual {v0, p1, p3}, Lmaster/flame/danmaku/a/b;->a(Ljava/lang/String;Z)Lmaster/flame/danmaku/a/b$e;

    move-result-object p1

    .line 215
    invoke-interface {p1, p2}, Lmaster/flame/danmaku/a/b$e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private varargs a(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V
    .locals 2

    .line 681
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->w:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 682
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 683
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$a;

    if-eqz v1, :cond_0

    .line 685
    invoke-interface {v1, p0, p1, p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$a;->a(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(F)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 3

    .line 148
    sget v0, Lmaster/flame/danmaku/danmaku/model/c;->a:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int v0, v0

    .line 149
    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->b:I

    if-eq v0, v1, :cond_0

    .line 150
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->b:I

    .line 151
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->q:Lmaster/flame/danmaku/danmaku/model/b;

    invoke-virtual {v1, v0}, Lmaster/flame/danmaku/danmaku/model/b;->a(I)V

    .line 152
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->TRANSPARENCY:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public varargs a(I[F)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 3

    .line 361
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->q:Lmaster/flame/danmaku/danmaku/model/b;

    invoke-virtual {v0, p1, p2}, Lmaster/flame/danmaku/danmaku/model/b;->a(I[F)V

    .line 362
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->DANMAKU_STYLE:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public a(Ljava/util/Map;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 577
    :goto_0
    iput-boolean v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->B:Z

    if-nez p1, :cond_1

    .line 579
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->s:Lmaster/flame/danmaku/a/b;

    const-string v3, "1018_Filter"

    invoke-virtual {v2, v3, v1}, Lmaster/flame/danmaku/a/b;->c(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    const-string v2, "1018_Filter"

    .line 581
    invoke-direct {p0, v2, p1, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 583
    :goto_1
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->r:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {v2}, Lmaster/flame/danmaku/danmaku/model/j;->e()V

    .line 584
    sget-object v2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->MAXIMUN_LINES:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-direct {p0, v2, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public a(Lmaster/flame/danmaku/danmaku/model/a;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 0

    .line 636
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->m:Lmaster/flame/danmaku/danmaku/model/a;

    return-object p0
.end method

.method public a(Lmaster/flame/danmaku/danmaku/model/android/b;Lmaster/flame/danmaku/danmaku/model/android/b$a;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 0

    .line 627
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->A:Lmaster/flame/danmaku/danmaku/model/android/b;

    .line 628
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->A:Lmaster/flame/danmaku/danmaku/model/android/b;

    if-eqz p1, :cond_0

    .line 629
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->A:Lmaster/flame/danmaku/danmaku/model/android/b;

    invoke-virtual {p1, p2}, Lmaster/flame/danmaku/danmaku/model/android/b;->a(Lmaster/flame/danmaku/danmaku/model/android/b$a;)V

    .line 630
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->q:Lmaster/flame/danmaku/danmaku/model/b;

    iget-object p2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->A:Lmaster/flame/danmaku/danmaku/model/android/b;

    invoke-virtual {p1, p2}, Lmaster/flame/danmaku/danmaku/model/b;->a(Lmaster/flame/danmaku/danmaku/model/android/b;)V

    :cond_0
    return-object p0
.end method

.method public a(Z)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 3

    .line 544
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->y:Z

    if-eq v0, p1, :cond_0

    .line 545
    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->y:Z

    .line 546
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->r:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/j;->e()V

    .line 547
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->DUPLICATE_MERGING_ENABLED:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public a(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$a;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 651
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->w:Ljava/util/List;

    if-nez v0, :cond_1

    .line 652
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->w:Ljava/util/List;

    .line 654
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 655
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 659
    :cond_3
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->w:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(F)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 3

    .line 158
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->c:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 159
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->c:F

    .line 160
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->q:Lmaster/flame/danmaku/danmaku/model/b;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/b;->c()V

    .line 161
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->q:Lmaster/flame/danmaku/danmaku/model/b;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/model/b;->a(F)V

    .line 162
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->r:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/j;->d()V

    .line 163
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->r:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/j;->c()V

    .line 164
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->SCALE_TEXTSIZE:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public b(Ljava/util/Map;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 601
    :goto_0
    iput-boolean v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->C:Z

    if-nez p1, :cond_1

    .line 603
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->s:Lmaster/flame/danmaku/a/b;

    const-string v3, "1019_Filter"

    invoke-virtual {v2, v3, v1}, Lmaster/flame/danmaku/a/b;->c(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    const-string v2, "1019_Filter"

    .line 605
    invoke-direct {p0, v2, p1, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 607
    :goto_1
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->r:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {v2}, Lmaster/flame/danmaku/danmaku/model/j;->e()V

    .line 608
    sget-object v2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->OVERLAPPING_ENABLE:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-direct {p0, v2, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public b()Lmaster/flame/danmaku/danmaku/model/b;
    .locals 1

    .line 120
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->q:Lmaster/flame/danmaku/danmaku/model/b;

    return-object v0
.end method

.method public c(F)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 3

    .line 528
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->l:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 529
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->l:F

    .line 530
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Lmaster/flame/danmaku/danmaku/model/android/d;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/d;->a(F)V

    .line 531
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->r:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/j;->d()V

    .line 532
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->r:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/j;->c()V

    .line 533
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->SCROLL_SPEED_FACTOR:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public c()Z
    .locals 1

    .line 553
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->y:Z

    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 714
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 566
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->z:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .line 613
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->B:Z

    return v0
.end method

.method public f()Z
    .locals 1

    .line 617
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->C:Z

    return v0
.end method

.method public g()V
    .locals 1

    .line 674
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->w:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 676
    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->w:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public h()Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 1

    .line 704
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/a;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/android/a;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->q:Lmaster/flame/danmaku/danmaku/model/b;

    .line 705
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/j;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/j;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->r:Lmaster/flame/danmaku/danmaku/model/j;

    .line 707
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->s:Lmaster/flame/danmaku/a/b;

    invoke-virtual {v0}, Lmaster/flame/danmaku/a/b;->a()V

    .line 708
    invoke-static {}, Lmaster/flame/danmaku/danmaku/model/android/d;->a()Lmaster/flame/danmaku/danmaku/model/android/d;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Lmaster/flame/danmaku/danmaku/model/android/d;

    return-object p0
.end method
