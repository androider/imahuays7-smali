.class public Lcom/google/android/exoplayer2/ac;
.super Ljava/lang/Object;
.source "SimpleExoPlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/h;
.implements Lcom/google/android/exoplayer2/v$c;
.implements Lcom/google/android/exoplayer2/v$d;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ac$a;
    }
.end annotation


# instance fields
.field protected final a:[Lcom/google/android/exoplayer2/x;

.field private final b:Lcom/google/android/exoplayer2/h;

.field private final c:Landroid/os/Handler;

.field private final d:Lcom/google/android/exoplayer2/ac$a;

.field private final e:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplayer2/video/e;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplayer2/text/j;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplayer2/metadata/d;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplayer2/video/f;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplayer2/audio/d;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/google/android/exoplayer2/a/a;

.field private k:Lcom/google/android/exoplayer2/Format;

.field private l:Lcom/google/android/exoplayer2/Format;

.field private m:Landroid/view/Surface;

.field private n:Z

.field private o:I

.field private p:Landroid/view/SurfaceHolder;

.field private q:Landroid/view/TextureView;

.field private r:Lcom/google/android/exoplayer2/b/d;

.field private s:Lcom/google/android/exoplayer2/b/d;

.field private t:I

.field private u:Lcom/google/android/exoplayer2/audio/b;

.field private v:F

.field private w:Lcom/google/android/exoplayer2/source/o;

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/exoplayer2/aa;Lcom/google/android/exoplayer2/trackselection/g;Lcom/google/android/exoplayer2/n;Lcom/google/android/exoplayer2/drm/d;)V
    .locals 6
    .param p4    # Lcom/google/android/exoplayer2/drm/d;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/aa;",
            "Lcom/google/android/exoplayer2/trackselection/g;",
            "Lcom/google/android/exoplayer2/n;",
            "Lcom/google/android/exoplayer2/drm/d<",
            "Lcom/google/android/exoplayer2/drm/h;",
            ">;)V"
        }
    .end annotation

    .line 109
    new-instance v5, Lcom/google/android/exoplayer2/a/a$a;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/a/a$a;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/ac;-><init>(Lcom/google/android/exoplayer2/aa;Lcom/google/android/exoplayer2/trackselection/g;Lcom/google/android/exoplayer2/n;Lcom/google/android/exoplayer2/drm/d;Lcom/google/android/exoplayer2/a/a$a;)V

    return-void
.end method

.method protected constructor <init>(Lcom/google/android/exoplayer2/aa;Lcom/google/android/exoplayer2/trackselection/g;Lcom/google/android/exoplayer2/n;Lcom/google/android/exoplayer2/drm/d;Lcom/google/android/exoplayer2/a/a$a;)V
    .locals 7
    .param p4    # Lcom/google/android/exoplayer2/drm/d;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/aa;",
            "Lcom/google/android/exoplayer2/trackselection/g;",
            "Lcom/google/android/exoplayer2/n;",
            "Lcom/google/android/exoplayer2/drm/d<",
            "Lcom/google/android/exoplayer2/drm/h;",
            ">;",
            "Lcom/google/android/exoplayer2/a/a$a;",
            ")V"
        }
    .end annotation

    .line 132
    sget-object v6, Lcom/google/android/exoplayer2/util/c;->a:Lcom/google/android/exoplayer2/util/c;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/ac;-><init>(Lcom/google/android/exoplayer2/aa;Lcom/google/android/exoplayer2/trackselection/g;Lcom/google/android/exoplayer2/n;Lcom/google/android/exoplayer2/drm/d;Lcom/google/android/exoplayer2/a/a$a;Lcom/google/android/exoplayer2/util/c;)V

    return-void
.end method

.method protected constructor <init>(Lcom/google/android/exoplayer2/aa;Lcom/google/android/exoplayer2/trackselection/g;Lcom/google/android/exoplayer2/n;Lcom/google/android/exoplayer2/drm/d;Lcom/google/android/exoplayer2/a/a$a;Lcom/google/android/exoplayer2/util/c;)V
    .locals 9
    .param p4    # Lcom/google/android/exoplayer2/drm/d;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/aa;",
            "Lcom/google/android/exoplayer2/trackselection/g;",
            "Lcom/google/android/exoplayer2/n;",
            "Lcom/google/android/exoplayer2/drm/d<",
            "Lcom/google/android/exoplayer2/drm/h;",
            ">;",
            "Lcom/google/android/exoplayer2/a/a$a;",
            "Lcom/google/android/exoplayer2/util/c;",
            ")V"
        }
    .end annotation

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Lcom/google/android/exoplayer2/ac$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/ac$a;-><init>(Lcom/google/android/exoplayer2/ac;Lcom/google/android/exoplayer2/ac$1;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ac;->d:Lcom/google/android/exoplayer2/ac$a;

    .line 160
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ac;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 161
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ac;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 162
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ac;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 163
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ac;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 164
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ac;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 165
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 166
    :goto_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/ac;->c:Landroid/os/Handler;

    .line 167
    iget-object v3, p0, Lcom/google/android/exoplayer2/ac;->c:Landroid/os/Handler;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ac;->d:Lcom/google/android/exoplayer2/ac$a;

    iget-object v5, p0, Lcom/google/android/exoplayer2/ac;->d:Lcom/google/android/exoplayer2/ac$a;

    iget-object v6, p0, Lcom/google/android/exoplayer2/ac;->d:Lcom/google/android/exoplayer2/ac$a;

    iget-object v7, p0, Lcom/google/android/exoplayer2/ac;->d:Lcom/google/android/exoplayer2/ac$a;

    move-object v2, p1

    move-object v8, p4

    .line 168
    invoke-interface/range {v2 .. v8}, Lcom/google/android/exoplayer2/aa;->a(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/f;Lcom/google/android/exoplayer2/audio/d;Lcom/google/android/exoplayer2/text/j;Lcom/google/android/exoplayer2/metadata/d;Lcom/google/android/exoplayer2/drm/d;)[Lcom/google/android/exoplayer2/x;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ac;->a:[Lcom/google/android/exoplayer2/x;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 177
    iput p1, p0, Lcom/google/android/exoplayer2/ac;->v:F

    const/4 p1, 0x0

    .line 178
    iput p1, p0, Lcom/google/android/exoplayer2/ac;->t:I

    .line 179
    sget-object p1, Lcom/google/android/exoplayer2/audio/b;->a:Lcom/google/android/exoplayer2/audio/b;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ac;->u:Lcom/google/android/exoplayer2/audio/b;

    const/4 p1, 0x1

    .line 180
    iput p1, p0, Lcom/google/android/exoplayer2/ac;->o:I

    .line 181
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ac;->x:Ljava/util/List;

    .line 184
    iget-object p1, p0, Lcom/google/android/exoplayer2/ac;->a:[Lcom/google/android/exoplayer2/x;

    invoke-virtual {p0, p1, p2, p3, p6}, Lcom/google/android/exoplayer2/ac;->a([Lcom/google/android/exoplayer2/x;Lcom/google/android/exoplayer2/trackselection/g;Lcom/google/android/exoplayer2/n;Lcom/google/android/exoplayer2/util/c;)Lcom/google/android/exoplayer2/h;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ac;->b:Lcom/google/android/exoplayer2/h;

    .line 185
    iget-object p1, p0, Lcom/google/android/exoplayer2/ac;->b:Lcom/google/android/exoplayer2/h;

    invoke-virtual {p5, p1, p6}, Lcom/google/android/exoplayer2/a/a$a;->a(Lcom/google/android/exoplayer2/v;Lcom/google/android/exoplayer2/util/c;)Lcom/google/android/exoplayer2/a/a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ac;->j:Lcom/google/android/exoplayer2/a/a;

    .line 186
    iget-object p1, p0, Lcom/google/android/exoplayer2/ac;->j:Lcom/google/android/exoplayer2/a/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ac;->a(Lcom/google/android/exoplayer2/v$b;)V

    .line 187
    iget-object p1, p0, Lcom/google/android/exoplayer2/ac;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object p2, p0, Lcom/google/android/exoplayer2/ac;->j:Lcom/google/android/exoplayer2/a/a;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object p1, p0, Lcom/google/android/exoplayer2/ac;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object p2, p0, Lcom/google/android/exoplayer2/ac;->j:Lcom/google/android/exoplayer2/a/a;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object p1, p0, Lcom/google/android/exoplayer2/ac;->j:Lcom/google/android/exoplayer2/a/a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ac;->a(Lcom/google/android/exoplayer2/metadata/d;)V

    .line 190
    instance-of p1, p4, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    if-eqz p1, :cond_1

    .line 191
    check-cast p4, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    iget-object p1, p0, Lcom/google/android/exoplayer2/ac;->c:Landroid/os/Handler;

    iget-object p2, p0, Lcom/google/android/exoplayer2/ac;->j:Lcom/google/android/exoplayer2/a/a;

    invoke-virtual {p4, p1, p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->a(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/c;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/ac;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/google/android/exoplayer2/ac;->t:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/ac;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/google/android/exoplayer2/ac;->k:Lcom/google/android/exoplayer2/Format;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/ac;Lcom/google/android/exoplayer2/b/d;)Lcom/google/android/exoplayer2/b/d;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/google/android/exoplayer2/ac;->r:Lcom/google/android/exoplayer2/b/d;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/ac;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/google/android/exoplayer2/ac;->x:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/ac;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/google/android/exoplayer2/ac;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method private a(Landroid/view/Surface;Z)V
    .locals 7

    .line 951
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 952
    iget-object v1, p0, Lcom/google/android/exoplayer2/ac;->a:[Lcom/google/android/exoplayer2/x;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 953
    invoke-interface {v4}, Lcom/google/android/exoplayer2/x;->a()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 954
    iget-object v5, p0, Lcom/google/android/exoplayer2/ac;->b:Lcom/google/android/exoplayer2/h;

    .line 955
    invoke-interface {v5, v4}, Lcom/google/android/exoplayer2/h;->a(Lcom/google/android/exoplayer2/w$b;)Lcom/google/android/exoplayer2/w;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/w;->a(I)Lcom/google/android/exoplayer2/w;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/android/exoplayer2/w;->a(Ljava/lang/Object;)Lcom/google/android/exoplayer2/w;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/w;->i()Lcom/google/android/exoplayer2/w;

    move-result-object v4

    .line 954
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 958
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ac;->m:Landroid/view/Surface;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/exoplayer2/ac;->m:Landroid/view/Surface;

    if-eq v1, p1, :cond_3

    .line 961
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/w;

    .line 962
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/w;->k()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 965
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 968
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ac;->n:Z

    if-eqz v0, :cond_3

    .line 969
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->m:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 972
    :cond_3
    iput-object p1, p0, Lcom/google/android/exoplayer2/ac;->m:Landroid/view/Surface;

    .line 973
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/ac;->n:Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/ac;Landroid/view/Surface;Z)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ac;->a(Landroid/view/Surface;Z)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/ac;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/google/android/exoplayer2/ac;->l:Lcom/google/android/exoplayer2/Format;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/ac;Lcom/google/android/exoplayer2/b/d;)Lcom/google/android/exoplayer2/b/d;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/google/android/exoplayer2/ac;->s:Lcom/google/android/exoplayer2/b/d;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/ac;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/google/android/exoplayer2/ac;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/ac;)Landroid/view/Surface;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/google/android/exoplayer2/ac;->m:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/ac;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/google/android/exoplayer2/ac;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/ac;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/google/android/exoplayer2/ac;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/ac;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/google/android/exoplayer2/ac;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method private z()V
    .locals 3

    .line 934
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->q:Landroid/view/TextureView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 935
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->q:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/ac;->d:Lcom/google/android/exoplayer2/ac$a;

    if-eq v0, v2, :cond_0

    const-string v0, "SimpleExoPlayer"

    const-string v2, "SurfaceTextureListener already unset or replaced."

    .line 936
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 938
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->q:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 940
    :goto_0
    iput-object v1, p0, Lcom/google/android/exoplayer2/ac;->q:Landroid/view/TextureView;

    .line 942
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->p:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_2

    .line 943
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->p:Landroid/view/SurfaceHolder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ac;->d:Lcom/google/android/exoplayer2/ac$a;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 944
    iput-object v1, p0, Lcom/google/android/exoplayer2/ac;->p:Landroid/view/SurfaceHolder;

    :cond_2
    return-void
.end method


# virtual methods
.method protected a([Lcom/google/android/exoplayer2/x;Lcom/google/android/exoplayer2/trackselection/g;Lcom/google/android/exoplayer2/n;Lcom/google/android/exoplayer2/util/c;)Lcom/google/android/exoplayer2/h;
    .locals 1

    .line 930
    new-instance v0, Lcom/google/android/exoplayer2/j;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/j;-><init>([Lcom/google/android/exoplayer2/x;Lcom/google/android/exoplayer2/trackselection/g;Lcom/google/android/exoplayer2/n;Lcom/google/android/exoplayer2/util/c;)V

    return-object v0
.end method

.method public a()Lcom/google/android/exoplayer2/v$d;
    .locals 0

    return-object p0
.end method

.method public a(Lcom/google/android/exoplayer2/w$b;)Lcom/google/android/exoplayer2/w;
    .locals 1

    .line 809
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->b:Lcom/google/android/exoplayer2/h;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/h;->a(Lcom/google/android/exoplayer2/w$b;)Lcom/google/android/exoplayer2/w;

    move-result-object p1

    return-object p1
.end method

.method public a(F)V
    .locals 6

    .line 400
    iput p1, p0, Lcom/google/android/exoplayer2/ac;->v:F

    .line 401
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->a:[Lcom/google/android/exoplayer2/x;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 402
    invoke-interface {v3}, Lcom/google/android/exoplayer2/x;->a()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 403
    iget-object v4, p0, Lcom/google/android/exoplayer2/ac;->b:Lcom/google/android/exoplayer2/h;

    invoke-interface {v4, v3}, Lcom/google/android/exoplayer2/h;->a(Lcom/google/android/exoplayer2/w$b;)Lcom/google/android/exoplayer2/w;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/w;->a(I)Lcom/google/android/exoplayer2/w;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/w;->a(Ljava/lang/Object;)Lcom/google/android/exoplayer2/w;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/w;->i()Lcom/google/android/exoplayer2/w;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 708
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->b:Lcom/google/android/exoplayer2/h;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/h;->a(I)V

    return-void
.end method

.method public a(IJ)V
    .locals 1

    .line 746
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->j:Lcom/google/android/exoplayer2/a/a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a/a;->a()V

    .line 747
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->b:Lcom/google/android/exoplayer2/h;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/h;->a(IJ)V

    return-void
.end method

.method public a(J)V
    .locals 1

    .line 740
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->j:Lcom/google/android/exoplayer2/a/a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a/a;->a()V

    .line 741
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->b:Lcom/google/android/exoplayer2/h;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/h;->a(J)V

    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .locals 1

    .line 239
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ac;->z()V

    const/4 v0, 0x0

    .line 240
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ac;->a(Landroid/view/Surface;Z)V

    return-void
.end method

.method public a(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 252
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ac;->z()V

    .line 253
    iput-object p1, p0, Lcom/google/android/exoplayer2/ac;->p:Landroid/view/SurfaceHolder;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 255
    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/ac;->a(Landroid/view/Surface;Z)V

    goto :goto_1

    .line 257
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ac;->d:Lcom/google/android/exoplayer2/ac$a;

    invoke-interface {p1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 258
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 259
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ac;->a(Landroid/view/Surface;Z)V

    :goto_1
    return-void
.end method

.method public a(Landroid/view/SurfaceView;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 272
    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ac;->a(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public a(Landroid/view/TextureView;)V
    .locals 4

    .line 282
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ac;->z()V

    .line 283
    iput-object p1, p0, Lcom/google/android/exoplayer2/ac;->q:Landroid/view/TextureView;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 285
    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/ac;->a(Landroid/view/Surface;Z)V

    goto :goto_2

    .line 287
    :cond_0
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "SimpleExoPlayer"

    const-string v3, "Replacing existing SurfaceTextureListener."

    .line 288
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/ac;->d:Lcom/google/android/exoplayer2/ac$a;

    invoke-virtual {p1, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 291
    invoke-virtual {p1}, Landroid/view/TextureView;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_3

    goto :goto_1

    .line 293
    :cond_3
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/ac;->a(Landroid/view/Surface;Z)V

    :goto_2
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/a/b;)V
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->j:Lcom/google/android/exoplayer2/a/a;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/b;)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/metadata/d;)V
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/o;)V
    .locals 1

    const/4 v0, 0x1

    .line 675
    invoke-virtual {p0, p1, v0, v0}, Lcom/google/android/exoplayer2/ac;->a(Lcom/google/android/exoplayer2/source/o;ZZ)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/o;ZZ)V
    .locals 2

    .line 680
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->w:Lcom/google/android/exoplayer2/source/o;

    if-eq v0, p1, :cond_1

    .line 681
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->w:Lcom/google/android/exoplayer2/source/o;

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->w:Lcom/google/android/exoplayer2/source/o;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ac;->j:Lcom/google/android/exoplayer2/a/a;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/o;->a(Lcom/google/android/exoplayer2/source/p;)V

    .line 683
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->j:Lcom/google/android/exoplayer2/a/a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a/a;->b()V

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ac;->j:Lcom/google/android/exoplayer2/a/a;

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/source/o;->a(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/p;)V

    .line 686
    iput-object p1, p0, Lcom/google/android/exoplayer2/ac;->w:Lcom/google/android/exoplayer2/source/o;

    .line 688
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->b:Lcom/google/android/exoplayer2/h;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/h;->a(Lcom/google/android/exoplayer2/source/o;ZZ)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/t;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/t;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 752
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->b:Lcom/google/android/exoplayer2/h;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/h;->a(Lcom/google/android/exoplayer2/t;)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/text/j;)V
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->x:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/text/j;->a(Ljava/util/List;)V

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/v$b;)V
    .locals 1

    .line 655
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->b:Lcom/google/android/exoplayer2/h;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/h;->a(Lcom/google/android/exoplayer2/v$b;)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/video/e;)V
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 693
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->b:Lcom/google/android/exoplayer2/h;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/h;->a(Z)V

    return-void
.end method

.method public b(I)I
    .locals 1

    .line 824
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->b:Lcom/google/android/exoplayer2/h;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/h;->b(I)I

    move-result p1

    return p1
.end method

.method public b()Lcom/google/android/exoplayer2/v$c;
    .locals 0

    return-object p0
.end method

.method public b(Landroid/view/SurfaceHolder;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 265
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->p:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 266
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ac;->a(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/view/SurfaceView;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 277
    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ac;->b(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public b(Landroid/view/TextureView;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 299
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->q:Landroid/view/TextureView;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 300
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ac;->a(Landroid/view/TextureView;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/text/j;)V
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/v$b;)V
    .locals 1

    .line 660
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->b:Lcom/google/android/exoplayer2/h;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/h;->b(Lcom/google/android/exoplayer2/v$b;)V

    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/video/e;)V
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 713
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->b:Lcom/google/android/exoplayer2/h;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/h;->b(Z)V

    return-void
.end method

.method public c()I
    .locals 1

    .line 665
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->b:Lcom/google/android/exoplayer2/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/h;->c()I

    move-result v0

    return v0
.end method

.method public c(Z)V
    .locals 1

    .line 777
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->b:Lcom/google/android/exoplayer2/h;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/h;->c(Z)V

    .line 778
    iget-object p1, p0, Lcom/google/android/exoplayer2/ac;->w:Lcom/google/android/exoplayer2/source/o;

    if-eqz p1, :cond_0

    .line 779
    iget-object p1, p0, Lcom/google/android/exoplayer2/ac;->w:Lcom/google/android/exoplayer2/source/o;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->j:Lcom/google/android/exoplayer2/a/a;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/source/o;->a(Lcom/google/android/exoplayer2/source/p;)V

    const/4 p1, 0x0

    .line 780
    iput-object p1, p0, Lcom/google/android/exoplayer2/ac;->w:Lcom/google/android/exoplayer2/source/o;

    .line 781
    iget-object p1, p0, Lcom/google/android/exoplayer2/ac;->j:Lcom/google/android/exoplayer2/a/a;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/a/a;->b()V

    .line 783
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ac;->x:Ljava/util/List;

    return-void
.end method

.method public d()Lcom/google/android/exoplayer2/ExoPlaybackException;
    .locals 1

    .line 670
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->b:Lcom/google/android/exoplayer2/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/h;->d()Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 698
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->b:Lcom/google/android/exoplayer2/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/h;->e()Z

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    .line 703
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->b:Lcom/google/android/exoplayer2/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/h;->f()I

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->b:Lcom/google/android/exoplayer2/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/h;->g()Z

    move-result v0

    return v0
.end method

.method public h()Lcom/google/android/exoplayer2/t;
    .locals 1

    .line 757
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->b:Lcom/google/android/exoplayer2/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/h;->h()Lcom/google/android/exoplayer2/t;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .locals 2

    .line 788
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->b:Lcom/google/android/exoplayer2/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/h;->i()V

    .line 789
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ac;->z()V

    .line 790
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->m:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 791
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ac;->n:Z

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->m:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 794
    iput-object v0, p0, Lcom/google/android/exoplayer2/ac;->m:Landroid/view/Surface;

    .line 796
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->w:Lcom/google/android/exoplayer2/source/o;

    if-eqz v0, :cond_2

    .line 797
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->w:Lcom/google/android/exoplayer2/source/o;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ac;->j:Lcom/google/android/exoplayer2/a/a;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/o;->a(Lcom/google/android/exoplayer2/source/p;)V

    .line 799
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ac;->x:Ljava/util/List;

    return-void
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x0

    .line 772
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ac;->c(Z)V

    return-void
.end method

.method public k()I
    .locals 1

    .line 854
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->b:Lcom/google/android/exoplayer2/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/h;->k()I

    move-result v0

    return v0
.end method

.method public l()I
    .locals 1

    .line 859
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->b:Lcom/google/android/exoplayer2/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/h;->l()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    .line 864
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->b:Lcom/google/android/exoplayer2/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/h;->m()I

    move-result v0

    return v0
.end method

.method public n()J
    .locals 2

    .line 869
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->b:Lcom/google/android/exoplayer2/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/h;->n()J

    move-result-wide v0

    return-wide v0
.end method

.method public o()J
    .locals 2

    .line 874
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->b:Lcom/google/android/exoplayer2/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/h;->o()J

    move-result-wide v0

    return-wide v0
.end method

.method public p()J
    .locals 2

    .line 879
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->b:Lcom/google/android/exoplayer2/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/h;->p()J

    move-result-wide v0

    return-wide v0
.end method

.method public q()I
    .locals 1

    .line 884
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->b:Lcom/google/android/exoplayer2/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/h;->q()I

    move-result v0

    return v0
.end method

.method public r()Z
    .locals 1

    .line 899
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->b:Lcom/google/android/exoplayer2/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/h;->r()Z

    move-result v0

    return v0
.end method

.method public s()I
    .locals 1

    .line 904
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->b:Lcom/google/android/exoplayer2/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/h;->s()I

    move-result v0

    return v0
.end method

.method public t()I
    .locals 1

    .line 909
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->b:Lcom/google/android/exoplayer2/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/h;->t()I

    move-result v0

    return v0
.end method

.method public u()J
    .locals 2

    .line 914
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->b:Lcom/google/android/exoplayer2/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/h;->u()J

    move-result-wide v0

    return-wide v0
.end method

.method public v()I
    .locals 1

    .line 819
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->b:Lcom/google/android/exoplayer2/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/h;->v()I

    move-result v0

    return v0
.end method

.method public w()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 829
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->b:Lcom/google/android/exoplayer2/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/h;->w()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    return-object v0
.end method

.method public x()Lcom/google/android/exoplayer2/trackselection/f;
    .locals 1

    .line 834
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->b:Lcom/google/android/exoplayer2/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/h;->x()Lcom/google/android/exoplayer2/trackselection/f;

    move-result-object v0

    return-object v0
.end method

.method public y()Lcom/google/android/exoplayer2/ad;
    .locals 1

    .line 839
    iget-object v0, p0, Lcom/google/android/exoplayer2/ac;->b:Lcom/google/android/exoplayer2/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/h;->y()Lcom/google/android/exoplayer2/ad;

    move-result-object v0

    return-object v0
.end method
