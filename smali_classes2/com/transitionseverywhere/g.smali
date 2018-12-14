.class public abstract Lcom/transitionseverywhere/g;
.super Ljava/lang/Object;
.source "Transition.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transitionseverywhere/g$a;,
        Lcom/transitionseverywhere/g$c;,
        Lcom/transitionseverywhere/g$b;
    }
.end annotation


# static fields
.field private static final F:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/animation/Animator;",
            "Lcom/transitionseverywhere/g$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final a:[I


# instance fields
.field A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field B:Lcom/transitionseverywhere/i;

.field C:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field D:Lcom/transitionseverywhere/e;

.field private E:Lcom/transitionseverywhere/m;

.field private G:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private H:Z

.field private b:Ljava/lang/String;

.field private c:Lcom/transitionseverywhere/m;

.field d:J

.field e:J

.field f:Landroid/animation/TimeInterpolator;

.field g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field r:Lcom/transitionseverywhere/j;

.field s:[I

.field t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transitionseverywhere/l;",
            ">;"
        }
    .end annotation
.end field

.field u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transitionseverywhere/l;",
            ">;"
        }
    .end annotation
.end field

.field v:Landroid/view/ViewGroup;

.field w:Z

.field x:I

.field y:Z

.field z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transitionseverywhere/g$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    .line 158
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/transitionseverywhere/g;->a:[I

    .line 189
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/transitionseverywhere/g;->F:Ljava/lang/ThreadLocal;

    return-void

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transitionseverywhere/g;->b:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 167
    iput-wide v0, p0, Lcom/transitionseverywhere/g;->d:J

    .line 168
    iput-wide v0, p0, Lcom/transitionseverywhere/g;->e:J

    const/4 v0, 0x0

    .line 169
    iput-object v0, p0, Lcom/transitionseverywhere/g;->f:Landroid/animation/TimeInterpolator;

    .line 170
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transitionseverywhere/g;->g:Ljava/util/ArrayList;

    .line 171
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transitionseverywhere/g;->h:Ljava/util/ArrayList;

    .line 172
    iput-object v0, p0, Lcom/transitionseverywhere/g;->i:Ljava/util/ArrayList;

    .line 173
    iput-object v0, p0, Lcom/transitionseverywhere/g;->j:Ljava/util/ArrayList;

    .line 174
    iput-object v0, p0, Lcom/transitionseverywhere/g;->k:Ljava/util/ArrayList;

    .line 175
    iput-object v0, p0, Lcom/transitionseverywhere/g;->l:Ljava/util/ArrayList;

    .line 176
    iput-object v0, p0, Lcom/transitionseverywhere/g;->m:Ljava/util/ArrayList;

    .line 177
    iput-object v0, p0, Lcom/transitionseverywhere/g;->n:Ljava/util/ArrayList;

    .line 178
    iput-object v0, p0, Lcom/transitionseverywhere/g;->o:Ljava/util/ArrayList;

    .line 179
    iput-object v0, p0, Lcom/transitionseverywhere/g;->p:Ljava/util/ArrayList;

    .line 180
    iput-object v0, p0, Lcom/transitionseverywhere/g;->q:Ljava/util/ArrayList;

    .line 181
    new-instance v1, Lcom/transitionseverywhere/m;

    invoke-direct {v1}, Lcom/transitionseverywhere/m;-><init>()V

    iput-object v1, p0, Lcom/transitionseverywhere/g;->c:Lcom/transitionseverywhere/m;

    .line 182
    new-instance v1, Lcom/transitionseverywhere/m;

    invoke-direct {v1}, Lcom/transitionseverywhere/m;-><init>()V

    iput-object v1, p0, Lcom/transitionseverywhere/g;->E:Lcom/transitionseverywhere/m;

    .line 183
    iput-object v0, p0, Lcom/transitionseverywhere/g;->r:Lcom/transitionseverywhere/j;

    .line 184
    sget-object v1, Lcom/transitionseverywhere/g;->a:[I

    iput-object v1, p0, Lcom/transitionseverywhere/g;->s:[I

    .line 193
    iput-object v0, p0, Lcom/transitionseverywhere/g;->v:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 201
    iput-boolean v1, p0, Lcom/transitionseverywhere/g;->w:Z

    .line 205
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/transitionseverywhere/g;->G:Ljava/util/ArrayList;

    .line 209
    iput v1, p0, Lcom/transitionseverywhere/g;->x:I

    .line 212
    iput-boolean v1, p0, Lcom/transitionseverywhere/g;->y:Z

    .line 216
    iput-boolean v1, p0, Lcom/transitionseverywhere/g;->H:Z

    .line 219
    iput-object v0, p0, Lcom/transitionseverywhere/g;->z:Ljava/util/ArrayList;

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transitionseverywhere/g;->A:Ljava/util/ArrayList;

    .line 238
    sget-object v0, Lcom/transitionseverywhere/e;->a:Lcom/transitionseverywhere/e;

    iput-object v0, p0, Lcom/transitionseverywhere/g;->D:Lcom/transitionseverywhere/e;

    return-void
.end method

.method static synthetic a(Lcom/transitionseverywhere/g;)Ljava/util/ArrayList;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/transitionseverywhere/g;->G:Ljava/util/ArrayList;

    return-object p0
.end method

.method private a(Landroid/animation/Animator;Landroid/support/v4/util/ArrayMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/animation/Animator;",
            "Lcom/transitionseverywhere/g$a;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 886
    new-instance v0, Lcom/transitionseverywhere/g$1;

    invoke-direct {v0, p0, p2}, Lcom/transitionseverywhere/g$1;-><init>(Lcom/transitionseverywhere/g;Landroid/support/v4/util/ArrayMap;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 898
    invoke-virtual {p0, p1}, Lcom/transitionseverywhere/g;->a(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Lcom/transitionseverywhere/l;",
            ">;",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Lcom/transitionseverywhere/l;",
            ">;)V"
        }
    .end annotation

    .line 530
    invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 531
    invoke-virtual {p1, v0}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 532
    invoke-virtual {p0, v1}, Lcom/transitionseverywhere/g;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 533
    invoke-virtual {p2, v1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transitionseverywhere/l;

    if-eqz v1, :cond_0

    .line 534
    iget-object v2, v1, Lcom/transitionseverywhere/l;->a:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/transitionseverywhere/l;->a:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/transitionseverywhere/g;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 535
    invoke-virtual {p1, v0}, Landroid/support/v4/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transitionseverywhere/l;

    .line 536
    iget-object v3, p0, Lcom/transitionseverywhere/g;->t:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    iget-object v2, p0, Lcom/transitionseverywhere/g;->u:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Lcom/transitionseverywhere/l;",
            ">;",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Lcom/transitionseverywhere/l;",
            ">;",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 605
    invoke-virtual {p3}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 607
    invoke-virtual {p3, v1}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 608
    invoke-virtual {p0, v2}, Lcom/transitionseverywhere/g;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 609
    invoke-virtual {p3, v1}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p4, v3}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 610
    invoke-virtual {p0, v3}, Lcom/transitionseverywhere/g;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 611
    invoke-virtual {p1, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transitionseverywhere/l;

    .line 612
    invoke-virtual {p2, v3}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transitionseverywhere/l;

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 614
    iget-object v6, p0, Lcom/transitionseverywhere/g;->t:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    iget-object v4, p0, Lcom/transitionseverywhere/g;->u:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    invoke-virtual {p1, v2}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    invoke-virtual {p2, v3}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/LongSparseArray;Landroid/support/v4/util/LongSparseArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Lcom/transitionseverywhere/l;",
            ">;",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Lcom/transitionseverywhere/l;",
            ">;",
            "Landroid/support/v4/util/LongSparseArray<",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/util/LongSparseArray<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 551
    invoke-virtual {p3}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 553
    invoke-virtual {p3, v1}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 554
    invoke-virtual {p0, v2}, Lcom/transitionseverywhere/g;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 555
    invoke-virtual {p3, v1}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-virtual {p4, v3, v4}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 556
    invoke-virtual {p0, v3}, Lcom/transitionseverywhere/g;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 557
    invoke-virtual {p1, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transitionseverywhere/l;

    .line 558
    invoke-virtual {p2, v3}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transitionseverywhere/l;

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 560
    iget-object v6, p0, Lcom/transitionseverywhere/g;->t:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    iget-object v4, p0, Lcom/transitionseverywhere/g;->u:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    invoke-virtual {p1, v2}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    invoke-virtual {p2, v3}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Lcom/transitionseverywhere/l;",
            ">;",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Lcom/transitionseverywhere/l;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 578
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 580
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 581
    invoke-virtual {p0, v2}, Lcom/transitionseverywhere/g;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 582
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 583
    invoke-virtual {p0, v3}, Lcom/transitionseverywhere/g;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 584
    invoke-virtual {p1, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transitionseverywhere/l;

    .line 585
    invoke-virtual {p2, v3}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transitionseverywhere/l;

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 587
    iget-object v6, p0, Lcom/transitionseverywhere/g;->t:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    iget-object v4, p0, Lcom/transitionseverywhere/g;->u:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    invoke-virtual {p1, v2}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    invoke-virtual {p2, v3}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static a(Lcom/transitionseverywhere/m;Landroid/view/View;Lcom/transitionseverywhere/l;)V
    .locals 3

    .line 1476
    iget-object v0, p0, Lcom/transitionseverywhere/m;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1477
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const/4 v0, 0x0

    if-ltz p2, :cond_1

    .line 1479
    iget-object v1, p0, Lcom/transitionseverywhere/m;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 1481
    iget-object v1, p0, Lcom/transitionseverywhere/m;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1483
    :cond_0
    iget-object v1, p0, Lcom/transitionseverywhere/m;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1486
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/transitionseverywhere/a/l;->b(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 1488
    iget-object v1, p0, Lcom/transitionseverywhere/m;->d:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1490
    iget-object v1, p0, Lcom/transitionseverywhere/m;->d:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1492
    :cond_2
    iget-object v1, p0, Lcom/transitionseverywhere/m;->d:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p2, p1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1495
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Landroid/widget/ListView;

    if-eqz p2, :cond_5

    .line 1496
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    .line 1497
    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1498
    invoke-virtual {p2, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 1499
    invoke-virtual {p2, v1}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v1

    .line 1500
    iget-object p2, p0, Lcom/transitionseverywhere/m;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {p2, v1, v2}, Landroid/support/v4/util/LongSparseArray;->indexOfKey(J)I

    move-result p2

    if-ltz p2, :cond_4

    .line 1502
    iget-object p1, p0, Lcom/transitionseverywhere/m;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {p1, v1, v2}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_5

    const/4 p2, 0x0

    .line 1504
    invoke-static {p1, p2}, Lcom/transitionseverywhere/a/l;->b(Landroid/view/View;Z)V

    .line 1505
    iget-object p0, p0, Lcom/transitionseverywhere/m;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {p0, v1, v2, v0}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_2

    :cond_4
    const/4 p2, 0x1

    .line 1508
    invoke-static {p1, p2}, Lcom/transitionseverywhere/a/l;->b(Landroid/view/View;Z)V

    .line 1509
    iget-object p0, p0, Lcom/transitionseverywhere/m;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {p0, v1, v2, p1}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private a(Lcom/transitionseverywhere/m;Lcom/transitionseverywhere/m;)V
    .locals 5

    .line 645
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    iget-object v1, p1, Lcom/transitionseverywhere/m;->a:Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/support/v4/util/ArrayMap;-><init>(Landroid/support/v4/util/SimpleArrayMap;)V

    .line 647
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    iget-object v2, p2, Lcom/transitionseverywhere/m;->a:Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1, v2}, Landroid/support/v4/util/ArrayMap;-><init>(Landroid/support/v4/util/SimpleArrayMap;)V

    const/4 v2, 0x0

    .line 650
    :goto_0
    iget-object v3, p0, Lcom/transitionseverywhere/g;->s:[I

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 651
    iget-object v3, p0, Lcom/transitionseverywhere/g;->s:[I

    aget v3, v3, v2

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 664
    :pswitch_0
    iget-object v3, p1, Lcom/transitionseverywhere/m;->c:Landroid/support/v4/util/LongSparseArray;

    iget-object v4, p2, Lcom/transitionseverywhere/m;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/transitionseverywhere/g;->a(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/LongSparseArray;Landroid/support/v4/util/LongSparseArray;)V

    goto :goto_1

    .line 660
    :pswitch_1
    iget-object v3, p1, Lcom/transitionseverywhere/m;->b:Landroid/util/SparseArray;

    iget-object v4, p2, Lcom/transitionseverywhere/m;->b:Landroid/util/SparseArray;

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/transitionseverywhere/g;->a(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    goto :goto_1

    .line 656
    :pswitch_2
    iget-object v3, p1, Lcom/transitionseverywhere/m;->d:Landroid/support/v4/util/ArrayMap;

    iget-object v4, p2, Lcom/transitionseverywhere/m;->d:Landroid/support/v4/util/ArrayMap;

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/transitionseverywhere/g;->a(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;)V

    goto :goto_1

    .line 653
    :pswitch_3
    invoke-direct {p0, v0, v1}, Lcom/transitionseverywhere/g;->a(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 669
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/transitionseverywhere/g;->b(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Lcom/transitionseverywhere/l;Lcom/transitionseverywhere/l;Ljava/lang/String;)Z
    .locals 3

    .line 1817
    iget-object v0, p0, Lcom/transitionseverywhere/l;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p1, Lcom/transitionseverywhere/l;->b:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 1821
    :cond_0
    iget-object p0, p0, Lcom/transitionseverywhere/l;->b:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1822
    iget-object p1, p1, Lcom/transitionseverywhere/l;->b:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p0, :cond_1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p0, :cond_3

    if-nez p1, :cond_2

    goto :goto_0

    .line 1832
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 v2, p0, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method private b(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Lcom/transitionseverywhere/l;",
            ">;",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Lcom/transitionseverywhere/l;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 631
    :goto_0
    invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    .line 632
    iget-object v2, p0, Lcom/transitionseverywhere/g;->t:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    iget-object v2, p0, Lcom/transitionseverywhere/g;->u:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 637
    :cond_0
    :goto_1
    invoke-virtual {p2}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 638
    iget-object p1, p0, Lcom/transitionseverywhere/g;->u:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    iget-object p1, p0, Lcom/transitionseverywhere/g;->t:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private c(Landroid/view/View;Z)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1550
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1551
    iget-object v1, p0, Lcom/transitionseverywhere/g;->k:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transitionseverywhere/g;->k:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 1554
    :cond_1
    iget-object v1, p0, Lcom/transitionseverywhere/g;->l:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transitionseverywhere/g;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 1557
    :cond_2
    iget-object v1, p0, Lcom/transitionseverywhere/g;->m:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 1558
    iget-object v1, p0, Lcom/transitionseverywhere/g;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    .line 1560
    iget-object v4, p0, Lcom/transitionseverywhere/g;->m:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-void

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1565
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_7

    .line 1566
    new-instance v1, Lcom/transitionseverywhere/l;

    invoke-direct {v1}, Lcom/transitionseverywhere/l;-><init>()V

    .line 1567
    iput-object p1, v1, Lcom/transitionseverywhere/l;->a:Landroid/view/View;

    if-eqz p2, :cond_5

    .line 1569
    invoke-virtual {p0, v1}, Lcom/transitionseverywhere/g;->a(Lcom/transitionseverywhere/l;)V

    goto :goto_1

    .line 1571
    :cond_5
    invoke-virtual {p0, v1}, Lcom/transitionseverywhere/g;->b(Lcom/transitionseverywhere/l;)V

    .line 1573
    :goto_1
    iget-object v3, v1, Lcom/transitionseverywhere/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1574
    invoke-virtual {p0, v1}, Lcom/transitionseverywhere/g;->c(Lcom/transitionseverywhere/l;)V

    if-eqz p2, :cond_6

    .line 1576
    iget-object v3, p0, Lcom/transitionseverywhere/g;->c:Lcom/transitionseverywhere/m;

    invoke-static {v3, p1, v1}, Lcom/transitionseverywhere/g;->a(Lcom/transitionseverywhere/m;Landroid/view/View;Lcom/transitionseverywhere/l;)V

    goto :goto_2

    .line 1578
    :cond_6
    iget-object v3, p0, Lcom/transitionseverywhere/g;->E:Lcom/transitionseverywhere/m;

    invoke-static {v3, p1, v1}, Lcom/transitionseverywhere/g;->a(Lcom/transitionseverywhere/m;Landroid/view/View;Lcom/transitionseverywhere/l;)V

    .line 1581
    :cond_7
    :goto_2
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_c

    .line 1583
    iget-object v1, p0, Lcom/transitionseverywhere/g;->o:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/transitionseverywhere/g;->o:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 1586
    :cond_8
    iget-object v0, p0, Lcom/transitionseverywhere/g;->p:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/transitionseverywhere/g;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 1589
    :cond_9
    iget-object v0, p0, Lcom/transitionseverywhere/g;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 1590
    iget-object v0, p0, Lcom/transitionseverywhere/g;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_b

    .line 1592
    iget-object v3, p0, Lcom/transitionseverywhere/g;->q:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    return-void

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1597
    :cond_b
    check-cast p1, Landroid/view/ViewGroup;

    .line 1598
    :goto_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_c

    .line 1599
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/transitionseverywhere/g;->c(Landroid/view/View;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_c
    return-void
.end method

.method private static k()Landroid/support/v4/util/ArrayMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/animation/Animator;",
            "Lcom/transitionseverywhere/g$a;",
            ">;"
        }
    .end annotation

    .line 848
    sget-object v0, Lcom/transitionseverywhere/g;->F:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/ArrayMap;

    if-nez v0, :cond_0

    .line 850
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 851
    sget-object v1, Lcom/transitionseverywhere/g;->F:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Lcom/transitionseverywhere/l;Lcom/transitionseverywhere/l;)Landroid/animation/Animator;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(J)Lcom/transitionseverywhere/g;
    .locals 0

    .line 330
    iput-wide p1, p0, Lcom/transitionseverywhere/g;->e:J

    return-object p0
.end method

.method public a(Landroid/animation/TimeInterpolator;)Lcom/transitionseverywhere/g;
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/transitionseverywhere/g;->f:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public a(Lcom/transitionseverywhere/g$b;)Lcom/transitionseverywhere/g;
    .locals 1

    .line 1966
    iget-object v0, p0, Lcom/transitionseverywhere/g;->z:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1967
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transitionseverywhere/g;->z:Ljava/util/ArrayList;

    .line 1969
    :cond_0
    iget-object v0, p0, Lcom/transitionseverywhere/g;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Landroid/view/View;Z)Lcom/transitionseverywhere/l;
    .locals 1

    .line 1611
    iget-object v0, p0, Lcom/transitionseverywhere/g;->r:Lcom/transitionseverywhere/j;

    if-eqz v0, :cond_0

    .line 1612
    iget-object v0, p0, Lcom/transitionseverywhere/g;->r:Lcom/transitionseverywhere/j;

    invoke-virtual {v0, p1, p2}, Lcom/transitionseverywhere/j;->a(Landroid/view/View;Z)Lcom/transitionseverywhere/l;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 1614
    iget-object p2, p0, Lcom/transitionseverywhere/g;->c:Lcom/transitionseverywhere/m;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/transitionseverywhere/g;->E:Lcom/transitionseverywhere/m;

    .line 1615
    :goto_0
    iget-object p2, p2, Lcom/transitionseverywhere/m;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transitionseverywhere/l;

    return-object p1
.end method

.method a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 2236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "@"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2237
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2238
    iget-wide v0, p0, Lcom/transitionseverywhere/g;->e:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "dur("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/transitionseverywhere/g;->e:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ") "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2241
    :cond_0
    iget-wide v0, p0, Lcom/transitionseverywhere/g;->d:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 2242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "dly("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transitionseverywhere/g;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ") "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2244
    :cond_1
    iget-object v0, p0, Lcom/transitionseverywhere/g;->f:Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_2

    .line 2245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "interp("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transitionseverywhere/g;->f:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2247
    :cond_2
    iget-object v0, p0, Lcom/transitionseverywhere/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/transitionseverywhere/g;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 2248
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "tgts("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2249
    iget-object v0, p0, Lcom/transitionseverywhere/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_6

    move-object v0, p1

    const/4 p1, 0x0

    .line 2250
    :goto_0
    iget-object v2, p0, Lcom/transitionseverywhere/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_5

    if-lez p1, :cond_4

    .line 2252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2254
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transitionseverywhere/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    move-object p1, v0

    .line 2257
    :cond_6
    iget-object v0, p0, Lcom/transitionseverywhere/g;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 2258
    :goto_1
    iget-object v0, p0, Lcom/transitionseverywhere/g;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    if-lez v1, :cond_7

    .line 2260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2262
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transitionseverywhere/g;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2265
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_9
    return-object p1
.end method

.method protected a(Landroid/animation/Animator;)V
    .locals 6

    if-nez p1, :cond_0

    .line 1854
    invoke-virtual {p0}, Lcom/transitionseverywhere/g;->g()V

    goto :goto_0

    .line 1856
    :cond_0
    invoke-virtual {p0}, Lcom/transitionseverywhere/g;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 1857
    invoke-virtual {p0}, Lcom/transitionseverywhere/g;->b()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1859
    :cond_1
    invoke-virtual {p0}, Lcom/transitionseverywhere/g;->c()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 1860
    invoke-virtual {p0}, Lcom/transitionseverywhere/g;->c()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v2

    add-long v4, v0, v2

    invoke-virtual {p1, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1862
    :cond_2
    invoke-virtual {p0}, Lcom/transitionseverywhere/g;->d()Landroid/animation/TimeInterpolator;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1863
    invoke-virtual {p0}, Lcom/transitionseverywhere/g;->d()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1865
    :cond_3
    new-instance v0, Lcom/transitionseverywhere/g$2;

    invoke-direct {v0, p0}, Lcom/transitionseverywhere/g$2;-><init>(Lcom/transitionseverywhere/g;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1872
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :goto_0
    return-void
.end method

.method a(Landroid/view/ViewGroup;)V
    .locals 11

    .line 1732
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transitionseverywhere/g;->t:Ljava/util/ArrayList;

    .line 1733
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transitionseverywhere/g;->u:Ljava/util/ArrayList;

    .line 1734
    iget-object v0, p0, Lcom/transitionseverywhere/g;->c:Lcom/transitionseverywhere/m;

    iget-object v1, p0, Lcom/transitionseverywhere/g;->E:Lcom/transitionseverywhere/m;

    invoke-direct {p0, v0, v1}, Lcom/transitionseverywhere/g;->a(Lcom/transitionseverywhere/m;Lcom/transitionseverywhere/m;)V

    .line 1736
    invoke-static {}, Lcom/transitionseverywhere/g;->k()Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    .line 1737
    sget-object v1, Lcom/transitionseverywhere/g;->F:Ljava/lang/ThreadLocal;

    monitor-enter v1

    .line 1738
    :try_start_0
    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v2

    .line 1739
    invoke-static {p1}, Lcom/transitionseverywhere/a/l;->c(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    :goto_0
    if-ltz v2, :cond_6

    .line 1741
    invoke-virtual {v0, v2}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    if-eqz v5, :cond_5

    .line 1743
    invoke-virtual {v0, v5}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transitionseverywhere/g$a;

    if-eqz v6, :cond_5

    .line 1744
    iget-object v7, v6, Lcom/transitionseverywhere/g$a;->a:Landroid/view/View;

    if-eqz v7, :cond_5

    iget-object v7, v6, Lcom/transitionseverywhere/g$a;->d:Ljava/lang/Object;

    if-ne v7, v3, :cond_5

    .line 1745
    iget-object v7, v6, Lcom/transitionseverywhere/g$a;->c:Lcom/transitionseverywhere/l;

    .line 1746
    iget-object v8, v6, Lcom/transitionseverywhere/g$a;->a:Landroid/view/View;

    .line 1747
    invoke-virtual {p0, v8, v4}, Lcom/transitionseverywhere/g;->a(Landroid/view/View;Z)Lcom/transitionseverywhere/l;

    move-result-object v9

    .line 1748
    invoke-virtual {p0, v8, v4}, Lcom/transitionseverywhere/g;->b(Landroid/view/View;Z)Lcom/transitionseverywhere/l;

    move-result-object v10

    if-nez v9, :cond_0

    if-nez v10, :cond_0

    .line 1750
    iget-object v10, p0, Lcom/transitionseverywhere/g;->E:Lcom/transitionseverywhere/m;

    iget-object v10, v10, Lcom/transitionseverywhere/m;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v10, v8}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Lcom/transitionseverywhere/l;

    :cond_0
    if-nez v9, :cond_1

    if-eqz v10, :cond_2

    .line 1752
    :cond_1
    iget-object v6, v6, Lcom/transitionseverywhere/g$a;->e:Lcom/transitionseverywhere/g;

    .line 1753
    invoke-virtual {v6, v7, v10}, Lcom/transitionseverywhere/g;->a(Lcom/transitionseverywhere/l;Lcom/transitionseverywhere/l;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_5

    .line 1755
    invoke-virtual {v5}, Landroid/animation/Animator;->isRunning()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v5}, Lcom/transitionseverywhere/a/a;->c(Landroid/animation/Animator;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    .line 1764
    :cond_3
    invoke-virtual {v0, v5}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1759
    :cond_4
    :goto_2
    invoke-virtual {v5}, Landroid/animation/Animator;->cancel()V

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1770
    :cond_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1772
    iget-object v4, p0, Lcom/transitionseverywhere/g;->c:Lcom/transitionseverywhere/m;

    iget-object v5, p0, Lcom/transitionseverywhere/g;->E:Lcom/transitionseverywhere/m;

    iget-object v6, p0, Lcom/transitionseverywhere/g;->t:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/transitionseverywhere/g;->u:Ljava/util/ArrayList;

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/transitionseverywhere/g;->a(Landroid/view/ViewGroup;Lcom/transitionseverywhere/m;Lcom/transitionseverywhere/m;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1773
    invoke-virtual {p0}, Lcom/transitionseverywhere/g;->e()V

    return-void

    :catchall_0
    move-exception p1

    .line 1770
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected a(Landroid/view/ViewGroup;Lcom/transitionseverywhere/m;Lcom/transitionseverywhere/m;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/transitionseverywhere/m;",
            "Lcom/transitionseverywhere/m;",
            "Ljava/util/ArrayList<",
            "Lcom/transitionseverywhere/l;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/transitionseverywhere/l;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 689
    invoke-static {}, Lcom/transitionseverywhere/g;->k()Landroid/support/v4/util/ArrayMap;

    move-result-object v9

    .line 691
    iget-object v1, v7, Lcom/transitionseverywhere/g;->A:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 692
    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    .line 693
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v11

    const-wide v1, 0x7fffffffffffffffL

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v11, :cond_10

    move-object/from16 v14, p4

    .line 695
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transitionseverywhere/l;

    move-object/from16 v15, p5

    .line 696
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transitionseverywhere/l;

    if-eqz v3, :cond_0

    .line 697
    iget-object v6, v3, Lcom/transitionseverywhere/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v3, 0x0

    :cond_0
    if-eqz v4, :cond_1

    .line 700
    iget-object v6, v4, Lcom/transitionseverywhere/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v4, 0x0

    :cond_1
    if-nez v3, :cond_3

    if-nez v4, :cond_3

    :cond_2
    move/from16 v18, v11

    move/from16 v19, v13

    move-wide v12, v1

    goto/16 :goto_a

    :cond_3
    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    .line 707
    invoke-virtual {v7, v3, v4}, Lcom/transitionseverywhere/g;->a(Lcom/transitionseverywhere/l;Lcom/transitionseverywhere/l;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v6, 0x1

    :goto_2
    if-eqz v6, :cond_2

    .line 727
    invoke-virtual {v7, v8, v3, v4}, Lcom/transitionseverywhere/g;->a(Landroid/view/ViewGroup;Lcom/transitionseverywhere/l;Lcom/transitionseverywhere/l;)Landroid/animation/Animator;

    move-result-object v6

    if-eqz v6, :cond_2

    if-eqz v4, :cond_d

    .line 733
    iget-object v5, v4, Lcom/transitionseverywhere/l;->a:Landroid/view/View;

    .line 734
    invoke-virtual/range {p0 .. p0}, Lcom/transitionseverywhere/g;->a()[Ljava/lang/String;

    move-result-object v12

    if-eqz v5, :cond_c

    if-eqz v12, :cond_c

    move-object/from16 v17, v6

    .line 735
    array-length v6, v12

    if-lez v6, :cond_b

    .line 736
    new-instance v6, Lcom/transitionseverywhere/l;

    invoke-direct {v6}, Lcom/transitionseverywhere/l;-><init>()V

    .line 737
    iput-object v5, v6, Lcom/transitionseverywhere/l;->a:Landroid/view/View;

    move/from16 v18, v11

    move-object/from16 v11, p3

    .line 738
    iget-object v14, v11, Lcom/transitionseverywhere/m;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v14, v5}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/transitionseverywhere/l;

    if-eqz v14, :cond_6

    const/4 v11, 0x0

    .line 740
    :goto_3
    array-length v15, v12

    if-ge v11, v15, :cond_6

    .line 741
    iget-object v15, v6, Lcom/transitionseverywhere/l;->b:Ljava/util/Map;

    move/from16 v19, v13

    aget-object v13, v12, v11

    move-wide/from16 v20, v1

    iget-object v1, v14, Lcom/transitionseverywhere/l;->b:Ljava/util/Map;

    aget-object v2, v12, v11

    .line 742
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 741
    invoke-interface {v15, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v11, 0x1

    move/from16 v13, v19

    move-wide/from16 v1, v20

    goto :goto_3

    :cond_6
    move-wide/from16 v20, v1

    move/from16 v19, v13

    .line 745
    sget-object v1, Lcom/transitionseverywhere/g;->F:Ljava/lang/ThreadLocal;

    monitor-enter v1

    .line 746
    :try_start_0
    invoke-virtual {v9}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v2

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v2, :cond_a

    .line 748
    invoke-virtual {v9, v11}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/animation/Animator;

    .line 749
    invoke-virtual {v9, v12}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/transitionseverywhere/g$a;

    .line 750
    iget-object v13, v12, Lcom/transitionseverywhere/g$a;->c:Lcom/transitionseverywhere/l;

    if-eqz v13, :cond_9

    iget-object v13, v12, Lcom/transitionseverywhere/g$a;->a:Landroid/view/View;

    if-ne v13, v5, :cond_9

    iget-object v13, v12, Lcom/transitionseverywhere/g$a;->b:Ljava/lang/String;

    if-nez v13, :cond_7

    .line 751
    invoke-virtual/range {p0 .. p0}, Lcom/transitionseverywhere/g;->j()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_8

    :cond_7
    iget-object v13, v12, Lcom/transitionseverywhere/g$a;->b:Ljava/lang/String;

    if-eqz v13, :cond_9

    iget-object v13, v12, Lcom/transitionseverywhere/g$a;->b:Ljava/lang/String;

    .line 752
    invoke-virtual/range {p0 .. p0}, Lcom/transitionseverywhere/g;->j()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 753
    :cond_8
    iget-object v12, v12, Lcom/transitionseverywhere/g$a;->c:Lcom/transitionseverywhere/l;

    invoke-virtual {v12, v6}, Lcom/transitionseverywhere/l;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    const/16 v16, 0x0

    goto :goto_5

    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_a
    move-object/from16 v16, v17

    .line 760
    :goto_5
    monitor-exit v1

    move-object/from16 v22, v16

    move-object/from16 v16, v6

    move-object/from16 v6, v22

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v2, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_b
    move-wide/from16 v20, v1

    goto :goto_6

    :cond_c
    move-wide/from16 v20, v1

    move-object/from16 v17, v6

    :goto_6
    move/from16 v18, v11

    move/from16 v19, v13

    move-object/from16 v6, v17

    const/16 v16, 0x0

    :goto_7
    move-object v2, v5

    move-object v11, v6

    move-object/from16 v6, v16

    goto :goto_8

    :cond_d
    move-wide/from16 v20, v1

    move-object/from16 v17, v6

    move/from16 v18, v11

    move/from16 v19, v13

    .line 763
    iget-object v1, v3, Lcom/transitionseverywhere/l;->a:Landroid/view/View;

    move-object v2, v1

    move-object/from16 v11, v17

    const/4 v6, 0x0

    :goto_8
    if-eqz v11, :cond_f

    .line 766
    iget-object v1, v7, Lcom/transitionseverywhere/g;->B:Lcom/transitionseverywhere/i;

    if-eqz v1, :cond_e

    .line 767
    iget-object v1, v7, Lcom/transitionseverywhere/g;->B:Lcom/transitionseverywhere/i;

    .line 768
    invoke-virtual {v1, v8, v7, v3, v4}, Lcom/transitionseverywhere/i;->a(Landroid/view/ViewGroup;Lcom/transitionseverywhere/g;Lcom/transitionseverywhere/l;Lcom/transitionseverywhere/l;)J

    move-result-wide v3

    .line 769
    iget-object v1, v7, Lcom/transitionseverywhere/g;->A:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v10, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-wide/from16 v12, v20

    .line 770
    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    move-wide v12, v3

    goto :goto_9

    :cond_e
    move-wide/from16 v12, v20

    .line 772
    :goto_9
    new-instance v14, Lcom/transitionseverywhere/g$a;

    invoke-virtual/range {p0 .. p0}, Lcom/transitionseverywhere/g;->j()Ljava/lang/String;

    move-result-object v3

    .line 773
    invoke-static/range {p1 .. p1}, Lcom/transitionseverywhere/a/l;->c(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v5

    move-object v1, v14

    move-object v4, v7

    invoke-direct/range {v1 .. v6}, Lcom/transitionseverywhere/g$a;-><init>(Landroid/view/View;Ljava/lang/String;Lcom/transitionseverywhere/g;Ljava/lang/Object;Lcom/transitionseverywhere/l;)V

    .line 774
    invoke-virtual {v9, v11, v14}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    iget-object v1, v7, Lcom/transitionseverywhere/g;->A:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_f
    move-wide/from16 v12, v20

    :goto_a
    move-wide v1, v12

    add-int/lit8 v13, v19, 0x1

    move/from16 v11, v18

    goto/16 :goto_0

    :cond_10
    move-wide v12, v1

    .line 780
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x0

    .line 781
    :goto_b
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_11

    .line 782
    invoke-virtual {v10, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 783
    iget-object v3, v7, Lcom/transitionseverywhere/g;->A:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 784
    invoke-virtual {v10, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v5, v3, v12

    invoke-virtual {v2}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v3

    add-long v8, v5, v3

    .line 785
    invoke-virtual {v2, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_11
    return-void
.end method

.method a(Landroid/view/ViewGroup;Z)V
    .locals 5

    .line 1413
    invoke-virtual {p0, p2}, Lcom/transitionseverywhere/g;->a(Z)V

    .line 1414
    iget-object v0, p0, Lcom/transitionseverywhere/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/transitionseverywhere/g;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/transitionseverywhere/g;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transitionseverywhere/g;->i:Ljava/util/ArrayList;

    .line 1415
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/transitionseverywhere/g;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transitionseverywhere/g;->j:Ljava/util/ArrayList;

    .line 1416
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1455
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/transitionseverywhere/g;->c(Landroid/view/View;Z)V

    goto/16 :goto_7

    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 1417
    :goto_1
    iget-object v2, p0, Lcom/transitionseverywhere/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 1418
    iget-object v2, p0, Lcom/transitionseverywhere/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1419
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1421
    new-instance v3, Lcom/transitionseverywhere/l;

    invoke-direct {v3}, Lcom/transitionseverywhere/l;-><init>()V

    .line 1422
    iput-object v2, v3, Lcom/transitionseverywhere/l;->a:Landroid/view/View;

    if-eqz p2, :cond_4

    .line 1424
    invoke-virtual {p0, v3}, Lcom/transitionseverywhere/g;->a(Lcom/transitionseverywhere/l;)V

    goto :goto_2

    .line 1426
    :cond_4
    invoke-virtual {p0, v3}, Lcom/transitionseverywhere/g;->b(Lcom/transitionseverywhere/l;)V

    .line 1428
    :goto_2
    iget-object v4, v3, Lcom/transitionseverywhere/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1429
    invoke-virtual {p0, v3}, Lcom/transitionseverywhere/g;->c(Lcom/transitionseverywhere/l;)V

    if-eqz p2, :cond_5

    .line 1431
    iget-object v4, p0, Lcom/transitionseverywhere/g;->c:Lcom/transitionseverywhere/m;

    invoke-static {v4, v2, v3}, Lcom/transitionseverywhere/g;->a(Lcom/transitionseverywhere/m;Landroid/view/View;Lcom/transitionseverywhere/l;)V

    goto :goto_3

    .line 1433
    :cond_5
    iget-object v4, p0, Lcom/transitionseverywhere/g;->E:Lcom/transitionseverywhere/m;

    invoke-static {v4, v2, v3}, Lcom/transitionseverywhere/g;->a(Lcom/transitionseverywhere/m;Landroid/view/View;Lcom/transitionseverywhere/l;)V

    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    const/4 p1, 0x0

    .line 1437
    :goto_4
    iget-object v0, p0, Lcom/transitionseverywhere/g;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_a

    .line 1438
    iget-object v0, p0, Lcom/transitionseverywhere/g;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1439
    new-instance v2, Lcom/transitionseverywhere/l;

    invoke-direct {v2}, Lcom/transitionseverywhere/l;-><init>()V

    .line 1440
    iput-object v0, v2, Lcom/transitionseverywhere/l;->a:Landroid/view/View;

    if-eqz p2, :cond_8

    .line 1442
    invoke-virtual {p0, v2}, Lcom/transitionseverywhere/g;->a(Lcom/transitionseverywhere/l;)V

    goto :goto_5

    .line 1444
    :cond_8
    invoke-virtual {p0, v2}, Lcom/transitionseverywhere/g;->b(Lcom/transitionseverywhere/l;)V

    .line 1446
    :goto_5
    iget-object v3, v2, Lcom/transitionseverywhere/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1447
    invoke-virtual {p0, v2}, Lcom/transitionseverywhere/g;->c(Lcom/transitionseverywhere/l;)V

    if-eqz p2, :cond_9

    .line 1449
    iget-object v3, p0, Lcom/transitionseverywhere/g;->c:Lcom/transitionseverywhere/m;

    invoke-static {v3, v0, v2}, Lcom/transitionseverywhere/g;->a(Lcom/transitionseverywhere/m;Landroid/view/View;Lcom/transitionseverywhere/l;)V

    goto :goto_6

    .line 1451
    :cond_9
    iget-object v3, p0, Lcom/transitionseverywhere/g;->E:Lcom/transitionseverywhere/m;

    invoke-static {v3, v0, v2}, Lcom/transitionseverywhere/g;->a(Lcom/transitionseverywhere/m;Landroid/view/View;Lcom/transitionseverywhere/l;)V

    :goto_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_a
    :goto_7
    if-nez p2, :cond_d

    .line 1457
    iget-object p1, p0, Lcom/transitionseverywhere/g;->C:Landroid/support/v4/util/ArrayMap;

    if-eqz p1, :cond_d

    .line 1458
    iget-object p1, p0, Lcom/transitionseverywhere/g;->C:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result p1

    .line 1459
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_8
    if-ge v0, p1, :cond_b

    .line 1461
    iget-object v2, p0, Lcom/transitionseverywhere/g;->C:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1462
    iget-object v3, p0, Lcom/transitionseverywhere/g;->c:Lcom/transitionseverywhere/m;

    iget-object v3, v3, Lcom/transitionseverywhere/m;->d:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_b
    :goto_9
    if-ge v1, p1, :cond_d

    .line 1465
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_c

    .line 1467
    iget-object v2, p0, Lcom/transitionseverywhere/g;->C:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1468
    iget-object v3, p0, Lcom/transitionseverywhere/g;->c:Lcom/transitionseverywhere/m;

    iget-object v3, v3, Lcom/transitionseverywhere/m;->d:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v2, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_d
    return-void
.end method

.method public abstract a(Lcom/transitionseverywhere/l;)V
.end method

.method a(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1522
    iget-object p1, p0, Lcom/transitionseverywhere/g;->c:Lcom/transitionseverywhere/m;

    iget-object p1, p1, Lcom/transitionseverywhere/m;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 1523
    iget-object p1, p0, Lcom/transitionseverywhere/g;->c:Lcom/transitionseverywhere/m;

    iget-object p1, p1, Lcom/transitionseverywhere/m;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 1524
    iget-object p1, p0, Lcom/transitionseverywhere/g;->c:Lcom/transitionseverywhere/m;

    iget-object p1, p1, Lcom/transitionseverywhere/m;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {p1}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 1525
    iget-object p1, p0, Lcom/transitionseverywhere/g;->c:Lcom/transitionseverywhere/m;

    iget-object p1, p1, Lcom/transitionseverywhere/m;->d:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 1526
    iput-object v0, p0, Lcom/transitionseverywhere/g;->t:Ljava/util/ArrayList;

    goto :goto_0

    .line 1528
    :cond_0
    iget-object p1, p0, Lcom/transitionseverywhere/g;->E:Lcom/transitionseverywhere/m;

    iget-object p1, p1, Lcom/transitionseverywhere/m;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 1529
    iget-object p1, p0, Lcom/transitionseverywhere/g;->E:Lcom/transitionseverywhere/m;

    iget-object p1, p1, Lcom/transitionseverywhere/m;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 1530
    iget-object p1, p0, Lcom/transitionseverywhere/g;->E:Lcom/transitionseverywhere/m;

    iget-object p1, p1, Lcom/transitionseverywhere/m;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {p1}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 1531
    iget-object p1, p0, Lcom/transitionseverywhere/g;->E:Lcom/transitionseverywhere/m;

    iget-object p1, p1, Lcom/transitionseverywhere/m;->d:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 1532
    iput-object v0, p0, Lcom/transitionseverywhere/g;->u:Ljava/util/ArrayList;

    :goto_0
    return-void
.end method

.method a(Landroid/view/View;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 804
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 805
    iget-object v2, p0, Lcom/transitionseverywhere/g;->k:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/transitionseverywhere/g;->k:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    .line 808
    :cond_1
    iget-object v2, p0, Lcom/transitionseverywhere/g;->l:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/transitionseverywhere/g;->l:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    .line 811
    :cond_2
    iget-object v2, p0, Lcom/transitionseverywhere/g;->m:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 812
    iget-object v2, p0, Lcom/transitionseverywhere/g;->m:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    .line 814
    iget-object v4, p0, Lcom/transitionseverywhere/g;->m:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 815
    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 820
    :cond_4
    invoke-static {p1}, Lcom/transitionseverywhere/a/l;->b(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    .line 821
    iget-object v3, p0, Lcom/transitionseverywhere/g;->n:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    .line 822
    iget-object v3, p0, Lcom/transitionseverywhere/g;->n:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    return v0

    .line 826
    :cond_5
    iget-object v3, p0, Lcom/transitionseverywhere/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/transitionseverywhere/g;->h:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/transitionseverywhere/g;->j:Ljava/util/ArrayList;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/transitionseverywhere/g;->j:Ljava/util/ArrayList;

    .line 827
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_6
    iget-object v3, p0, Lcom/transitionseverywhere/g;->i:Ljava/util/ArrayList;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/transitionseverywhere/g;->i:Ljava/util/ArrayList;

    .line 828
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    return v4

    .line 831
    :cond_8
    iget-object v3, p0, Lcom/transitionseverywhere/g;->g:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/transitionseverywhere/g;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_2

    .line 834
    :cond_9
    iget-object v1, p0, Lcom/transitionseverywhere/g;->i:Ljava/util/ArrayList;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/transitionseverywhere/g;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    return v4

    .line 837
    :cond_a
    iget-object v1, p0, Lcom/transitionseverywhere/g;->j:Ljava/util/ArrayList;

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    .line 838
    :goto_1
    iget-object v2, p0, Lcom/transitionseverywhere/g;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_c

    .line 839
    iget-object v2, p0, Lcom/transitionseverywhere/g;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    return v4

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_c
    return v0

    :cond_d
    :goto_2
    return v4
.end method

.method public a(Lcom/transitionseverywhere/l;Lcom/transitionseverywhere/l;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 1794
    invoke-virtual {p0}, Lcom/transitionseverywhere/g;->a()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1796
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    .line 1798
    aget-object v5, v2, v4

    invoke-static {p1, p2, v5}, Lcom/transitionseverywhere/g;->a(Lcom/transitionseverywhere/l;Lcom/transitionseverywhere/l;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1804
    :cond_1
    iget-object v2, p1, Lcom/transitionseverywhere/l;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1805
    invoke-static {p1, p2, v3}, Lcom/transitionseverywhere/g;->a(Lcom/transitionseverywhere/l;Lcom/transitionseverywhere/l;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public a()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()J
    .locals 2

    .line 343
    iget-wide v0, p0, Lcom/transitionseverywhere/g;->e:J

    return-wide v0
.end method

.method public b(J)Lcom/transitionseverywhere/g;
    .locals 0

    .line 357
    iput-wide p1, p0, Lcom/transitionseverywhere/g;->d:J

    return-object p0
.end method

.method public b(Lcom/transitionseverywhere/g$b;)Lcom/transitionseverywhere/g;
    .locals 1

    .line 1981
    iget-object v0, p0, Lcom/transitionseverywhere/g;->z:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-object p0

    .line 1984
    :cond_0
    iget-object v0, p0, Lcom/transitionseverywhere/g;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1985
    iget-object p1, p0, Lcom/transitionseverywhere/g;->z:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 1986
    iput-object p1, p0, Lcom/transitionseverywhere/g;->z:Ljava/util/ArrayList;

    :cond_1
    return-object p0
.end method

.method b(Landroid/view/View;Z)Lcom/transitionseverywhere/l;
    .locals 6

    .line 1630
    iget-object v0, p0, Lcom/transitionseverywhere/g;->r:Lcom/transitionseverywhere/j;

    if-eqz v0, :cond_0

    .line 1631
    iget-object v0, p0, Lcom/transitionseverywhere/g;->r:Lcom/transitionseverywhere/j;

    invoke-virtual {v0, p1, p2}, Lcom/transitionseverywhere/j;->b(Landroid/view/View;Z)Lcom/transitionseverywhere/l;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 1633
    iget-object v0, p0, Lcom/transitionseverywhere/g;->t:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transitionseverywhere/g;->u:Ljava/util/ArrayList;

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_2

    return-object v1

    .line 1637
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_5

    .line 1640
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transitionseverywhere/l;

    if-nez v5, :cond_3

    return-object v1

    .line 1645
    :cond_3
    iget-object v5, v5, Lcom/transitionseverywhere/l;->a:Landroid/view/View;

    if-ne v5, p1, :cond_4

    move v3, v4

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-ltz v3, :cond_7

    if-eqz p2, :cond_6

    .line 1652
    iget-object p1, p0, Lcom/transitionseverywhere/g;->u:Ljava/util/ArrayList;

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lcom/transitionseverywhere/g;->t:Ljava/util/ArrayList;

    .line 1653
    :goto_3
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/transitionseverywhere/l;

    :cond_7
    return-object v1
.end method

.method public b(Landroid/view/View;)V
    .locals 6

    .line 1666
    iget-boolean v0, p0, Lcom/transitionseverywhere/g;->H:Z

    if-nez v0, :cond_3

    .line 1667
    sget-object v0, Lcom/transitionseverywhere/g;->F:Ljava/lang/ThreadLocal;

    monitor-enter v0

    .line 1668
    :try_start_0
    invoke-static {}, Lcom/transitionseverywhere/g;->k()Landroid/support/v4/util/ArrayMap;

    move-result-object v1

    .line 1669
    invoke-virtual {v1}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    .line 1671
    invoke-static {p1}, Lcom/transitionseverywhere/a/l;->c(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_1

    .line 1673
    invoke-virtual {v1, v2}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transitionseverywhere/g$a;

    .line 1674
    iget-object v5, v4, Lcom/transitionseverywhere/g$a;->a:Landroid/view/View;

    if-eqz v5, :cond_0

    if-eqz p1, :cond_0

    iget-object v4, v4, Lcom/transitionseverywhere/g$a;->d:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1675
    invoke-virtual {v1, v2}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    .line 1676
    invoke-static {v4}, Lcom/transitionseverywhere/a/a;->a(Landroid/animation/Animator;)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1680
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1681
    iget-object p1, p0, Lcom/transitionseverywhere/g;->z:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transitionseverywhere/g;->z:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 1682
    iget-object p1, p0, Lcom/transitionseverywhere/g;->z:Ljava/util/ArrayList;

    .line 1683
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 1684
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 1686
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transitionseverywhere/g$b;

    invoke-interface {v2, p0}, Lcom/transitionseverywhere/g$b;->b(Lcom/transitionseverywhere/g;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1689
    :cond_2
    iput-boolean v3, p0, Lcom/transitionseverywhere/g;->y:Z

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 1680
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_2
    return-void
.end method

.method public abstract b(Lcom/transitionseverywhere/l;)V
.end method

.method public c()J
    .locals 2

    .line 370
    iget-wide v0, p0, Lcom/transitionseverywhere/g;->d:J

    return-wide v0
.end method

.method public c(Landroid/view/View;)V
    .locals 5

    .line 1701
    iget-boolean v0, p0, Lcom/transitionseverywhere/g;->y:Z

    if-eqz v0, :cond_3

    .line 1702
    iget-boolean v0, p0, Lcom/transitionseverywhere/g;->H:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1703
    invoke-static {}, Lcom/transitionseverywhere/g;->k()Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    .line 1704
    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v2

    .line 1705
    invoke-static {p1}, Lcom/transitionseverywhere/a/l;->c(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p1

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 1707
    invoke-virtual {v0, v2}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transitionseverywhere/g$a;

    .line 1708
    iget-object v4, v3, Lcom/transitionseverywhere/g$a;->a:Landroid/view/View;

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    iget-object v3, v3, Lcom/transitionseverywhere/g$a;->d:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1709
    invoke-virtual {v0, v2}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    .line 1710
    invoke-static {v3}, Lcom/transitionseverywhere/a/a;->b(Landroid/animation/Animator;)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1713
    :cond_1
    iget-object p1, p0, Lcom/transitionseverywhere/g;->z:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transitionseverywhere/g;->z:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 1714
    iget-object p1, p0, Lcom/transitionseverywhere/g;->z:Ljava/util/ArrayList;

    .line 1715
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 1716
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 1718
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transitionseverywhere/g$b;

    invoke-interface {v3, p0}, Lcom/transitionseverywhere/g$b;->c(Lcom/transitionseverywhere/g;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1722
    :cond_2
    iput-boolean v1, p0, Lcom/transitionseverywhere/g;->y:Z

    :cond_3
    return-void
.end method

.method c(Lcom/transitionseverywhere/l;)V
    .locals 5

    .line 2150
    iget-object v0, p0, Lcom/transitionseverywhere/g;->B:Lcom/transitionseverywhere/i;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/transitionseverywhere/l;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2151
    iget-object v0, p0, Lcom/transitionseverywhere/g;->B:Lcom/transitionseverywhere/i;

    invoke-virtual {v0}, Lcom/transitionseverywhere/i;->a()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2156
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 2157
    iget-object v3, p1, Lcom/transitionseverywhere/l;->b:Ljava/util/Map;

    aget-object v4, v0, v2

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_3

    .line 2163
    iget-object v0, p0, Lcom/transitionseverywhere/g;->B:Lcom/transitionseverywhere/i;

    invoke-virtual {v0, p1}, Lcom/transitionseverywhere/i;->a(Lcom/transitionseverywhere/l;)V

    :cond_3
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 118
    invoke-virtual {p0}, Lcom/transitionseverywhere/g;->i()Lcom/transitionseverywhere/g;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroid/animation/TimeInterpolator;
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/transitionseverywhere/g;->f:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method protected e()V
    .locals 4

    .line 866
    invoke-virtual {p0}, Lcom/transitionseverywhere/g;->f()V

    .line 867
    invoke-static {}, Lcom/transitionseverywhere/g;->k()Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    .line 869
    iget-object v1, p0, Lcom/transitionseverywhere/g;->A:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 873
    invoke-virtual {v0, v2}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 874
    invoke-virtual {p0}, Lcom/transitionseverywhere/g;->f()V

    .line 875
    invoke-direct {p0, v2, v0}, Lcom/transitionseverywhere/g;->a(Landroid/animation/Animator;Landroid/support/v4/util/ArrayMap;)V

    goto :goto_0

    .line 878
    :cond_1
    iget-object v0, p0, Lcom/transitionseverywhere/g;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 879
    invoke-virtual {p0}, Lcom/transitionseverywhere/g;->g()V

    return-void
.end method

.method protected f()V
    .locals 5

    .line 1884
    iget v0, p0, Lcom/transitionseverywhere/g;->x:I

    if-nez v0, :cond_1

    .line 1885
    iget-object v0, p0, Lcom/transitionseverywhere/g;->z:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transitionseverywhere/g;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1886
    iget-object v0, p0, Lcom/transitionseverywhere/g;->z:Ljava/util/ArrayList;

    .line 1887
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1888
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 1890
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transitionseverywhere/g$b;

    invoke-interface {v4, p0}, Lcom/transitionseverywhere/g$b;->d(Lcom/transitionseverywhere/g;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1893
    :cond_0
    iput-boolean v1, p0, Lcom/transitionseverywhere/g;->H:Z

    .line 1895
    :cond_1
    iget v0, p0, Lcom/transitionseverywhere/g;->x:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transitionseverywhere/g;->x:I

    return-void
.end method

.method protected g()V
    .locals 6

    .line 1910
    iget v0, p0, Lcom/transitionseverywhere/g;->x:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/transitionseverywhere/g;->x:I

    .line 1911
    iget v0, p0, Lcom/transitionseverywhere/g;->x:I

    if-nez v0, :cond_5

    .line 1912
    iget-object v0, p0, Lcom/transitionseverywhere/g;->z:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transitionseverywhere/g;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1913
    iget-object v0, p0, Lcom/transitionseverywhere/g;->z:Ljava/util/ArrayList;

    .line 1914
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1915
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 1917
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transitionseverywhere/g$b;

    invoke-interface {v5, p0}, Lcom/transitionseverywhere/g$b;->a(Lcom/transitionseverywhere/g;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1920
    :goto_1
    iget-object v3, p0, Lcom/transitionseverywhere/g;->c:Lcom/transitionseverywhere/m;

    iget-object v3, v3, Lcom/transitionseverywhere/m;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1921
    iget-object v3, p0, Lcom/transitionseverywhere/g;->c:Lcom/transitionseverywhere/m;

    iget-object v3, v3, Lcom/transitionseverywhere/m;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3, v0}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1922
    invoke-static {v3}, Lcom/transitionseverywhere/a/l;->d(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1923
    invoke-static {v3, v2}, Lcom/transitionseverywhere/a/l;->b(Landroid/view/View;Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 1926
    :goto_2
    iget-object v3, p0, Lcom/transitionseverywhere/g;->E:Lcom/transitionseverywhere/m;

    iget-object v3, v3, Lcom/transitionseverywhere/m;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 1927
    iget-object v3, p0, Lcom/transitionseverywhere/g;->E:Lcom/transitionseverywhere/m;

    iget-object v3, v3, Lcom/transitionseverywhere/m;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3, v0}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1928
    invoke-static {v3}, Lcom/transitionseverywhere/a/l;->d(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1929
    invoke-static {v3, v2}, Lcom/transitionseverywhere/a/l;->b(Landroid/view/View;Z)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1932
    :cond_4
    iput-boolean v1, p0, Lcom/transitionseverywhere/g;->H:Z

    :cond_5
    return-void
.end method

.method public h()Lcom/transitionseverywhere/e;
    .locals 1

    .line 2112
    iget-object v0, p0, Lcom/transitionseverywhere/g;->D:Lcom/transitionseverywhere/e;

    return-object v0
.end method

.method public i()Lcom/transitionseverywhere/g;
    .locals 3

    const/4 v0, 0x0

    .line 2207
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transitionseverywhere/g;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2208
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/transitionseverywhere/g;->A:Ljava/util/ArrayList;

    .line 2209
    new-instance v2, Lcom/transitionseverywhere/m;

    invoke-direct {v2}, Lcom/transitionseverywhere/m;-><init>()V

    iput-object v2, v1, Lcom/transitionseverywhere/g;->c:Lcom/transitionseverywhere/m;

    .line 2210
    new-instance v2, Lcom/transitionseverywhere/m;

    invoke-direct {v2}, Lcom/transitionseverywhere/m;-><init>()V

    iput-object v2, v1, Lcom/transitionseverywhere/g;->E:Lcom/transitionseverywhere/m;

    .line 2211
    iput-object v0, v1, Lcom/transitionseverywhere/g;->t:Ljava/util/ArrayList;

    .line 2212
    iput-object v0, v1, Lcom/transitionseverywhere/g;->u:Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v1, v0

    :catch_1
    :goto_0
    return-object v1
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 2232
    iget-object v0, p0, Lcom/transitionseverywhere/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 2200
    invoke-virtual {p0, v0}, Lcom/transitionseverywhere/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
