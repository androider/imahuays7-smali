.class public Lcom/flurry/sdk/bp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ei$a;


# static fields
.field static final a:Ljava/lang/String; = "bp"

.field static b:I = 0x64

.field static c:I = 0xa

.field static d:I = 0x3e8

.field static e:I = 0x27100

.field static f:I = 0x32


# instance fields
.field private final A:Lcom/flurry/sdk/z;

.field private B:J

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:I

.field private F:Z

.field private G:I

.field private H:I

.field private I:I

.field private final J:Lcom/flurry/sdk/cw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/cw<",
            "Lcom/flurry/sdk/ed;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/flurry/sdk/ec;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/io/File;

.field i:Lcom/flurry/sdk/cu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/cu<",
            "Ljava/util/List<",
            "Lcom/flurry/sdk/bm;",
            ">;>;"
        }
    .end annotation
.end field

.field public j:Z

.field k:Z

.field l:Ljava/lang/String;

.field m:B

.field n:Ljava/lang/Long;

.field o:Z

.field p:Z

.field final q:Lcom/flurry/sdk/cw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/cw<",
            "Lcom/flurry/sdk/bu;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final s:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/flurry/sdk/bm;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final w:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/bi;",
            ">;"
        }
    .end annotation
.end field

.field private final x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/flurry/sdk/bj;",
            ">;"
        }
    .end annotation
.end field

.field private final y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/flurry/sdk/bh;",
            ">;"
        }
    .end annotation
.end field

.field private final z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/flurry/sdk/bp;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 119
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/flurry/sdk/bp;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/bp;->t:Ljava/util/List;

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/bp;->u:Ljava/util/Map;

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/bp;->v:Ljava/util/Map;

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/bp;->w:Ljava/util/Map;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/bp;->x:Ljava/util/List;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/bp;->y:Ljava/util/List;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/bp;->z:Ljava/util/List;

    .line 127
    new-instance v0, Lcom/flurry/sdk/z;

    invoke-direct {v0}, Lcom/flurry/sdk/z;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/bp;->A:Lcom/flurry/sdk/z;

    const/4 v0, -0x1

    .line 139
    iput v0, p0, Lcom/flurry/sdk/bp;->E:I

    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Lcom/flurry/sdk/bp;->F:Z

    .line 141
    iput v1, p0, Lcom/flurry/sdk/bp;->G:I

    .line 142
    iput v1, p0, Lcom/flurry/sdk/bp;->H:I

    .line 143
    iput v1, p0, Lcom/flurry/sdk/bp;->I:I

    .line 146
    iput-boolean v0, p0, Lcom/flurry/sdk/bp;->p:Z

    .line 147
    new-instance v0, Lcom/flurry/sdk/bp$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/bp$1;-><init>(Lcom/flurry/sdk/bp;)V

    iput-object v0, p0, Lcom/flurry/sdk/bp;->q:Lcom/flurry/sdk/cw;

    .line 161
    new-instance v0, Lcom/flurry/sdk/bp$10;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/bp$10;-><init>(Lcom/flurry/sdk/bp;)V

    iput-object v0, p0, Lcom/flurry/sdk/bp;->J:Lcom/flurry/sdk/cw;

    .line 194
    invoke-static {}, Lcom/flurry/sdk/cx;->a()Lcom/flurry/sdk/cx;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.FlurrySessionEvent"

    iget-object v2, p0, Lcom/flurry/sdk/bp;->J:Lcom/flurry/sdk/cw;

    .line 195
    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/cx;->a(Ljava/lang/String;Lcom/flurry/sdk/cw;)V

    return-void
.end method

.method private declared-synchronized a(JJJILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/sdk/bm;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/sdk/bm;"
        }
    .end annotation

    monitor-enter p0

    .line 781
    :try_start_0
    new-instance v0, Lcom/flurry/sdk/bn;

    invoke-direct {v0}, Lcom/flurry/sdk/bn;-><init>()V

    .line 784
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/eh;

    move-result-object v1

    const-string v2, "IncludeBackgroundSessionsInMetrics"

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/eh;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 12076
    iput-boolean v1, v0, Lcom/flurry/sdk/bn;->s:Z

    .line 788
    iget-boolean v1, p0, Lcom/flurry/sdk/bp;->o:Z

    if-eqz v1, :cond_0

    .line 789
    sget-object v1, Lcom/flurry/sdk/eq$a;->d:Lcom/flurry/sdk/eq$a;

    .line 12111
    iget-byte v1, v1, Lcom/flurry/sdk/eq$a;->e:B

    .line 13064
    iput-byte v1, v0, Lcom/flurry/sdk/bn;->r:B

    goto :goto_0

    .line 791
    :cond_0
    sget-object v1, Lcom/flurry/sdk/eq$a;->b:Lcom/flurry/sdk/eq$a;

    .line 13111
    iget-byte v1, v1, Lcom/flurry/sdk/eq$a;->e:B

    .line 14064
    iput-byte v1, v0, Lcom/flurry/sdk/bn;->r:B

    .line 794
    :goto_0
    invoke-static {}, Lcom/flurry/sdk/cc;->a()Lcom/flurry/sdk/cc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/cc;->e()Ljava/lang/String;

    move-result-object v1

    .line 15052
    iput-object v1, v0, Lcom/flurry/sdk/bn;->a:Ljava/lang/String;

    .line 15068
    iput-wide p1, v0, Lcom/flurry/sdk/bn;->b:J

    .line 15084
    iput-wide p3, v0, Lcom/flurry/sdk/bn;->c:J

    .line 15092
    iput-wide p5, v0, Lcom/flurry/sdk/bn;->d:J

    .line 798
    iget-object p1, p0, Lcom/flurry/sdk/bp;->v:Ljava/util/Map;

    .line 15100
    iput-object p1, v0, Lcom/flurry/sdk/bn;->e:Ljava/util/Map;

    .line 15108
    iput-object p8, v0, Lcom/flurry/sdk/bn;->f:Ljava/lang/String;

    .line 15116
    iput-object p9, v0, Lcom/flurry/sdk/bn;->g:Ljava/lang/String;

    .line 15124
    iput-object p10, v0, Lcom/flurry/sdk/bn;->h:Ljava/util/Map;

    .line 802
    invoke-static {}, Lcom/flurry/sdk/bw;->a()Lcom/flurry/sdk/bw;

    invoke-static {}, Lcom/flurry/sdk/bw;->b()Ljava/lang/String;

    move-result-object p1

    .line 15132
    iput-object p1, v0, Lcom/flurry/sdk/bn;->i:Ljava/lang/String;

    .line 803
    invoke-static {}, Lcom/flurry/sdk/bw;->a()Lcom/flurry/sdk/bw;

    .line 16029
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p1

    .line 16140
    iput-object p1, v0, Lcom/flurry/sdk/bn;->j:Ljava/lang/String;

    .line 16148
    iput p7, v0, Lcom/flurry/sdk/bn;->k:I

    .line 805
    iget p1, p0, Lcom/flurry/sdk/bp;->E:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    iget p1, p0, Lcom/flurry/sdk/bp;->E:I

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/flurry/sdk/el;->a()I

    move-result p1

    .line 16156
    :goto_1
    iput p1, v0, Lcom/flurry/sdk/bn;->l:I

    .line 16922
    iget-object p1, p0, Lcom/flurry/sdk/bp;->l:Ljava/lang/String;

    if-nez p1, :cond_2

    const-string p1, ""

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/flurry/sdk/bp;->l:Ljava/lang/String;

    .line 17164
    :goto_2
    iput-object p1, v0, Lcom/flurry/sdk/bn;->m:Ljava/lang/String;

    .line 807
    invoke-static {}, Lcom/flurry/sdk/bx;->a()Lcom/flurry/sdk/bx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flurry/sdk/bx;->g()Landroid/location/Location;

    move-result-object p1

    .line 17172
    iput-object p1, v0, Lcom/flurry/sdk/bn;->n:Landroid/location/Location;

    .line 17926
    iget p1, p0, Lcom/flurry/sdk/bp;->I:I

    .line 18180
    iput p1, v0, Lcom/flurry/sdk/bn;->o:I

    .line 812
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object p1

    .line 19103
    iget-object p1, p1, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    .line 812
    invoke-static {p1}, Lcom/flurry/sdk/eq;->a(Landroid/content/Context;)Lcom/flurry/sdk/eq$b;

    move-result-object p1

    .line 19133
    iget p1, p1, Lcom/flurry/sdk/eq$b;->i:I

    .line 19188
    iput p1, v0, Lcom/flurry/sdk/bn;->x:I

    .line 814
    iget-byte p1, p0, Lcom/flurry/sdk/bp;->m:B

    .line 19196
    iput-byte p1, v0, Lcom/flurry/sdk/bn;->p:B

    .line 815
    iget-object p1, p0, Lcom/flurry/sdk/bp;->n:Ljava/lang/Long;

    .line 19204
    iput-object p1, v0, Lcom/flurry/sdk/bn;->q:Ljava/lang/Long;

    .line 19930
    iget-object p1, p0, Lcom/flurry/sdk/bp;->w:Ljava/util/Map;

    .line 20212
    iput-object p1, v0, Lcom/flurry/sdk/bn;->t:Ljava/util/Map;

    .line 20934
    iget-object p1, p0, Lcom/flurry/sdk/bp;->x:Ljava/util/List;

    .line 819
    sget-object p2, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Total events in session report: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x3

    invoke-static {p4, p2, p3}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 21220
    iput-object p1, v0, Lcom/flurry/sdk/bn;->u:Ljava/util/List;

    .line 821
    iget-boolean p1, p0, Lcom/flurry/sdk/bp;->F:Z

    .line 21228
    iput-boolean p1, v0, Lcom/flurry/sdk/bn;->w:Z

    .line 21942
    iget-object p1, p0, Lcom/flurry/sdk/bp;->y:Ljava/util/List;

    .line 22244
    iput-object p1, v0, Lcom/flurry/sdk/bn;->z:Ljava/util/List;

    .line 824
    iget p1, p0, Lcom/flurry/sdk/bp;->H:I

    .line 23236
    iput p1, v0, Lcom/flurry/sdk/bn;->y:I

    .line 825
    sget-object p1, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Total errors in session report: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcom/flurry/sdk/bp;->H:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p1, p2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 23938
    iget-object p1, p0, Lcom/flurry/sdk/bp;->z:Ljava/util/List;

    .line 24252
    iput-object p1, v0, Lcom/flurry/sdk/bn;->v:Ljava/util/List;

    .line 831
    iget-object p1, p0, Lcom/flurry/sdk/bp;->D:Ljava/lang/String;

    .line 24260
    iput-object p1, v0, Lcom/flurry/sdk/bn;->A:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 835
    :try_start_1
    new-instance p2, Lcom/flurry/sdk/bm;

    invoke-direct {p2, v0}, Lcom/flurry/sdk/bm;-><init>(Lcom/flurry/sdk/bn;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p1, p2

    goto :goto_3

    :catch_0
    move-exception p2

    const/4 p3, 0x5

    .line 837
    :try_start_2
    sget-object p4, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    const-string p6, "Error creating analytics session report: "

    invoke-direct {p5, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p4, p2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_3
    if-nez p1, :cond_3

    .line 841
    sget-object p2, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    const-string p3, "New session report wasn\'t created"

    invoke-static {p2, p3}, Lcom/flurry/sdk/dc;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 844
    :cond_3
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 780
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized a(JJLcom/flurry/sdk/bh;)Lcom/flurry/sdk/bm;
    .locals 3

    monitor-enter p0

    .line 854
    :try_start_0
    new-instance v0, Lcom/flurry/sdk/bn;

    invoke-direct {v0}, Lcom/flurry/sdk/bn;-><init>()V

    const/4 v1, 0x0

    .line 25076
    iput-boolean v1, v0, Lcom/flurry/sdk/bn;->s:Z

    .line 858
    sget-object v2, Lcom/flurry/sdk/eq$a;->a:Lcom/flurry/sdk/eq$a;

    .line 25111
    iget-byte v2, v2, Lcom/flurry/sdk/eq$a;->e:B

    .line 26064
    iput-byte v2, v0, Lcom/flurry/sdk/bn;->r:B

    .line 859
    invoke-static {}, Lcom/flurry/sdk/cc;->a()Lcom/flurry/sdk/cc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/cc;->e()Ljava/lang/String;

    move-result-object v2

    .line 27052
    iput-object v2, v0, Lcom/flurry/sdk/bn;->a:Ljava/lang/String;

    .line 27068
    iput-wide p1, v0, Lcom/flurry/sdk/bn;->b:J

    .line 27084
    iput-wide p3, v0, Lcom/flurry/sdk/bn;->c:J

    const-wide/16 p1, 0x0

    .line 27092
    iput-wide p1, v0, Lcom/flurry/sdk/bn;->d:J

    const/4 p1, 0x0

    .line 27100
    iput-object p1, v0, Lcom/flurry/sdk/bn;->e:Ljava/util/Map;

    .line 27108
    iput-object p1, v0, Lcom/flurry/sdk/bn;->f:Ljava/lang/String;

    .line 27116
    iput-object p1, v0, Lcom/flurry/sdk/bn;->g:Ljava/lang/String;

    .line 27124
    iput-object p1, v0, Lcom/flurry/sdk/bn;->h:Ljava/util/Map;

    const-string p2, ""

    .line 27132
    iput-object p2, v0, Lcom/flurry/sdk/bn;->i:Ljava/lang/String;

    const-string p2, ""

    .line 27140
    iput-object p2, v0, Lcom/flurry/sdk/bn;->j:Ljava/lang/String;

    .line 869
    sget p2, Lcom/flurry/sdk/bz$a;->a:I

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    .line 27148
    iput p2, v0, Lcom/flurry/sdk/bn;->k:I

    .line 27156
    iput v1, v0, Lcom/flurry/sdk/bn;->l:I

    const-string p2, ""

    .line 27164
    iput-object p2, v0, Lcom/flurry/sdk/bn;->m:Ljava/lang/String;

    .line 27172
    iput-object p1, v0, Lcom/flurry/sdk/bn;->n:Landroid/location/Location;

    .line 27180
    iput v1, v0, Lcom/flurry/sdk/bn;->o:I

    .line 877
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object p2

    .line 28103
    iget-object p2, p2, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    .line 877
    invoke-static {p2}, Lcom/flurry/sdk/eq;->a(Landroid/content/Context;)Lcom/flurry/sdk/eq$b;

    move-result-object p2

    .line 28133
    iget p2, p2, Lcom/flurry/sdk/eq$b;->i:I

    .line 28188
    iput p2, v0, Lcom/flurry/sdk/bn;->x:I

    const/4 p2, -0x1

    .line 28196
    iput-byte p2, v0, Lcom/flurry/sdk/bn;->p:B

    .line 28204
    iput-object p1, v0, Lcom/flurry/sdk/bn;->q:Ljava/lang/Long;

    .line 28212
    iput-object p1, v0, Lcom/flurry/sdk/bn;->t:Ljava/util/Map;

    .line 28220
    iput-object p1, v0, Lcom/flurry/sdk/bn;->u:Ljava/util/List;

    .line 28228
    iput-boolean p3, v0, Lcom/flurry/sdk/bn;->w:Z

    .line 887
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 888
    invoke-interface {p2, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28244
    iput-object p2, v0, Lcom/flurry/sdk/bn;->z:Ljava/util/List;

    .line 890
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    .line 29236
    iput p3, v0, Lcom/flurry/sdk/bn;->y:I

    const/4 p3, 0x3

    .line 891
    sget-object p4, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v1, "Total errors in native crash session report: "

    invoke-direct {p5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p4, p2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 894
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 29252
    iput-object p2, v0, Lcom/flurry/sdk/bn;->v:Ljava/util/List;

    .line 29260
    iput-object p1, v0, Lcom/flurry/sdk/bn;->A:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 901
    :try_start_1
    new-instance p2, Lcom/flurry/sdk/bm;

    invoke-direct {p2, v0}, Lcom/flurry/sdk/bm;-><init>(Lcom/flurry/sdk/bn;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p1, p2

    goto :goto_0

    :catch_0
    move-exception p2

    const/4 p3, 0x5

    .line 903
    :try_start_2
    sget-object p4, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, "Error creating analytics native crash session report: "

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p4, p2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-nez p1, :cond_0

    .line 907
    sget-object p2, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    const-string p3, "New native crash session report wasn\'t created"

    invoke-static {p2, p3}, Lcom/flurry/sdk/dc;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 910
    :cond_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 853
    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/flurry/sdk/bp;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/flurry/sdk/bp;->g:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic a(Lcom/flurry/sdk/bp;JJJILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 46950
    invoke-direct/range {p0 .. p10}, Lcom/flurry/sdk/bp;->a(JJJILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/sdk/bm;

    move-result-object p1

    .line 46957
    iget-object p2, p0, Lcom/flurry/sdk/bp;->t:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 46959
    iget-object p2, p0, Lcom/flurry/sdk/bp;->t:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46962
    invoke-direct {p0}, Lcom/flurry/sdk/bp;->g()V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/bp;ZJ)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/bp;->a(ZJ)V

    return-void
.end method

.method private declared-synchronized a(ZJ)V
    .locals 24

    move-object/from16 v1, p0

    monitor-enter p0

    .line 612
    :try_start_0
    iget-boolean v2, v1, Lcom/flurry/sdk/bp;->p:Z

    const/4 v3, 0x3

    if-nez v2, :cond_0

    .line 613
    sget-object v2, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    const-string v4, "Analytics disabled, not sending agent report."

    invoke-static {v3, v2, v4}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    monitor-exit p0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 617
    :try_start_1
    iget-object v2, v1, Lcom/flurry/sdk/bp;->t:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 618
    monitor-exit p0

    return-void

    .line 621
    :cond_1
    :try_start_2
    sget-object v2, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "generating agent report with "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/flurry/sdk/bp;->t:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " session reports."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 625
    :try_start_3
    new-instance v15, Lcom/flurry/sdk/bk;

    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v4

    .line 5075
    iget-object v5, v4, Lcom/flurry/sdk/cl;->b:Ljava/lang/String;

    .line 626
    invoke-static {}, Lcom/flurry/sdk/cc;->a()Lcom/flurry/sdk/cc;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/cc;->e()Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, v1, Lcom/flurry/sdk/bp;->j:Z

    .line 627
    invoke-static {}, Lcom/flurry/sdk/bt;->a()Lcom/flurry/sdk/bt;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/bt;->f()Z

    move-result v8

    iget-wide v9, v1, Lcom/flurry/sdk/bp;->B:J

    iget-object v13, v1, Lcom/flurry/sdk/bp;->t:Ljava/util/List;

    .line 629
    invoke-static {}, Lcom/flurry/sdk/bt;->a()Lcom/flurry/sdk/bt;

    move-result-object v4

    .line 5169
    iget-object v4, v4, Lcom/flurry/sdk/bt;->a:Ljava/util/Map;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v14

    .line 629
    iget-object v4, v1, Lcom/flurry/sdk/bp;->A:Lcom/flurry/sdk/z;

    invoke-virtual {v4}, Lcom/flurry/sdk/z;->a()Ljava/util/Map;

    move-result-object v16

    iget-object v11, v1, Lcom/flurry/sdk/bp;->u:Ljava/util/Map;

    .line 631
    invoke-static {}, Lcom/flurry/sdk/cn;->a()Lcom/flurry/sdk/cn;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/cn;->c()Ljava/util/HashMap;

    move-result-object v17

    .line 632
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/eh;

    move-result-object v20

    iget-boolean v12, v1, Lcom/flurry/sdk/bp;->o:Z

    move-object v4, v15

    move-object/from16 v21, v11

    move/from16 v22, v12

    move-wide/from16 v11, p2

    move-object v2, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v21

    move/from16 v21, v22

    invoke-direct/range {v4 .. v21}, Lcom/flurry/sdk/bk;-><init>(Ljava/lang/String;Ljava/lang/String;ZZJJLjava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;JLcom/flurry/sdk/eh;Z)V

    .line 5301
    iget-object v2, v2, Lcom/flurry/sdk/bk;->a:[B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 636
    :try_start_4
    sget-object v4, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception while generating report: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/flurry/sdk/dc;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    .line 640
    sget-object v2, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    const-string v3, "Error generating report"

    invoke-static {v2, v3}, Lcom/flurry/sdk/dc;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 642
    :cond_2
    sget-object v4, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "generated report of size "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/flurry/sdk/bp;->t:Ljava/util/List;

    .line 643
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " reports."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 642
    invoke-static {v3, v4, v5}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 647
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v3

    .line 6148
    iget-object v3, v3, Lcom/flurry/sdk/y;->b:Lcom/flurry/sdk/bl;

    .line 648
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/flurry/sdk/cm;->b()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 649
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v5

    .line 7075
    iget-object v5, v5, Lcom/flurry/sdk/cl;->b:Ljava/lang/String;

    .line 7077
    invoke-virtual {v3, v2, v5, v4}, Lcom/flurry/sdk/dp;->b([BLjava/lang/String;Ljava/lang/String;)V

    .line 7673
    :goto_1
    iget-object v2, v1, Lcom/flurry/sdk/bp;->t:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 7674
    iget-object v2, v1, Lcom/flurry/sdk/bp;->i:Lcom/flurry/sdk/cu;

    invoke-virtual {v2}, Lcom/flurry/sdk/cu;->b()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 654
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 611
    monitor-exit p0

    throw v2
.end method

.method static synthetic b(Lcom/flurry/sdk/bp;)Lcom/flurry/sdk/cw;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/flurry/sdk/bp;->J:Lcom/flurry/sdk/cw;

    return-object p0
.end method

.method private declared-synchronized b(J)V
    .locals 3

    monitor-enter p0

    .line 914
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/bp;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/bj;

    .line 30039
    iget-boolean v2, v1, Lcom/flurry/sdk/bj;->b:Z

    if-eqz v2, :cond_0

    .line 30043
    iget-boolean v2, v1, Lcom/flurry/sdk/bj;->c:Z

    if-nez v2, :cond_0

    .line 916
    invoke-virtual {v1, p1, p2}, Lcom/flurry/sdk/bj;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 919
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 913
    monitor-exit p0

    throw p1
.end method

.method static synthetic c(Lcom/flurry/sdk/bp;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/flurry/sdk/bp;->e()V

    return-void
.end method

.method private static d()Ljava/lang/String;
    .locals 5

    .line 396
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "logcat -d"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 398
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    .line 399
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 403
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const/16 v4, 0x3e8

    if-ge v2, v4, :cond_0

    .line 404
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 408
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x6

    .line 410
    sget-object v2, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "There was an issue grabbing logcat. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method static synthetic d(Lcom/flurry/sdk/bp;)V
    .locals 5

    .line 42589
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    .line 43103
    iget-object v0, v0, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    const-string v1, "FLURRY_SHARED_PREFERENCES"

    const/4 v2, 0x0

    .line 42590
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "com.flurry.sdk.previous_successful_report"

    .line 42592
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/flurry/sdk/bp;->j:Z

    const-string v1, "com.flurry.sdk.initial_run_time"

    .line 42594
    invoke-static {}, Lcom/flurry/sdk/br;->a()Lcom/flurry/sdk/br;

    invoke-static {}, Lcom/flurry/sdk/br;->d()J

    move-result-wide v2

    .line 42593
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/flurry/sdk/bp;->B:J

    const-string v1, "com.flurry.sdk.api_key"

    const-string v2, ""

    .line 42595
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/sdk/bp;->C:Ljava/lang/String;

    const-string v1, "com.flurry.sdk.variant_ids"

    const/4 v2, 0x0

    .line 42596
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/bp;->D:Ljava/lang/String;

    .line 42599
    iget-object v0, p0, Lcom/flurry/sdk/bp;->C:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/flurry/sdk/bp;->B:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 42602
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    .line 44075
    iget-object v0, v0, Lcom/flurry/sdk/cl;->b:Ljava/lang/String;

    .line 42602
    iput-object v0, p0, Lcom/flurry/sdk/bp;->C:Ljava/lang/String;

    return-void

    .line 42603
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/bp;->C:Ljava/lang/String;

    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v1

    .line 45075
    iget-object v1, v1, Lcom/flurry/sdk/cl;->b:Ljava/lang/String;

    .line 42603
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 42606
    invoke-static {}, Lcom/flurry/sdk/br;->a()Lcom/flurry/sdk/br;

    invoke-static {}, Lcom/flurry/sdk/br;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/sdk/bp;->B:J

    :cond_1
    return-void
.end method

.method private declared-synchronized e()V
    .locals 7

    monitor-enter p0

    .line 544
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/en;->a()V

    .line 546
    sget-object v0, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    const-string v1, "Loading persistent session report data."

    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 548
    iget-object v0, p0, Lcom/flurry/sdk/bp;->i:Lcom/flurry/sdk/cu;

    invoke-virtual {v0}, Lcom/flurry/sdk/cu;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 550
    iget-object v1, p0, Lcom/flurry/sdk/bp;->t:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 553
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/bp;->h:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 554
    sget-object v0, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    const-string v1, "Legacy persistent agent data found, converting."

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 556
    iget-object v0, p0, Lcom/flurry/sdk/bp;->h:Ljava/io/File;

    .line 557
    invoke-static {v0}, Lcom/flurry/sdk/ab;->a(Ljava/io/File;)Lcom/flurry/sdk/bq;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5025
    iget-boolean v1, v0, Lcom/flurry/sdk/bq;->b:Z

    .line 5029
    iget-wide v2, v0, Lcom/flurry/sdk/bq;->c:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    .line 565
    invoke-static {}, Lcom/flurry/sdk/br;->a()Lcom/flurry/sdk/br;

    invoke-static {}, Lcom/flurry/sdk/br;->d()J

    move-result-wide v2

    .line 568
    :cond_1
    iput-boolean v1, p0, Lcom/flurry/sdk/bp;->j:Z

    .line 569
    iput-wide v2, p0, Lcom/flurry/sdk/bp;->B:J

    .line 573
    invoke-direct {p0}, Lcom/flurry/sdk/bp;->f()V

    .line 5033
    iget-object v0, v0, Lcom/flurry/sdk/bq;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 577
    iget-object v1, p0, Lcom/flurry/sdk/bp;->t:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 581
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/bp;->h:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 583
    invoke-direct {p0}, Lcom/flurry/sdk/bp;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 586
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 543
    monitor-exit p0

    throw v0
.end method

.method static synthetic e(Lcom/flurry/sdk/bp;)V
    .locals 30

    .line 45293
    invoke-static {}, Lcom/flurry/sdk/en;->a()V

    .line 45295
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    .line 46103
    iget-object v0, v0, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    const-string v1, ".yflurrynativecrash"

    .line 45295
    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 45298
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ".*"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".dmp"

    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 45299
    invoke-static {v0, v1}, Lcom/flurry/sdk/em;->a(Ljava/io/File;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v1

    .line 45301
    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_6

    aget-object v5, v1, v4

    const/4 v6, 0x3

    .line 45304
    sget-object v7, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Native crash occurred in previous session! Found minidump file - "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 45307
    invoke-static {v0, v5}, Lcom/flurry/sdk/eq;->a(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 45309
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x6

    if-eqz v7, :cond_0

    .line 45311
    sget-object v7, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    const-string v10, "There was no breadcrumbs file associated with the minidump file."

    invoke-static {v9, v7, v10}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    .line 45315
    :goto_1
    sget-object v10, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Breadcrumbs file associated with minidump file - "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    invoke-static {v12, v10, v11}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 45317
    invoke-static {v6}, Lcom/flurry/sdk/eq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 45318
    invoke-static {v6}, Lcom/flurry/sdk/eq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 45320
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 45323
    sget-object v7, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "There is no session id specified with crash breadcrumbs file: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v7, v13}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    :cond_1
    const-wide/16 v13, 0x0

    .line 45328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 45331
    :try_start_0
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45332
    :try_start_1
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-wide/from16 v16, v17

    goto :goto_2

    :catch_0
    move-wide/from16 v17, v13

    .line 45334
    :catch_1
    sget-object v7, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "Issue parsing session id into start time: "

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v7, v10}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    move-wide v13, v15

    move-wide/from16 v16, v17

    const/4 v7, 0x1

    .line 45339
    :goto_2
    new-instance v10, Lcom/flurry/sdk/bh;

    const/16 v20, 0x1

    const-string v23, "native"

    const-string v24, ""

    const-string v25, ""

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v19, v10

    move-wide/from16 v21, v13

    invoke-direct/range {v19 .. v28}, Lcom/flurry/sdk/bh;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;Ljava/util/Map;)V

    .line 45342
    invoke-static {}, Lcom/flurry/sdk/bp;->d()Ljava/lang/String;

    move-result-object v11

    .line 46265
    iput-object v11, v10, Lcom/flurry/sdk/bh;->b:Ljava/lang/String;

    .line 45346
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 45348
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 45350
    new-instance v6, Lcom/flurry/sdk/eu;

    invoke-direct {v6, v11}, Lcom/flurry/sdk/eu;-><init>(Ljava/io/File;)V

    .line 45351
    invoke-virtual {v6}, Lcom/flurry/sdk/eu;->a()Ljava/util/List;

    move-result-object v6

    .line 45352
    sget-object v8, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v3, "Number of crash breadcrumbs - "

    invoke-direct {v15, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v8, v3}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 45353
    invoke-virtual {v10, v6}, Lcom/flurry/sdk/bh;->a(Ljava/util/List;)V

    .line 45356
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    goto :goto_3

    .line 45359
    :cond_2
    sget-object v3, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    const-string v6, "Breadcrumbs file does not exist."

    invoke-static {v9, v3, v6}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    .line 45364
    :goto_3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 45365
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v7, :cond_4

    .line 45368
    sget-object v5, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    const-string v6, "Some error occurred with minidump file. Deleting it."

    invoke-static {v9, v5, v6}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 45369
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_3
    move-object/from16 v5, p0

    goto :goto_4

    .line 45373
    :cond_4
    invoke-static {v3}, Lcom/flurry/sdk/em;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    .line 46277
    iput-object v5, v10, Lcom/flurry/sdk/bh;->c:Ljava/lang/String;

    .line 45377
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    const/4 v3, 0x0

    sub-long v18, v13, v16

    move-object/from16 v15, p0

    move-object/from16 v20, v10

    .line 45385
    invoke-direct/range {v15 .. v20}, Lcom/flurry/sdk/bp;->a(JJLcom/flurry/sdk/bh;)Lcom/flurry/sdk/bm;

    move-result-object v3

    if-eqz v3, :cond_3

    move-object/from16 v5, p0

    .line 45388
    iget-object v6, v5, Lcom/flurry/sdk/bp;->t:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    move-object/from16 v5, p0

    .line 45379
    sget-object v3, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    const-string v6, "Minidump file doesn\'t exist."

    invoke-static {v9, v3, v6}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private f()V
    .locals 4

    .line 657
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    .line 8103
    iget-object v0, v0, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    const-string v1, "FLURRY_SHARED_PREFERENCES"

    const/4 v2, 0x0

    .line 658
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 659
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.flurry.sdk.previous_successful_report"

    .line 661
    iget-boolean v2, p0, Lcom/flurry/sdk/bp;->j:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "com.flurry.sdk.initial_run_time"

    .line 662
    iget-wide v2, p0, Lcom/flurry/sdk/bp;->B:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "com.flurry.sdk.api_key"

    .line 663
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v2

    .line 9075
    iget-object v2, v2, Lcom/flurry/sdk/cl;->b:Ljava/lang/String;

    .line 663
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 664
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static synthetic f(Lcom/flurry/sdk/bp;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/flurry/sdk/bp;->f()V

    return-void
.end method

.method private declared-synchronized g()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x4

    .line 668
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    const-string v2, "Saving persistent agent data."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 669
    iget-object v0, p0, Lcom/flurry/sdk/bp;->i:Lcom/flurry/sdk/cu;

    iget-object v1, p0, Lcom/flurry/sdk/bp;->t:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/cu;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 670
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 667
    monitor-exit p0

    throw v0
.end method

.method static synthetic g(Lcom/flurry/sdk/bp;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/flurry/sdk/bp;->p:Z

    return p0
.end method

.method private declared-synchronized h()V
    .locals 14

    monitor-enter p0

    const/4 v0, 0x0

    .line 708
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/bp;->a(Z)V

    .line 711
    invoke-static {}, Lcom/flurry/sdk/br;->a()Lcom/flurry/sdk/br;

    .line 712
    invoke-static {}, Lcom/flurry/sdk/br;->d()J

    move-result-wide v3

    .line 713
    invoke-static {}, Lcom/flurry/sdk/br;->f()J

    move-result-wide v5

    .line 714
    invoke-static {}, Lcom/flurry/sdk/br;->h()J

    move-result-wide v7

    .line 715
    invoke-static {}, Lcom/flurry/sdk/br;->l()I

    move-result v0

    add-int/lit8 v9, v0, -0x1

    .line 716
    invoke-static {}, Lcom/flurry/sdk/br;->i()Ljava/lang/String;

    move-result-object v10

    .line 717
    invoke-static {}, Lcom/flurry/sdk/br;->j()Ljava/lang/String;

    move-result-object v11

    .line 718
    invoke-static {}, Lcom/flurry/sdk/br;->k()Ljava/util/Map;

    move-result-object v12

    .line 722
    iget-boolean v0, p0, Lcom/flurry/sdk/bp;->p:Z

    if-eqz v0, :cond_0

    .line 723
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v0

    .line 11144
    iget-object v0, v0, Lcom/flurry/sdk/y;->a:Lcom/flurry/sdk/at;

    if-eqz v0, :cond_0

    .line 724
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/bp$3;

    invoke-direct {v1, p0, v3, v4}, Lcom/flurry/sdk/bp$3;-><init>(Lcom/flurry/sdk/bp;J)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/cl;->b(Ljava/lang/Runnable;)V

    .line 735
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/bp$4;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/bp$4;-><init>(Lcom/flurry/sdk/bp;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/cl;->b(Ljava/lang/Runnable;)V

    .line 744
    invoke-static {}, Lcom/flurry/sdk/bt;->a()Lcom/flurry/sdk/bt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/bt;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 745
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    new-instance v13, Lcom/flurry/sdk/bp$5;

    move-object v1, v13

    move-object v2, p0

    invoke-direct/range {v1 .. v12}, Lcom/flurry/sdk/bp$5;-><init>(Lcom/flurry/sdk/bp;JJJILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v13}, Lcom/flurry/sdk/cl;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 769
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 707
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Ljava/util/Map;ZI)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZI)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 1082
    :try_start_0
    sget-object v3, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventRecorded:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 1084
    iget-boolean v4, v1, Lcom/flurry/sdk/bp;->p:Z

    if-nez v4, :cond_0

    .line 1085
    sget-object v2, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventAnalyticsDisabled:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 1086
    sget-object v3, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    const-string v4, "Analytics has been disabled, not logging event."

    invoke-static {v3, v4}, Lcom/flurry/sdk/dc;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1087
    monitor-exit p0

    return-object v2

    .line 1090
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1091
    invoke-static {}, Lcom/flurry/sdk/br;->a()Lcom/flurry/sdk/br;

    invoke-static {}, Lcom/flurry/sdk/br;->e()J

    move-result-wide v6

    const/4 v8, 0x0

    sub-long v13, v4, v6

    .line 1093
    invoke-static/range {p1 .. p1}, Lcom/flurry/sdk/en;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1094
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 1095
    sget-object v2, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1096
    monitor-exit p0

    return-object v2

    .line 1098
    :cond_1
    :try_start_2
    iget-object v5, v1, Lcom/flurry/sdk/bp;->w:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/flurry/sdk/bi;

    const/4 v6, 0x1

    if-nez v5, :cond_3

    .line 1100
    iget-object v5, v1, Lcom/flurry/sdk/bp;->w:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    sget v7, Lcom/flurry/sdk/bp;->b:I

    if-ge v5, v7, :cond_2

    .line 1101
    new-instance v5, Lcom/flurry/sdk/bi;

    invoke-direct {v5}, Lcom/flurry/sdk/bi;-><init>()V

    .line 1102
    iput v6, v5, Lcom/flurry/sdk/bi;->a:I

    .line 1103
    iget-object v6, v1, Lcom/flurry/sdk/bp;->w:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    sget-object v5, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Event count started: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/flurry/sdk/dc;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1106
    :cond_2
    sget-object v3, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Too many different events. Event not counted: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/flurry/sdk/dc;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    sget-object v3, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventUniqueCountExceeded:Lcom/flurry/android/FlurryEventRecordStatus;

    goto :goto_0

    .line 1111
    :cond_3
    iget v3, v5, Lcom/flurry/sdk/bi;->a:I

    add-int/2addr v3, v6

    iput v3, v5, Lcom/flurry/sdk/bi;->a:I

    .line 1112
    sget-object v3, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Event count incremented: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/flurry/sdk/dc;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    sget-object v3, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventRecorded:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 1116
    :goto_0
    iget-boolean v5, v1, Lcom/flurry/sdk/bp;->k:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_9

    iget-object v5, v1, Lcom/flurry/sdk/bp;->x:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sget v7, Lcom/flurry/sdk/bp;->d:I

    if-ge v5, v7, :cond_9

    iget v5, v1, Lcom/flurry/sdk/bp;->G:I

    sget v7, Lcom/flurry/sdk/bp;->e:I

    if-ge v5, v7, :cond_9

    if-nez p2, :cond_4

    .line 1118
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    goto :goto_1

    :cond_4
    move-object/from16 v3, p2

    .line 1120
    :goto_1
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v5

    sub-int v5, v5, p4

    sget v7, Lcom/flurry/sdk/bp;->c:I

    if-le v5, v7, :cond_5

    .line 1121
    sget-object v4, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "MaxEventParams exceeded: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1122
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    sub-int v3, v3, p4

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1121
    invoke-static {v4, v2}, Lcom/flurry/sdk/dc;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    sget-object v3, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventParamsCountExceeded:Lcom/flurry/android/FlurryEventRecordStatus;

    goto/16 :goto_2

    .line 1126
    :cond_5
    new-instance v2, Lcom/flurry/sdk/bj;

    .line 30194
    iget-object v5, v1, Lcom/flurry/sdk/bp;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v10

    move-object v9, v2

    move-object v11, v4

    move-object v12, v3

    move/from16 v15, p3

    .line 1126
    invoke-direct/range {v9 .. v15}, Lcom/flurry/sdk/bj;-><init>(ILjava/lang/String;Ljava/util/Map;JZ)V

    .line 31075
    invoke-virtual {v2}, Lcom/flurry/sdk/bj;->b()[B

    move-result-object v5

    array-length v5, v5

    .line 1129
    iget v7, v1, Lcom/flurry/sdk/bp;->G:I

    add-int/2addr v5, v7

    sget v7, Lcom/flurry/sdk/bp;->e:I

    if-gt v5, v7, :cond_8

    .line 1130
    iget-object v5, v1, Lcom/flurry/sdk/bp;->x:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1131
    iget v5, v1, Lcom/flurry/sdk/bp;->G:I

    .line 32075
    invoke-virtual {v2}, Lcom/flurry/sdk/bj;->b()[B

    move-result-object v6

    array-length v6, v6

    add-int/2addr v5, v6

    .line 1131
    iput v5, v1, Lcom/flurry/sdk/bp;->G:I

    .line 1132
    sget-object v5, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventRecorded:Lcom/flurry/android/FlurryEventRecordStatus;

    const-string v6, "Flurry.purchase"

    .line 1135
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 32181
    invoke-virtual {v2}, Lcom/flurry/sdk/bj;->a()Ljava/util/Map;

    move-result-object v6

    const-string v7, "fl.OrderJSON"

    .line 32182
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "fl.OrderJSONSignature"

    .line 32183
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v7, :cond_6

    if-eqz v8, :cond_6

    const-string v9, "fl.OrderJSON"

    .line 32185
    invoke-interface {v6, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "fl.OrderJSONSignature"

    .line 32186
    invoke-interface {v6, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32187
    invoke-virtual {v2, v6}, Lcom/flurry/sdk/bj;->b(Ljava/util/Map;)V

    .line 32188
    iget-object v2, v1, Lcom/flurry/sdk/bp;->z:Ljava/util/List;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0xa

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1143
    :cond_6
    iget-boolean v2, v1, Lcom/flurry/sdk/bp;->p:Z

    if-eqz v2, :cond_7

    .line 1144
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v2

    .line 33144
    iget-object v2, v2, Lcom/flurry/sdk/y;->a:Lcom/flurry/sdk/at;

    if-eqz v2, :cond_7

    .line 1145
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v2

    new-instance v6, Lcom/flurry/sdk/bp$8;

    invoke-direct {v6, v1, v4, v3}, Lcom/flurry/sdk/bp$8;-><init>(Lcom/flurry/sdk/bp;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v2, v6}, Lcom/flurry/sdk/cl;->b(Ljava/lang/Runnable;)V

    :cond_7
    move-object v3, v5

    goto :goto_2

    .line 1155
    :cond_8
    sget v2, Lcom/flurry/sdk/bp;->e:I

    iput v2, v1, Lcom/flurry/sdk/bp;->G:I

    .line 1156
    iput-boolean v6, v1, Lcom/flurry/sdk/bp;->F:Z

    .line 1158
    sget-object v2, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    const-string v3, "Event Log size exceeded. No more event details logged."

    invoke-static {v2, v3}, Lcom/flurry/sdk/dc;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    sget-object v3, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventLogCountExceeded:Lcom/flurry/android/FlurryEventRecordStatus;

    goto :goto_2

    .line 1165
    :cond_9
    iput-boolean v6, v1, Lcom/flurry/sdk/bp;->F:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1175
    :goto_2
    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 1081
    monitor-exit p0

    throw v2
.end method

.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 679
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/el;->a()I

    move-result v0

    iput v0, p0, Lcom/flurry/sdk/bp;->E:I

    .line 681
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v0

    .line 9152
    iget-object v0, v0, Lcom/flurry/sdk/y;->c:Lcom/flurry/sdk/av;

    if-eqz v0, :cond_0

    .line 682
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/bp$17;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/bp$17;-><init>(Lcom/flurry/sdk/bp;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/cl;->b(Ljava/lang/Runnable;)V

    .line 691
    :cond_0
    iget-boolean v0, p0, Lcom/flurry/sdk/bp;->p:Z

    if-eqz v0, :cond_1

    .line 692
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v0

    .line 10144
    iget-object v0, v0, Lcom/flurry/sdk/y;->a:Lcom/flurry/sdk/at;

    if-eqz v0, :cond_1

    .line 693
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/bp$2;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/bp$2;-><init>(Lcom/flurry/sdk/bp;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/cl;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 701
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 678
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(J)V
    .locals 16

    move-object/from16 v13, p0

    monitor-enter p0

    .line 968
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/cx;->a()Lcom/flurry/sdk/cx;

    move-result-object v1

    iget-object v2, v13, Lcom/flurry/sdk/bp;->q:Lcom/flurry/sdk/cw;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/cx;->a(Lcom/flurry/sdk/cw;)V

    .line 970
    invoke-static {}, Lcom/flurry/sdk/br;->a()Lcom/flurry/sdk/br;

    invoke-static {}, Lcom/flurry/sdk/br;->f()J

    move-result-wide v1

    invoke-direct {v13, v1, v2}, Lcom/flurry/sdk/bp;->b(J)V

    .line 972
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/bp$6;

    invoke-direct {v2, v13}, Lcom/flurry/sdk/bp$6;-><init>(Lcom/flurry/sdk/bp;)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/cl;->b(Ljava/lang/Runnable;)V

    .line 994
    invoke-static {}, Lcom/flurry/sdk/bt;->a()Lcom/flurry/sdk/bt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/bt;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 996
    invoke-static {}, Lcom/flurry/sdk/br;->a()Lcom/flurry/sdk/br;

    .line 997
    invoke-static {}, Lcom/flurry/sdk/br;->f()J

    move-result-wide v5

    .line 998
    invoke-static {}, Lcom/flurry/sdk/br;->h()J

    move-result-wide v7

    .line 999
    invoke-static {}, Lcom/flurry/sdk/br;->l()I

    move-result v1

    add-int/lit8 v9, v1, -0x1

    .line 1000
    invoke-static {}, Lcom/flurry/sdk/br;->i()Ljava/lang/String;

    move-result-object v10

    .line 1001
    invoke-static {}, Lcom/flurry/sdk/br;->j()Ljava/lang/String;

    move-result-object v11

    .line 1002
    invoke-static {}, Lcom/flurry/sdk/br;->k()Ljava/util/Map;

    move-result-object v12

    .line 1004
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v14

    new-instance v15, Lcom/flurry/sdk/bp$7;

    move-object v1, v15

    move-object v2, v13

    move-wide/from16 v3, p1

    invoke-direct/range {v1 .. v12}, Lcom/flurry/sdk/bp$7;-><init>(Lcom/flurry/sdk/bp;JJJILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v14, v15}, Lcom/flurry/sdk/cl;->b(Ljava/lang/Runnable;)V

    .line 1016
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/eh;

    move-result-object v1

    const-string v2, "Gender"

    invoke-virtual {v1, v2, v13}, Lcom/flurry/sdk/eh;->b(Ljava/lang/String;Lcom/flurry/sdk/ei$a;)Z

    .line 1018
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/eh;

    move-result-object v1

    const-string v2, "UserId"

    invoke-virtual {v1, v2, v13}, Lcom/flurry/sdk/eh;->b(Ljava/lang/String;Lcom/flurry/sdk/ei$a;)Z

    .line 1020
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/eh;

    move-result-object v1

    const-string v2, "Age"

    invoke-virtual {v1, v2, v13}, Lcom/flurry/sdk/eh;->b(Ljava/lang/String;Lcom/flurry/sdk/ei$a;)Z

    .line 1021
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/eh;

    move-result-object v1

    const-string v2, "LogEvents"

    invoke-virtual {v1, v2, v13}, Lcom/flurry/sdk/eh;->b(Ljava/lang/String;Lcom/flurry/sdk/ei$a;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1023
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 967
    monitor-exit p0

    throw v1
.end method

.method final a(Landroid/content/Context;)V
    .locals 7

    .line 428
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 429
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 432
    sget-object v0, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Launch Options Bundle is present "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 432
    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 434
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 439
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 440
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const-string v3, "null"

    .line 442
    :goto_1
    iget-object v4, p0, Lcom/flurry/sdk/bp;->u:Ljava/util/Map;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    sget-object v4, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Launch options Key: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Its value: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v4, v1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final declared-synchronized a(Lcom/flurry/sdk/w;)V
    .locals 13

    monitor-enter p0

    .line 37033
    :try_start_0
    iget-object v0, p1, Lcom/flurry/sdk/w;->a:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string v0, "uncaught"

    .line 38033
    iget-object v3, p1, Lcom/flurry/sdk/w;->a:Ljava/lang/String;

    .line 1240
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1242
    :goto_0
    iget v3, p0, Lcom/flurry/sdk/bp;->H:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/flurry/sdk/bp;->H:I

    .line 1243
    iget-object v2, p0, Lcom/flurry/sdk/bp;->y:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sget v3, Lcom/flurry/sdk/bp;->f:I

    if-ge v2, v3, :cond_1

    .line 1244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1245
    new-instance v11, Lcom/flurry/sdk/bh;

    .line 38278
    iget-object v1, p0, Lcom/flurry/sdk/bp;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    .line 1245
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 39033
    iget-object v5, p1, Lcom/flurry/sdk/w;->a:Ljava/lang/String;

    .line 39037
    iget-object v6, p1, Lcom/flurry/sdk/w;->b:Ljava/lang/String;

    .line 39041
    iget-object v7, p1, Lcom/flurry/sdk/w;->c:Ljava/lang/String;

    .line 39045
    iget-object v8, p1, Lcom/flurry/sdk/w;->d:Ljava/lang/Throwable;

    .line 39049
    iget-object v9, p1, Lcom/flurry/sdk/w;->e:Ljava/util/Map;

    .line 39053
    iget-object v10, p1, Lcom/flurry/sdk/w;->f:Ljava/util/Map;

    move-object v1, v11

    .line 1248
    invoke-direct/range {v1 .. v10}, Lcom/flurry/sdk/bh;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;Ljava/util/Map;)V

    .line 39057
    iget-object p1, p1, Lcom/flurry/sdk/w;->g:Ljava/util/List;

    .line 1250
    invoke-virtual {v11, p1}, Lcom/flurry/sdk/bh;->a(Ljava/util/List;)V

    .line 1252
    iget-object p1, p0, Lcom/flurry/sdk/bp;->y:Ljava/util/List;

    invoke-interface {p1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1254
    sget-object p1, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error logged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39225
    iget-object v1, v11, Lcom/flurry/sdk/bh;->a:Ljava/lang/String;

    .line 1254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/flurry/sdk/dc;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1255
    monitor-exit p0

    return-void

    :cond_1
    if-eqz v0, :cond_4

    .line 1258
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/bp;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 1259
    iget-object v0, p0, Lcom/flurry/sdk/bp;->y:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/bh;

    .line 40225
    iget-object v2, v0, Lcom/flurry/sdk/bh;->a:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v2, "uncaught"

    .line 41225
    iget-object v0, v0, Lcom/flurry/sdk/bh;->a:Ljava/lang/String;

    .line 1261
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1263
    new-instance v12, Lcom/flurry/sdk/bh;

    .line 41278
    iget-object v2, p0, Lcom/flurry/sdk/bp;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    .line 1263
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 42033
    iget-object v6, p1, Lcom/flurry/sdk/w;->a:Ljava/lang/String;

    .line 42037
    iget-object v7, p1, Lcom/flurry/sdk/w;->b:Ljava/lang/String;

    .line 42041
    iget-object v8, p1, Lcom/flurry/sdk/w;->c:Ljava/lang/String;

    .line 42045
    iget-object v9, p1, Lcom/flurry/sdk/w;->d:Ljava/lang/Throwable;

    .line 42049
    iget-object v10, p1, Lcom/flurry/sdk/w;->e:Ljava/util/Map;

    .line 42053
    iget-object v11, p1, Lcom/flurry/sdk/w;->f:Ljava/util/Map;

    move-object v2, v12

    .line 1266
    invoke-direct/range {v2 .. v11}, Lcom/flurry/sdk/bh;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;Ljava/util/Map;)V

    .line 42057
    iget-object p1, p1, Lcom/flurry/sdk/w;->g:Ljava/util/List;

    .line 1267
    invoke-virtual {v12, p1}, Lcom/flurry/sdk/bh;->a(Ljava/util/List;)V

    .line 1268
    iget-object p1, p0, Lcom/flurry/sdk/bp;->y:Ljava/util/List;

    invoke-interface {p1, v1, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1269
    monitor-exit p0

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1258
    :cond_3
    monitor-exit p0

    return-void

    .line 1273
    :cond_4
    :try_start_2
    sget-object p1, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    const-string v0, "Max errors logged. No more errors logged."

    invoke-static {p1, v0}, Lcom/flurry/sdk/dc;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1275
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1238
    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1027
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "Gender"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "Age"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "LogEvents"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "analyticsEnabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_4
    const-string v0, "UserId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x6

    .line 1050
    sget-object p2, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    const-string v0, "onSettingUpdate internal error!"

    invoke-static {p1, p2, v0}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1045
    :pswitch_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/flurry/sdk/bp;->p:Z

    .line 1046
    sget-object p1, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onSettingUpdate, AnalyticsEnabled = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/flurry/sdk/bp;->p:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1041
    :pswitch_1
    check-cast p2, Ljava/lang/Long;

    iput-object p2, p0, Lcom/flurry/sdk/bp;->n:Ljava/lang/Long;

    .line 1042
    sget-object p1, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onSettingUpdate, Birthdate = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/bp;->n:Ljava/lang/Long;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1037
    :pswitch_2
    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    iput-byte p1, p0, Lcom/flurry/sdk/bp;->m:B

    .line 1038
    sget-object p1, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onSettingUpdate, Gender = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v0, p0, Lcom/flurry/sdk/bp;->m:B

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1033
    :pswitch_3
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/flurry/sdk/bp;->l:Ljava/lang/String;

    .line 1034
    sget-object p1, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onSettingUpdate, UserId = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/bp;->l:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1029
    :pswitch_4
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/flurry/sdk/bp;->k:Z

    .line 1030
    sget-object p1, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onSettingUpdate, LogEvents = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/flurry/sdk/bp;->k:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x686fe59a -> :sswitch_4
        -0x66855b25 -> :sswitch_3
        -0x2bfdf2a3 -> :sswitch_2
        0x100df -> :sswitch_1
        0x7eeadee1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1199
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/bp;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/bj;

    .line 34047
    iget-boolean v2, v1, Lcom/flurry/sdk/bj;->b:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-wide v4, v1, Lcom/flurry/sdk/bj;->d:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/flurry/sdk/bj;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_0

    .line 1201
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1202
    invoke-static {}, Lcom/flurry/sdk/br;->a()Lcom/flurry/sdk/br;

    invoke-static {}, Lcom/flurry/sdk/br;->e()J

    move-result-wide v6

    const/4 p1, 0x0

    sub-long v8, v4, v6

    if-eqz p2, :cond_4

    .line 1204
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_4

    iget p1, p0, Lcom/flurry/sdk/bp;->G:I

    sget v0, Lcom/flurry/sdk/bp;->e:I

    if-ge p1, v0, :cond_4

    .line 1206
    iget p1, p0, Lcom/flurry/sdk/bp;->G:I

    .line 34075
    invoke-virtual {v1}, Lcom/flurry/sdk/bj;->b()[B

    move-result-object v0

    array-length v0, v0

    sub-int/2addr p1, v0

    .line 1208
    new-instance v0, Ljava/util/HashMap;

    .line 1209
    invoke-virtual {v1}, Lcom/flurry/sdk/bj;->a()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1210
    invoke-virtual {v1, p2}, Lcom/flurry/sdk/bj;->a(Ljava/util/Map;)V

    .line 35075
    invoke-virtual {v1}, Lcom/flurry/sdk/bj;->b()[B

    move-result-object p2

    array-length p2, p2

    add-int/2addr p2, p1

    .line 1212
    sget v2, Lcom/flurry/sdk/bp;->e:I

    if-gt p2, v2, :cond_3

    .line 1213
    invoke-virtual {v1}, Lcom/flurry/sdk/bj;->a()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    sget v2, Lcom/flurry/sdk/bp;->c:I

    if-le p2, v2, :cond_2

    .line 1214
    sget-object p1, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "MaxEventParams exceeded on endEvent: "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1215
    invoke-virtual {v1}, Lcom/flurry/sdk/bj;->a()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1214
    invoke-static {p1, p2}, Lcom/flurry/sdk/dc;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    invoke-virtual {v1, v0}, Lcom/flurry/sdk/bj;->b(Ljava/util/Map;)V

    goto :goto_1

    .line 36075
    :cond_2
    invoke-virtual {v1}, Lcom/flurry/sdk/bj;->b()[B

    move-result-object p2

    array-length p2, p2

    add-int/2addr p1, p2

    .line 1219
    iput p1, p0, Lcom/flurry/sdk/bp;->G:I

    goto :goto_1

    .line 1223
    :cond_3
    invoke-virtual {v1, v0}, Lcom/flurry/sdk/bj;->b(Ljava/util/Map;)V

    .line 1224
    iput-boolean v3, p0, Lcom/flurry/sdk/bp;->F:Z

    .line 1225
    sget p1, Lcom/flurry/sdk/bp;->e:I

    iput p1, p0, Lcom/flurry/sdk/bp;->G:I

    .line 1227
    sget-object p1, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    const-string p2, "Event Log size exceeded. No more event details logged."

    invoke-static {p1, p2}, Lcom/flurry/sdk/dc;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    :cond_4
    :goto_1
    invoke-virtual {v1, v8, v9}, Lcom/flurry/sdk/bj;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1233
    monitor-exit p0

    return-void

    .line 1236
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1198
    monitor-exit p0

    throw p1
.end method

.method final a(Z)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    if-eqz p1, :cond_1

    .line 455
    iget-object v0, p0, Lcom/flurry/sdk/bp;->v:Ljava/util/Map;

    const-string v1, "boot.time"

    .line 456
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v6, v2, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 455
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 460
    new-instance v1, Landroid/os/StatFs;

    .line 461
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 462
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_0

    .line 463
    iget-object v2, p0, Lcom/flurry/sdk/bp;->v:Ljava/util/Map;

    const-string v3, "disk.size.total.internal"

    .line 464
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 463
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    iget-object v2, p0, Lcom/flurry/sdk/bp;->v:Ljava/util/Map;

    const-string v3, "disk.size.available.internal"

    .line 466
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 465
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    iget-object v0, p0, Lcom/flurry/sdk/bp;->v:Ljava/util/Map;

    const-string v2, "disk.size.total.external"

    .line 469
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 468
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    iget-object v0, p0, Lcom/flurry/sdk/bp;->v:Ljava/util/Map;

    const-string v2, "disk.size.available.external"

    .line 471
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 470
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 473
    :cond_0
    iget-object v2, p0, Lcom/flurry/sdk/bp;->v:Ljava/util/Map;

    const-string v3, "disk.size.total.internal"

    .line 474
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 473
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    iget-object v2, p0, Lcom/flurry/sdk/bp;->v:Ljava/util/Map;

    const-string v3, "disk.size.available.internal"

    .line 476
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 475
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    iget-object v0, p0, Lcom/flurry/sdk/bp;->v:Ljava/util/Map;

    const-string v2, "disk.size.total.external"

    .line 479
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 478
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    iget-object v0, p0, Lcom/flurry/sdk/bp;->v:Ljava/util/Map;

    const-string v2, "disk.size.available.external"

    .line 481
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 480
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    :goto_0
    iget-object v0, p0, Lcom/flurry/sdk/bp;->v:Ljava/util/Map;

    const-string v1, "carrier.name"

    .line 486
    invoke-static {}, Lcom/flurry/sdk/ca;->a()Lcom/flurry/sdk/ca;

    invoke-static {}, Lcom/flurry/sdk/ca;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    iget-object v0, p0, Lcom/flurry/sdk/bp;->v:Ljava/util/Map;

    const-string v1, "carrier.details"

    .line 488
    invoke-static {}, Lcom/flurry/sdk/ca;->a()Lcom/flurry/sdk/ca;

    invoke-static {}, Lcom/flurry/sdk/ca;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    .line 2103
    iget-object v0, v0, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    const-string v1, "activity"

    .line 494
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 495
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 496
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 498
    iget-object v0, p0, Lcom/flurry/sdk/bp;->v:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "memory.available"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const-string v3, ".start"

    goto :goto_1

    :cond_2
    const-string v3, ".end"

    .line 499
    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 500
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 499
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_4

    .line 502
    iget-object v0, p0, Lcom/flurry/sdk/bp;->v:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "memory.total"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    const-string v3, ".start"

    goto :goto_2

    :cond_3
    const-string v3, ".end"

    .line 503
    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 504
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 503
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 512
    :try_start_0
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 514
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v4

    .line 3103
    iget-object v4, v4, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    const/4 v5, 0x0

    .line 514
    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_7

    const-string v4, "status"

    .line 517
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5

    if-ne v4, v0, :cond_6

    :cond_5
    const/4 v1, 0x1

    :cond_6
    const-string v4, "level"

    .line 521
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v5, "scale"

    .line 522
    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v2, v4

    goto :goto_4

    :catch_0
    move-exception v3

    goto :goto_3

    :catch_1
    move-exception v3

    const/4 v4, -0x1

    .line 525
    :goto_3
    sget-object v5, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error getting battery status: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v5, v3}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    move v2, v4

    :cond_7
    const/4 v3, -0x1

    :goto_4
    int-to-float v0, v2

    int-to-float v2, v3

    div-float/2addr v0, v2

    .line 529
    iget-object v2, p0, Lcom/flurry/sdk/bp;->v:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "battery.charging"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_8

    const-string v4, ".start"

    goto :goto_5

    :cond_8
    const-string v4, ".end"

    .line 530
    :goto_5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 531
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    .line 530
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    iget-object v1, p0, Lcom/flurry/sdk/bp;->v:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "battery.remaining"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_9

    const-string p1, ".start"

    goto :goto_6

    :cond_9
    const-string p1, ".end"

    .line 533
    :goto_6
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    .line 532
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    invoke-static {}, Lcom/flurry/sdk/db;->a()Lcom/flurry/sdk/db;

    move-result-object p1

    .line 4054
    iget-boolean p1, p1, Lcom/flurry/sdk/db;->b:Z

    if-eqz p1, :cond_b

    .line 537
    invoke-static {}, Lcom/flurry/sdk/db;->a()Lcom/flurry/sdk/db;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flurry/sdk/db;->b()Ljava/lang/String;

    move-result-object p1

    .line 538
    iget-object v0, p0, Lcom/flurry/sdk/bp;->v:Ljava/util/Map;

    const-string v1, "instantapp.name"

    if-eqz p1, :cond_a

    move-object v2, p1

    goto :goto_7

    :cond_a
    const-string v2, "instant app"

    :goto_7
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    sget-object v0, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "instantAppName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/flurry/sdk/dc;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public final declared-synchronized b()V
    .locals 1

    monitor-enter p0

    .line 704
    :try_start_0
    invoke-direct {p0}, Lcom/flurry/sdk/bp;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 705
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 703
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 1

    monitor-enter p0

    .line 1076
    :try_start_0
    iget v0, p0, Lcom/flurry/sdk/bp;->I:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/bp;->I:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1077
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 1075
    monitor-exit p0

    throw v0
.end method
