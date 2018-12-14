.class public Lcom/flurry/sdk/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ei$a;


# static fields
.field private static final e:Ljava/lang/String; = "at"


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:Lcom/flurry/sdk/cw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/cw<",
            "Lcom/flurry/sdk/bu;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/flurry/sdk/cw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/cw<",
            "Lcom/flurry/sdk/bv;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/flurry/sdk/cw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/cw<",
            "Lcom/flurry/sdk/by;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/flurry/sdk/dh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/dh<",
            "Lcom/flurry/sdk/af;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/flurry/sdk/dh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/dh<",
            "Lcom/flurry/sdk/ag;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/flurry/sdk/as;

.field private final i:Lcom/flurry/sdk/cr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/cr<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/aj;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/flurry/sdk/ba;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/flurry/sdk/cu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/cu<",
            "Lcom/flurry/sdk/ar;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/flurry/sdk/cu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/cu<",
            "Ljava/util/List<",
            "Lcom/flurry/sdk/ba;",
            ">;>;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Z

.field private q:J

.field private r:J

.field private s:Z

.field private t:Lcom/flurry/sdk/ag;

.field private u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Lcom/flurry/sdk/dh;

    const-string v1, "proton config request"

    new-instance v2, Lcom/flurry/sdk/bf;

    invoke-direct {v2}, Lcom/flurry/sdk/bf;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/dh;-><init>(Ljava/lang/String;Lcom/flurry/sdk/dx;)V

    iput-object v0, p0, Lcom/flurry/sdk/at;->f:Lcom/flurry/sdk/dh;

    .line 103
    new-instance v0, Lcom/flurry/sdk/dh;

    const-string v1, "proton config response"

    new-instance v2, Lcom/flurry/sdk/bg;

    invoke-direct {v2}, Lcom/flurry/sdk/bg;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/dh;-><init>(Ljava/lang/String;Lcom/flurry/sdk/dx;)V

    iput-object v0, p0, Lcom/flurry/sdk/at;->g:Lcom/flurry/sdk/dh;

    .line 105
    new-instance v0, Lcom/flurry/sdk/as;

    invoke-direct {v0}, Lcom/flurry/sdk/as;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/at;->h:Lcom/flurry/sdk/as;

    .line 106
    new-instance v0, Lcom/flurry/sdk/cr;

    invoke-direct {v0}, Lcom/flurry/sdk/cr;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/at;->i:Lcom/flurry/sdk/cr;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/at;->j:Ljava/util/List;

    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lcom/flurry/sdk/at;->o:Z

    const-wide/16 v1, 0x2710

    .line 115
    iput-wide v1, p0, Lcom/flurry/sdk/at;->q:J

    .line 120
    new-instance v1, Lcom/flurry/sdk/at$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/at$1;-><init>(Lcom/flurry/sdk/at;)V

    iput-object v1, p0, Lcom/flurry/sdk/at;->a:Ljava/lang/Runnable;

    .line 126
    new-instance v1, Lcom/flurry/sdk/at$4;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/at$4;-><init>(Lcom/flurry/sdk/at;)V

    iput-object v1, p0, Lcom/flurry/sdk/at;->b:Lcom/flurry/sdk/cw;

    .line 133
    new-instance v1, Lcom/flurry/sdk/at$5;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/at$5;-><init>(Lcom/flurry/sdk/at;)V

    iput-object v1, p0, Lcom/flurry/sdk/at;->c:Lcom/flurry/sdk/cw;

    .line 140
    new-instance v1, Lcom/flurry/sdk/at$6;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/at$6;-><init>(Lcom/flurry/sdk/at;)V

    iput-object v1, p0, Lcom/flurry/sdk/at;->d:Lcom/flurry/sdk/cw;

    .line 151
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/eh;

    move-result-object v1

    const-string v2, "ProtonEnabled"

    .line 153
    invoke-virtual {v1, v2}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/flurry/sdk/at;->m:Z

    const-string v2, "ProtonEnabled"

    .line 154
    invoke-virtual {v1, v2, p0}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;Lcom/flurry/sdk/ei$a;)V

    .line 155
    sget-object v2, Lcom/flurry/sdk/at;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initSettings, protonEnabled = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/flurry/sdk/at;->m:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v4, v2, v3}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string v2, "ProtonConfigUrl"

    .line 157
    invoke-virtual {v1, v2}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/flurry/sdk/at;->n:Ljava/lang/String;

    const-string v2, "ProtonConfigUrl"

    .line 158
    invoke-virtual {v1, v2, p0}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;Lcom/flurry/sdk/ei$a;)V

    .line 159
    sget-object v2, Lcom/flurry/sdk/at;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "initSettings, protonConfigUrl = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/flurry/sdk/at;->n:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v2, v3}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string v2, "analyticsEnabled"

    .line 161
    invoke-virtual {v1, v2}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/flurry/sdk/at;->o:Z

    const-string v2, "analyticsEnabled"

    .line 162
    invoke-virtual {v1, v2, p0}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;Lcom/flurry/sdk/ei$a;)V

    .line 163
    sget-object v1, Lcom/flurry/sdk/at;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initSettings, AnalyticsEnabled = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/flurry/sdk/at;->o:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lcom/flurry/sdk/cx;->a()Lcom/flurry/sdk/cx;

    move-result-object v1

    const-string v2, "com.flurry.android.sdk.IdProviderFinishedEvent"

    iget-object v3, p0, Lcom/flurry/sdk/at;->b:Lcom/flurry/sdk/cw;

    .line 166
    invoke-virtual {v1, v2, v3}, Lcom/flurry/sdk/cx;->a(Ljava/lang/String;Lcom/flurry/sdk/cw;)V

    .line 167
    invoke-static {}, Lcom/flurry/sdk/cx;->a()Lcom/flurry/sdk/cx;

    move-result-object v1

    const-string v2, "com.flurry.android.sdk.IdProviderUpdatedAdvertisingId"

    iget-object v3, p0, Lcom/flurry/sdk/at;->c:Lcom/flurry/sdk/cw;

    .line 168
    invoke-virtual {v1, v2, v3}, Lcom/flurry/sdk/cx;->a(Ljava/lang/String;Lcom/flurry/sdk/cw;)V

    .line 169
    invoke-static {}, Lcom/flurry/sdk/cx;->a()Lcom/flurry/sdk/cx;

    move-result-object v1

    const-string v2, "com.flurry.android.sdk.NetworkStateEvent"

    iget-object v3, p0, Lcom/flurry/sdk/at;->d:Lcom/flurry/sdk/cw;

    invoke-virtual {v1, v2, v3}, Lcom/flurry/sdk/cx;->a(Ljava/lang/String;Lcom/flurry/sdk/cw;)V

    .line 171
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v1

    .line 1103
    iget-object v1, v1, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    .line 172
    new-instance v2, Lcom/flurry/sdk/cu;

    .line 1995
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ".yflurryprotonconfig."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1996
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v4

    .line 2075
    iget-object v4, v4, Lcom/flurry/sdk/cl;->b:Ljava/lang/String;

    .line 1996
    invoke-static {v4}, Lcom/flurry/sdk/en;->g(Ljava/lang/String;)J

    move-result-wide v4

    const/16 v6, 0x10

    invoke-static {v4, v5, v6}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 172
    invoke-virtual {v1, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    const-string v4, ".yflurryprotonconfig."

    new-instance v5, Lcom/flurry/sdk/at$7;

    invoke-direct {v5, p0}, Lcom/flurry/sdk/at$7;-><init>(Lcom/flurry/sdk/at;)V

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/flurry/sdk/cu;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/ea;)V

    iput-object v2, p0, Lcom/flurry/sdk/at;->k:Lcom/flurry/sdk/cu;

    .line 183
    new-instance v2, Lcom/flurry/sdk/cu;

    .line 3000
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ".yflurryprotonreport."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3001
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v4

    .line 3075
    iget-object v4, v4, Lcom/flurry/sdk/cl;->b:Ljava/lang/String;

    .line 3001
    invoke-static {v4}, Lcom/flurry/sdk/en;->g(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5, v6}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 184
    invoke-virtual {v1, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v3, ".yflurryprotonreport."

    new-instance v4, Lcom/flurry/sdk/at$8;

    invoke-direct {v4, p0}, Lcom/flurry/sdk/at$8;-><init>(Lcom/flurry/sdk/at;)V

    invoke-direct {v2, v1, v3, v0, v4}, Lcom/flurry/sdk/cu;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/ea;)V

    iput-object v2, p0, Lcom/flurry/sdk/at;->l:Lcom/flurry/sdk/cu;

    .line 198
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/at$9;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/at$9;-><init>(Lcom/flurry/sdk/at;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/cl;->b(Ljava/lang/Runnable;)V

    .line 206
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/at$10;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/at$10;-><init>(Lcom/flurry/sdk/at;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/cl;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/at;J)J
    .locals 0

    .line 68
    iput-wide p1, p0, Lcom/flurry/sdk/at;->q:J

    return-wide p1
.end method

.method static synthetic a(Lcom/flurry/sdk/at;Lcom/flurry/sdk/ag;)Lcom/flurry/sdk/ag;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/flurry/sdk/at;->t:Lcom/flurry/sdk/ag;

    return-object p1
.end method

.method private declared-synchronized a(JZ[B)V
    .locals 3

    monitor-enter p0

    if-nez p4, :cond_0

    .line 738
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x4

    .line 741
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/at;->e:Ljava/lang/String;

    const-string v2, "Saving proton config response"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 743
    new-instance v0, Lcom/flurry/sdk/ar;

    invoke-direct {v0}, Lcom/flurry/sdk/ar;-><init>()V

    .line 9025
    iput-wide p1, v0, Lcom/flurry/sdk/ar;->a:J

    .line 9033
    iput-boolean p3, v0, Lcom/flurry/sdk/ar;->b:Z

    .line 9041
    iput-object p4, v0, Lcom/flurry/sdk/ar;->c:[B

    .line 748
    iget-object p1, p0, Lcom/flurry/sdk/at;->k:Lcom/flurry/sdk/cu;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cu;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 749
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 736
    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/flurry/sdk/at;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/flurry/sdk/at;->e()V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/at;JZ[B)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/sdk/at;->a(JZ[B)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/at;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, v0}, Lcom/flurry/sdk/at;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ag;)Z
    .locals 0

    .line 68
    invoke-static {p0}, Lcom/flurry/sdk/at;->b(Lcom/flurry/sdk/ag;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/flurry/sdk/at;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/flurry/sdk/at;->s:Z

    return p1
.end method

.method static synthetic b(Lcom/flurry/sdk/at;J)J
    .locals 0

    .line 68
    iput-wide p1, p0, Lcom/flurry/sdk/at;->r:J

    return-wide p1
.end method

.method private declared-synchronized b(J)V
    .locals 4

    monitor-enter p0

    .line 905
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/at;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 907
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 908
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/ba;

    .line 12082
    iget-wide v1, v1, Lcom/flurry/sdk/ba;->a:J

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 910
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 913
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 904
    monitor-exit p0

    throw p1
.end method

.method static synthetic b(Lcom/flurry/sdk/at;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/flurry/sdk/at;->l()V

    return-void
.end method

.method private declared-synchronized b(Ljava/lang/String;Ljava/util/Map;)V
    .locals 34
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

    move-object/from16 v1, p0

    move-object/from16 v11, p1

    move-object/from16 v2, p2

    monitor-enter p0

    .line 503
    :try_start_0
    sget-object v3, Lcom/flurry/sdk/at;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Event triggered: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x3

    invoke-static {v12, v3, v4}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 505
    iget-boolean v3, v1, Lcom/flurry/sdk/at;->o:Z

    if-nez v3, :cond_0

    .line 506
    sget-object v2, Lcom/flurry/sdk/at;->e:Ljava/lang/String;

    const-string v3, "Analytics and pulse have been disabled."

    invoke-static {v2, v3}, Lcom/flurry/sdk/dc;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    monitor-exit p0

    return-void

    .line 510
    :cond_0
    :try_start_1
    iget-object v3, v1, Lcom/flurry/sdk/at;->t:Lcom/flurry/sdk/ag;

    if-nez v3, :cond_1

    .line 511
    sget-object v2, Lcom/flurry/sdk/at;->e:Ljava/lang/String;

    const-string v3, "Config response is empty. No events to fire."

    invoke-static {v12, v2, v3}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 512
    monitor-exit p0

    return-void

    .line 515
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/flurry/sdk/en;->a()V

    .line 517
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_2

    .line 518
    monitor-exit p0

    return-void

    .line 522
    :cond_2
    :try_start_3
    iget-object v3, v1, Lcom/flurry/sdk/at;->i:Lcom/flurry/sdk/cr;

    invoke-virtual {v3, v11}, Lcom/flurry/sdk/cr;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_3

    .line 525
    sget-object v2, Lcom/flurry/sdk/at;->e:Ljava/lang/String;

    const-string v3, "No events to fire. Returning."

    invoke-static {v12, v2, v3}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 526
    monitor-exit p0

    return-void

    .line 529
    :cond_3
    :try_start_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 530
    sget-object v2, Lcom/flurry/sdk/at;->e:Ljava/lang/String;

    const-string v3, "No events to fire. Returning."

    invoke-static {v12, v2, v3}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 531
    monitor-exit p0

    return-void

    .line 534
    :cond_4
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    if-eqz v2, :cond_5

    const/4 v8, 0x1

    goto :goto_0

    :cond_5
    const/4 v8, 0x0

    :goto_0
    const/4 v9, -0x1

    .line 540
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v13, 0x26750b2e

    if-eq v10, v13, :cond_8

    const v13, 0x51bea0f9

    if-eq v10, v13, :cond_7

    const v13, 0x5e26fdf5

    if-eq v10, v13, :cond_6

    goto :goto_1

    :cond_6
    const-string v10, "flurry.session_start"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v9, 0x0

    goto :goto_1

    :cond_7
    const-string v10, "flurry.app_install"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v9, 0x2

    goto :goto_1

    :cond_8
    const-string v10, "flurry.session_end"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v9, 0x1

    :cond_9
    :goto_1
    packed-switch v9, :pswitch_data_0

    .line 551
    sget-object v9, Lcom/flurry/sdk/be;->d:Lcom/flurry/sdk/be;

    goto :goto_2

    .line 548
    :pswitch_0
    sget-object v9, Lcom/flurry/sdk/be;->a:Lcom/flurry/sdk/be;

    goto :goto_2

    .line 545
    :pswitch_1
    sget-object v9, Lcom/flurry/sdk/be;->c:Lcom/flurry/sdk/be;

    goto :goto_2

    .line 542
    :pswitch_2
    sget-object v9, Lcom/flurry/sdk/be;->b:Lcom/flurry/sdk/be;

    .line 554
    :goto_2
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 558
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/flurry/sdk/aj;

    .line 561
    instance-of v14, v13, Lcom/flurry/sdk/ak;

    if-eqz v14, :cond_11

    .line 562
    sget-object v14, Lcom/flurry/sdk/at;->e:Ljava/lang/String;

    const-string v15, "Event contains triggers."

    const/4 v6, 0x4

    invoke-static {v6, v14, v15}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 563
    move-object v14, v13

    check-cast v14, Lcom/flurry/sdk/ak;

    iget-object v14, v14, Lcom/flurry/sdk/ak;->d:[Ljava/lang/String;

    if-nez v14, :cond_a

    .line 568
    sget-object v15, Lcom/flurry/sdk/at;->e:Ljava/lang/String;

    const-string v7, "Template does not contain trigger values. Firing."

    invoke-static {v6, v15, v7}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_4
    const/4 v7, 0x1

    goto :goto_5

    .line 570
    :cond_a
    array-length v7, v14

    if-nez v7, :cond_b

    .line 571
    sget-object v7, Lcom/flurry/sdk/at;->e:Ljava/lang/String;

    const-string v15, "Template does not contain trigger values. Firing."

    invoke-static {v6, v7, v15}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    if-nez v2, :cond_c

    .line 575
    sget-object v7, Lcom/flurry/sdk/at;->e:Ljava/lang/String;

    const-string v13, "Publisher has not passed in params list. Not firing."

    invoke-static {v6, v7, v13}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    const/4 v7, 0x0

    .line 580
    :goto_5
    move-object v15, v13

    check-cast v15, Lcom/flurry/sdk/ak;

    iget-object v15, v15, Lcom/flurry/sdk/ak;->c:Ljava/lang/String;

    .line 581
    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    if-nez v15, :cond_d

    .line 585
    sget-object v7, Lcom/flurry/sdk/at;->e:Ljava/lang/String;

    const-string v13, "Publisher params has no value associated with proton key. Not firing."

    invoke-static {v6, v7, v13}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 591
    :cond_d
    array-length v12, v14

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v12, :cond_f

    aget-object v2, v14, v6

    .line 592
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v7, 0x1

    goto :goto_7

    :cond_e
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, p2

    goto :goto_6

    :cond_f
    :goto_7
    if-nez v7, :cond_10

    .line 599
    sget-object v2, Lcom/flurry/sdk/at;->e:Ljava/lang/String;

    const-string v6, "Publisher params list does not match proton param values. Not firing."

    const/4 v7, 0x4

    invoke-static {v7, v2, v6}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 604
    :cond_10
    sget-object v2, Lcom/flurry/sdk/at;->e:Ljava/lang/String;

    const-string v6, "Publisher params match proton values. Firing."

    const/4 v7, 0x4

    invoke-static {v7, v2, v6}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 608
    :cond_11
    iget-object v2, v13, Lcom/flurry/sdk/aj;->b:Lcom/flurry/sdk/ad;

    if-nez v2, :cond_12

    .line 611
    sget-object v2, Lcom/flurry/sdk/at;->e:Ljava/lang/String;

    const-string v6, "Template is empty. Not firing current event."

    const/4 v7, 0x3

    invoke-static {v7, v2, v6}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_8
    move-object/from16 v2, p2

    const/4 v12, 0x3

    goto/16 :goto_3

    .line 615
    :cond_12
    sget-object v6, Lcom/flurry/sdk/at;->e:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v12, "Creating callback report for partner: "

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v2, Lcom/flurry/sdk/ad;->b:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x3

    invoke-static {v12, v6, v7}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 618
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v7, "event_name"

    .line 619
    invoke-interface {v6, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "event_time_millis"

    .line 621
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v7, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    iget-object v7, v1, Lcom/flurry/sdk/at;->h:Lcom/flurry/sdk/as;

    iget-object v12, v2, Lcom/flurry/sdk/ad;->e:Ljava/lang/String;

    .line 623
    invoke-virtual {v7, v12, v6}, Lcom/flurry/sdk/as;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v20

    const/4 v7, 0x0

    .line 627
    iget-object v12, v2, Lcom/flurry/sdk/ad;->f:Ljava/lang/String;

    if-eqz v12, :cond_13

    .line 628
    iget-object v7, v1, Lcom/flurry/sdk/at;->h:Lcom/flurry/sdk/as;

    iget-object v12, v2, Lcom/flurry/sdk/ad;->f:Ljava/lang/String;

    .line 629
    invoke-virtual {v7, v12, v6}, Lcom/flurry/sdk/as;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v29, v6

    goto :goto_9

    :cond_13
    move-object/from16 v29, v7

    .line 633
    :goto_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v12, 0xf731400

    add-long v21, v6, v12

    .line 636
    new-instance v6, Lcom/flurry/sdk/aw;

    iget-object v7, v2, Lcom/flurry/sdk/ad;->b:Ljava/lang/String;

    iget-wide v12, v2, Lcom/flurry/sdk/ad;->a:J

    iget-object v14, v1, Lcom/flurry/sdk/at;->t:Lcom/flurry/sdk/ag;

    iget-object v14, v14, Lcom/flurry/sdk/ag;->e:Lcom/flurry/sdk/ae;

    iget v14, v14, Lcom/flurry/sdk/ae;->b:I

    iget v15, v2, Lcom/flurry/sdk/ad;->g:I

    move-object/from16 v30, v3

    iget-object v3, v2, Lcom/flurry/sdk/ad;->d:Lcom/flurry/sdk/bd;

    move-wide/from16 v31, v4

    iget-object v4, v2, Lcom/flurry/sdk/ad;->j:Ljava/util/Map;

    iget v5, v2, Lcom/flurry/sdk/ad;->i:I

    move-object/from16 v33, v9

    iget v9, v2, Lcom/flurry/sdk/ad;->h:I

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-wide/from16 v18, v12

    move/from16 v23, v14

    move/from16 v24, v15

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    move/from16 v27, v5

    move/from16 v28, v9

    invoke-direct/range {v16 .. v29}, Lcom/flurry/sdk/aw;-><init>(Ljava/lang/String;JLjava/lang/String;JIILcom/flurry/sdk/bd;Ljava/util/Map;IILjava/lang/String;)V

    .line 643
    iget-wide v2, v2, Lcom/flurry/sdk/ad;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v10, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, v30

    move-wide/from16 v4, v31

    move-object/from16 v9, v33

    goto/16 :goto_8

    :cond_14
    move-object/from16 v33, v9

    .line 647
    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v2

    if-eqz v2, :cond_16

    .line 648
    new-instance v12, Lcom/flurry/sdk/ba;

    .line 651
    invoke-static {}, Lcom/flurry/sdk/br;->a()Lcom/flurry/sdk/br;

    invoke-static {}, Lcom/flurry/sdk/br;->d()J

    move-result-wide v5

    .line 652
    invoke-static {}, Lcom/flurry/sdk/br;->a()Lcom/flurry/sdk/br;

    invoke-static {}, Lcom/flurry/sdk/br;->g()J

    move-result-wide v13

    move-object v2, v12

    move-object v3, v11

    move v4, v8

    move-wide v7, v13

    move-object/from16 v9, v33

    invoke-direct/range {v2 .. v10}, Lcom/flurry/sdk/ba;-><init>(Ljava/lang/String;ZJJLcom/flurry/sdk/be;Ljava/util/Map;)V

    const-string v2, "flurry.session_end"

    .line 657
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 658
    sget-object v2, Lcom/flurry/sdk/at;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Storing Pulse callbacks for event: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v4, v2, v3}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 659
    iget-object v2, v1, Lcom/flurry/sdk/at;->j:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    .line 661
    :cond_15
    :try_start_6
    sget-object v2, Lcom/flurry/sdk/at;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Firing Pulse callbacks for event: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v4, v2, v3}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 662
    invoke-static {}, Lcom/flurry/sdk/az;->d()Lcom/flurry/sdk/az;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/flurry/sdk/az;->a(Lcom/flurry/sdk/ba;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 665
    :cond_16
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 502
    monitor-exit p0

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static b(Lcom/flurry/sdk/ag;)Z
    .locals 11

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 758
    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/ag;->e:Lcom/flurry/sdk/ae;

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eqz v1, :cond_6

    .line 9861
    iget-object v4, v1, Lcom/flurry/sdk/ae;->a:Ljava/util/List;

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    .line 9865
    :goto_0
    iget-object v5, v1, Lcom/flurry/sdk/ae;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 9866
    iget-object v5, v1, Lcom/flurry/sdk/ae;->a:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/flurry/sdk/ad;

    if-eqz v5, :cond_5

    .line 9868
    iget-object v6, v5, Lcom/flurry/sdk/ad;->b:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-wide v6, v5, Lcom/flurry/sdk/ad;->a:J

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    if-eqz v10, :cond_4

    iget-object v6, v5, Lcom/flurry/sdk/ad;->e:Ljava/lang/String;

    const-string v7, ""

    .line 9869
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v5, v5, Lcom/flurry/sdk/ad;->c:Ljava/util/List;

    if-eqz v5, :cond_3

    .line 9887
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/flurry/sdk/aj;

    .line 9888
    iget-object v7, v6, Lcom/flurry/sdk/aj;->a:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 9889
    sget-object v5, Lcom/flurry/sdk/at;->e:Ljava/lang/String;

    const-string v6, "An event is missing a name"

    invoke-static {v3, v5, v6}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v5, 0x0

    goto :goto_2

    .line 9893
    :cond_2
    instance-of v7, v6, Lcom/flurry/sdk/ak;

    if-eqz v7, :cond_1

    .line 9894
    check-cast v6, Lcom/flurry/sdk/ak;

    iget-object v6, v6, Lcom/flurry/sdk/ak;->c:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 9895
    sget-object v5, Lcom/flurry/sdk/at;->e:Ljava/lang/String;

    const-string v6, "An event trigger is missing a param name"

    invoke-static {v3, v5, v6}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v5, 0x1

    :goto_2
    if-nez v5, :cond_5

    .line 9871
    :cond_4
    sget-object v1, Lcom/flurry/sdk/at;->e:Ljava/lang/String;

    const-string v4, "A callback template is missing required values"

    invoke-static {v3, v1, v4}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_8

    .line 758
    iget-object v1, p0, Lcom/flurry/sdk/ag;->e:Lcom/flurry/sdk/ae;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/flurry/sdk/ag;->e:Lcom/flurry/sdk/ae;

    iget-object v1, v1, Lcom/flurry/sdk/ae;->e:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object p0, p0, Lcom/flurry/sdk/ag;->e:Lcom/flurry/sdk/ae;

    iget-object p0, p0, Lcom/flurry/sdk/ae;->e:Ljava/lang/String;

    const-string v1, ""

    .line 760
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_4

    :cond_7
    return v2

    .line 761
    :cond_8
    :goto_4
    sget-object p0, Lcom/flurry/sdk/at;->e:Ljava/lang/String;

    const-string v1, "Config response is missing required values."

    invoke-static {v3, p0, v1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method static synthetic c(Lcom/flurry/sdk/at;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/flurry/sdk/at;->m()V

    return-void
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .line 68
    sget-object v0, Lcom/flurry/sdk/at;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/flurry/sdk/at;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/flurry/sdk/at;->k()V

    return-void
.end method

.method static synthetic e(Lcom/flurry/sdk/at;)Lcom/flurry/sdk/dh;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/flurry/sdk/at;->g:Lcom/flurry/sdk/dh;

    return-object p0
.end method

.method private declared-synchronized e()V
    .locals 19

    move-object/from16 v1, p0

    monitor-enter p0

    .line 328
    :try_start_0
    iget-boolean v2, v1, Lcom/flurry/sdk/at;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 329
    monitor-exit p0

    return-void

    .line 332
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/en;->a()V

    .line 335
    iget-boolean v2, v1, Lcom/flurry/sdk/at;->p:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    .line 336
    monitor-exit p0

    return-void

    .line 340
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/flurry/sdk/bt;->a()Lcom/flurry/sdk/bt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/bt;->c()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_2

    .line 341
    monitor-exit p0

    return-void

    .line 345
    :cond_2
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 346
    invoke-static {}, Lcom/flurry/sdk/bt;->a()Lcom/flurry/sdk/bt;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/bt;->f()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    .line 349
    iget-object v6, v1, Lcom/flurry/sdk/at;->t:Lcom/flurry/sdk/ag;

    const/4 v7, 0x3

    if-eqz v6, :cond_6

    .line 351
    iget-boolean v6, v1, Lcom/flurry/sdk/at;->s:Z

    const/4 v8, 0x0

    if-eq v6, v4, :cond_3

    .line 352
    sget-object v5, Lcom/flurry/sdk/at;->e:Ljava/lang/String;

    const-string v6, "Limit ad tracking value has changed, purging"

    invoke-static {v7, v5, v6}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 353
    iput-object v8, v1, Lcom/flurry/sdk/at;->t:Lcom/flurry/sdk/ag;

    goto :goto_0

    .line 358
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v11, v1, Lcom/flurry/sdk/at;->r:J

    iget-object v6, v1, Lcom/flurry/sdk/at;->t:Lcom/flurry/sdk/ag;

    iget-wide v13, v6, Lcom/flurry/sdk/ag;->b:J

    const-wide/16 v15, 0x3e8

    mul-long v13, v13, v15

    add-long v17, v11, v13

    cmp-long v6, v9, v17

    if-gez v6, :cond_5

    .line 360
    sget-object v2, Lcom/flurry/sdk/at;->e:Ljava/lang/String;

    const-string v3, "Cached Proton config valid, no need to refresh"

    invoke-static {v7, v2, v3}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-boolean v2, v1, Lcom/flurry/sdk/at;->u:Z

    if-nez v2, :cond_4

    .line 362
    iput-boolean v5, v1, Lcom/flurry/sdk/at;->u:Z

    const-string v2, "flurry.session_start"

    .line 363
    invoke-direct {v1, v2, v8}, Lcom/flurry/sdk/at;->b(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 365
    :cond_4
    monitor-exit p0

    return-void

    .line 371
    :cond_5
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v9, v1, Lcom/flurry/sdk/at;->r:J

    iget-object v11, v1, Lcom/flurry/sdk/at;->t:Lcom/flurry/sdk/ag;

    iget-wide v11, v11, Lcom/flurry/sdk/ag;->c:J

    mul-long v11, v11, v15

    const/4 v13, 0x0

    add-long v13, v9, v11

    cmp-long v9, v5, v13

    if-ltz v9, :cond_6

    .line 373
    sget-object v5, Lcom/flurry/sdk/at;->e:Ljava/lang/String;

    const-string v6, "Cached Proton config expired, purging"

    invoke-static {v7, v5, v6}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 374
    iput-object v8, v1, Lcom/flurry/sdk/at;->t:Lcom/flurry/sdk/ag;

    .line 375
    iget-object v5, v1, Lcom/flurry/sdk/at;->i:Lcom/flurry/sdk/cr;

    invoke-virtual {v5}, Lcom/flurry/sdk/cr;->a()V

    .line 381
    :cond_6
    :goto_0
    invoke-static {}, Lcom/flurry/sdk/ch;->a()Lcom/flurry/sdk/ch;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/flurry/sdk/ch;->a(Ljava/lang/Object;)V

    .line 383
    sget-object v5, Lcom/flurry/sdk/at;->e:Ljava/lang/String;

    const-string v6, "Requesting proton config"

    invoke-static {v7, v5, v6}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-direct/range {p0 .. p0}, Lcom/flurry/sdk/at;->f()[B

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v5, :cond_7

    .line 389
    monitor-exit p0

    return-void

    .line 393
    :cond_7
    :try_start_5
    new-instance v6, Lcom/flurry/sdk/dj;

    invoke-direct {v6}, Lcom/flurry/sdk/dj;-><init>()V

    .line 394
    iget-object v7, v1, Lcom/flurry/sdk/at;->n:Ljava/lang/String;

    .line 395
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "https://proton.flurry.com/sdk/v1/config"

    goto :goto_1

    :cond_8
    iget-object v7, v1, Lcom/flurry/sdk/at;->n:Ljava/lang/String;

    .line 3077
    :goto_1
    iput-object v7, v6, Lcom/flurry/sdk/dl;->g:Ljava/lang/String;

    const/16 v7, 0x1388

    .line 4028
    iput v7, v6, Lcom/flurry/sdk/er;->u:I

    .line 397
    sget-object v7, Lcom/flurry/sdk/dl$a;->c:Lcom/flurry/sdk/dl$a;

    .line 4085
    iput-object v7, v6, Lcom/flurry/sdk/dl;->h:Lcom/flurry/sdk/dl$a;

    const-string v7, "application/x-flurry;version=2"

    const-string v8, "application/x-flurry;version=2"

    .line 403
    invoke-static {v5}, Lcom/flurry/sdk/dh;->a([B)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "Content-Type"

    .line 405
    invoke-virtual {v6, v10, v7}, Lcom/flurry/sdk/dj;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Accept"

    .line 406
    invoke-virtual {v6, v7, v8}, Lcom/flurry/sdk/dj;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "FM-Checksum"

    .line 407
    invoke-virtual {v6, v7, v9}, Lcom/flurry/sdk/dj;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    new-instance v7, Lcom/flurry/sdk/dt;

    invoke-direct {v7}, Lcom/flurry/sdk/dt;-><init>()V

    .line 5027
    iput-object v7, v6, Lcom/flurry/sdk/dj;->c:Lcom/flurry/sdk/dx;

    .line 409
    new-instance v7, Lcom/flurry/sdk/dt;

    invoke-direct {v7}, Lcom/flurry/sdk/dt;-><init>()V

    .line 5031
    iput-object v7, v6, Lcom/flurry/sdk/dj;->d:Lcom/flurry/sdk/dx;

    .line 6023
    iput-object v5, v6, Lcom/flurry/sdk/dj;->b:Ljava/lang/Object;

    .line 412
    new-instance v5, Lcom/flurry/sdk/at$2;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/flurry/sdk/at$2;-><init>(Lcom/flurry/sdk/at;JZ)V

    .line 6035
    iput-object v5, v6, Lcom/flurry/sdk/dj;->a:Lcom/flurry/sdk/dj$a;

    .line 499
    invoke-static {}, Lcom/flurry/sdk/ch;->a()Lcom/flurry/sdk/ch;

    move-result-object v2

    invoke-virtual {v2, v1, v6}, Lcom/flurry/sdk/ch;->a(Ljava/lang/Object;Lcom/flurry/sdk/er;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 500
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 327
    monitor-exit p0

    throw v2
.end method

.method static synthetic f(Lcom/flurry/sdk/at;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/flurry/sdk/at;->g()V

    return-void
.end method

.method private f()[B
    .locals 7

    .line 671
    :try_start_0
    new-instance v0, Lcom/flurry/sdk/af;

    invoke-direct {v0}, Lcom/flurry/sdk/af;-><init>()V

    .line 672
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v1

    .line 6075
    iget-object v1, v1, Lcom/flurry/sdk/cl;->b:Ljava/lang/String;

    .line 672
    iput-object v1, v0, Lcom/flurry/sdk/af;->a:Ljava/lang/String;

    .line 674
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v1

    .line 6103
    iget-object v1, v1, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    .line 674
    invoke-static {v1}, Lcom/flurry/sdk/ek;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/sdk/af;->b:Ljava/lang/String;

    .line 676
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v1

    .line 7103
    iget-object v1, v1, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    .line 676
    invoke-static {v1}, Lcom/flurry/sdk/ek;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/sdk/af;->c:Ljava/lang/String;

    .line 677
    invoke-static {}, Lcom/flurry/sdk/cm;->b()I

    move-result v1

    iput v1, v0, Lcom/flurry/sdk/af;->d:I

    const/4 v1, 0x3

    .line 678
    iput v1, v0, Lcom/flurry/sdk/af;->e:I

    .line 680
    invoke-static {}, Lcom/flurry/sdk/cc;->a()Lcom/flurry/sdk/cc;

    invoke-static {}, Lcom/flurry/sdk/cc;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/flurry/sdk/af;->f:Ljava/lang/String;

    .line 681
    invoke-static {}, Lcom/flurry/sdk/bt;->a()Lcom/flurry/sdk/bt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/bt;->f()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, v0, Lcom/flurry/sdk/af;->g:Z

    .line 683
    new-instance v2, Lcom/flurry/sdk/ai;

    invoke-direct {v2}, Lcom/flurry/sdk/ai;-><init>()V

    iput-object v2, v0, Lcom/flurry/sdk/af;->h:Lcom/flurry/sdk/ai;

    .line 684
    iget-object v2, v0, Lcom/flurry/sdk/af;->h:Lcom/flurry/sdk/ai;

    new-instance v3, Lcom/flurry/sdk/ac;

    invoke-direct {v3}, Lcom/flurry/sdk/ac;-><init>()V

    iput-object v3, v2, Lcom/flurry/sdk/ai;->a:Lcom/flurry/sdk/ac;

    .line 685
    iget-object v2, v0, Lcom/flurry/sdk/af;->h:Lcom/flurry/sdk/ai;

    iget-object v2, v2, Lcom/flurry/sdk/ai;->a:Lcom/flurry/sdk/ac;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v3, v2, Lcom/flurry/sdk/ac;->a:Ljava/lang/String;

    .line 686
    iget-object v2, v0, Lcom/flurry/sdk/af;->h:Lcom/flurry/sdk/ai;

    iget-object v2, v2, Lcom/flurry/sdk/ai;->a:Lcom/flurry/sdk/ac;

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v3, v2, Lcom/flurry/sdk/ac;->b:Ljava/lang/String;

    .line 687
    iget-object v2, v0, Lcom/flurry/sdk/af;->h:Lcom/flurry/sdk/ai;

    iget-object v2, v2, Lcom/flurry/sdk/ai;->a:Lcom/flurry/sdk/ac;

    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    iput-object v3, v2, Lcom/flurry/sdk/ac;->c:Ljava/lang/String;

    .line 688
    iget-object v2, v0, Lcom/flurry/sdk/af;->h:Lcom/flurry/sdk/ai;

    iget-object v2, v2, Lcom/flurry/sdk/ai;->a:Lcom/flurry/sdk/ac;

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v3, v2, Lcom/flurry/sdk/ac;->d:Ljava/lang/String;

    .line 689
    iget-object v2, v0, Lcom/flurry/sdk/af;->h:Lcom/flurry/sdk/ai;

    iget-object v2, v2, Lcom/flurry/sdk/ai;->a:Lcom/flurry/sdk/ac;

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    iput-object v3, v2, Lcom/flurry/sdk/ac;->e:Ljava/lang/String;

    .line 690
    iget-object v2, v0, Lcom/flurry/sdk/af;->h:Lcom/flurry/sdk/ai;

    iget-object v2, v2, Lcom/flurry/sdk/ai;->a:Lcom/flurry/sdk/ac;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v3, v2, Lcom/flurry/sdk/ac;->f:Ljava/lang/String;

    .line 692
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/flurry/sdk/af;->i:Ljava/util/List;

    .line 694
    invoke-static {}, Lcom/flurry/sdk/bt;->a()Lcom/flurry/sdk/bt;

    move-result-object v2

    .line 7169
    iget-object v2, v2, Lcom/flurry/sdk/bt;->a:Ljava/util/Map;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 695
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 696
    new-instance v4, Lcom/flurry/sdk/ah;

    invoke-direct {v4}, Lcom/flurry/sdk/ah;-><init>()V

    .line 697
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/flurry/sdk/cb;

    iget v5, v5, Lcom/flurry/sdk/cb;->d:I

    iput v5, v4, Lcom/flurry/sdk/ah;->a:I

    .line 698
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/flurry/sdk/cb;

    iget-boolean v5, v5, Lcom/flurry/sdk/cb;->e:Z

    if-eqz v5, :cond_0

    .line 699
    new-instance v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v4, Lcom/flurry/sdk/ah;->b:Ljava/lang/String;

    goto :goto_1

    .line 702
    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v3}, Lcom/flurry/sdk/en;->b([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/flurry/sdk/ah;->b:Ljava/lang/String;

    .line 704
    :goto_1
    iget-object v3, v0, Lcom/flurry/sdk/af;->i:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 707
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/bx;->a()Lcom/flurry/sdk/bx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/bx;->g()Landroid/location/Location;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 709
    invoke-static {}, Lcom/flurry/sdk/bx;->d()I

    move-result v3

    .line 710
    new-instance v4, Lcom/flurry/sdk/am;

    invoke-direct {v4}, Lcom/flurry/sdk/am;-><init>()V

    iput-object v4, v0, Lcom/flurry/sdk/af;->j:Lcom/flurry/sdk/am;

    .line 711
    iget-object v4, v0, Lcom/flurry/sdk/af;->j:Lcom/flurry/sdk/am;

    new-instance v5, Lcom/flurry/sdk/al;

    invoke-direct {v5}, Lcom/flurry/sdk/al;-><init>()V

    iput-object v5, v4, Lcom/flurry/sdk/am;->a:Lcom/flurry/sdk/al;

    .line 712
    iget-object v4, v0, Lcom/flurry/sdk/af;->j:Lcom/flurry/sdk/am;

    iget-object v4, v4, Lcom/flurry/sdk/am;->a:Lcom/flurry/sdk/al;

    .line 713
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-static {v5, v6, v3}, Lcom/flurry/sdk/en;->a(DI)D

    move-result-wide v5

    iput-wide v5, v4, Lcom/flurry/sdk/al;->a:D

    .line 714
    iget-object v4, v0, Lcom/flurry/sdk/af;->j:Lcom/flurry/sdk/am;

    iget-object v4, v4, Lcom/flurry/sdk/am;->a:Lcom/flurry/sdk/al;

    .line 715
    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-static {v5, v6, v3}, Lcom/flurry/sdk/en;->a(DI)D

    move-result-wide v5

    iput-wide v5, v4, Lcom/flurry/sdk/al;->b:D

    .line 716
    iget-object v4, v0, Lcom/flurry/sdk/af;->j:Lcom/flurry/sdk/am;

    iget-object v4, v4, Lcom/flurry/sdk/am;->a:Lcom/flurry/sdk/al;

    .line 717
    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    float-to-double v5, v2

    invoke-static {v5, v6, v3}, Lcom/flurry/sdk/en;->a(DI)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v4, Lcom/flurry/sdk/al;->c:F

    .line 721
    :cond_2
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/eh;

    move-result-object v2

    const-string v3, "UserId"

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/eh;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ""

    .line 722
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 723
    new-instance v3, Lcom/flurry/sdk/ap;

    invoke-direct {v3}, Lcom/flurry/sdk/ap;-><init>()V

    iput-object v3, v0, Lcom/flurry/sdk/af;->k:Lcom/flurry/sdk/ap;

    .line 724
    iget-object v3, v0, Lcom/flurry/sdk/af;->k:Lcom/flurry/sdk/ap;

    iput-object v2, v3, Lcom/flurry/sdk/ap;->a:Ljava/lang/String;

    .line 727
    :cond_3
    iget-object v2, p0, Lcom/flurry/sdk/at;->f:Lcom/flurry/sdk/dh;

    .line 8053
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 8055
    iget-object v4, v2, Lcom/flurry/sdk/dh;->c:Lcom/flurry/sdk/dx;

    invoke-interface {v4, v3, v0}, Lcom/flurry/sdk/dx;->a(Ljava/io/OutputStream;Ljava/lang/Object;)V

    .line 8056
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 8058
    sget-object v3, Lcom/flurry/sdk/dh;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Encoding "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/flurry/sdk/dh;->b:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 8061
    new-instance v1, Lcom/flurry/sdk/dv;

    new-instance v2, Lcom/flurry/sdk/dt;

    invoke-direct {v2}, Lcom/flurry/sdk/dt;-><init>()V

    invoke-direct {v1, v2}, Lcom/flurry/sdk/dv;-><init>(Lcom/flurry/sdk/dx;)V

    .line 8062
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 8064
    invoke-interface {v1, v2, v0}, Lcom/flurry/sdk/dx;->a(Ljava/io/OutputStream;Ljava/lang/Object;)V

    .line 8065
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 8066
    invoke-static {v0}, Lcom/flurry/sdk/dh;->b([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x5

    .line 730
    sget-object v2, Lcom/flurry/sdk/at;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Proton config request failed with exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private g()V
    .locals 6

    .line 771
    iget-object v0, p0, Lcom/flurry/sdk/at;->t:Lcom/flurry/sdk/ag;

    if-nez v0, :cond_0

    return-void

    .line 775
    :cond_0
    sget-object v0, Lcom/flurry/sdk/at;->e:Ljava/lang/String;

    const-string v1, "Processing config response"

    const/4 v2, 0x5

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 778
    iget-object v0, p0, Lcom/flurry/sdk/at;->t:Lcom/flurry/sdk/ag;

    iget-object v0, v0, Lcom/flurry/sdk/ag;->e:Lcom/flurry/sdk/ae;

    iget v0, v0, Lcom/flurry/sdk/ae;->c:I

    invoke-static {v0}, Lcom/flurry/sdk/az;->a(I)V

    .line 780
    iget-object v0, p0, Lcom/flurry/sdk/at;->t:Lcom/flurry/sdk/ag;

    iget-object v0, v0, Lcom/flurry/sdk/ag;->e:Lcom/flurry/sdk/ae;

    iget v0, v0, Lcom/flurry/sdk/ae;->d:I

    mul-int/lit16 v0, v0, 0x3e8

    .line 781
    invoke-static {v0}, Lcom/flurry/sdk/az;->b(I)V

    .line 782
    invoke-static {}, Lcom/flurry/sdk/bb;->a()Lcom/flurry/sdk/bb;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/at;->t:Lcom/flurry/sdk/ag;

    iget-object v1, v1, Lcom/flurry/sdk/ag;->e:Lcom/flurry/sdk/ae;

    iget-object v1, v1, Lcom/flurry/sdk/ae;->e:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v3, ".do"

    .line 10292
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 10293
    sget-object v3, Lcom/flurry/sdk/bb;->a:Ljava/lang/String;

    const-string v4, "overriding analytics agent report URL without an endpoint, are you sure?"

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 10296
    :cond_1
    iput-object v1, v0, Lcom/flurry/sdk/bb;->b:Ljava/lang/String;

    .line 785
    iget-boolean v0, p0, Lcom/flurry/sdk/at;->m:Z

    if-eqz v0, :cond_2

    .line 786
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/eh;

    move-result-object v0

    const-string v1, "analyticsEnabled"

    iget-object v2, p0, Lcom/flurry/sdk/at;->t:Lcom/flurry/sdk/ag;

    iget-object v2, v2, Lcom/flurry/sdk/ag;->f:Lcom/flurry/sdk/aq;

    iget-boolean v2, v2, Lcom/flurry/sdk/aq;->b:Z

    .line 787
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 786
    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/eh;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 791
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/at;->i:Lcom/flurry/sdk/cr;

    invoke-virtual {v0}, Lcom/flurry/sdk/cr;->a()V

    .line 793
    iget-object v0, p0, Lcom/flurry/sdk/at;->t:Lcom/flurry/sdk/ag;

    iget-object v0, v0, Lcom/flurry/sdk/ag;->e:Lcom/flurry/sdk/ae;

    if-nez v0, :cond_3

    return-void

    .line 798
    :cond_3
    iget-object v0, v0, Lcom/flurry/sdk/ae;->a:Ljava/util/List;

    if-nez v0, :cond_4

    return-void

    .line 803
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/ad;

    if-eqz v1, :cond_5

    .line 808
    iget-object v2, v1, Lcom/flurry/sdk/ad;->c:Ljava/util/List;

    if-eqz v2, :cond_5

    .line 814
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flurry/sdk/aj;

    if-eqz v3, :cond_6

    .line 820
    iget-object v4, v3, Lcom/flurry/sdk/aj;->a:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 825
    iput-object v1, v3, Lcom/flurry/sdk/aj;->b:Lcom/flurry/sdk/ad;

    .line 828
    iget-object v4, p0, Lcom/flurry/sdk/at;->i:Lcom/flurry/sdk/cr;

    iget-object v5, v3, Lcom/flurry/sdk/aj;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/flurry/sdk/cr;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    return-void
.end method

.method static synthetic g(Lcom/flurry/sdk/at;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/flurry/sdk/at;->u:Z

    return p0
.end method

.method private declared-synchronized h()V
    .locals 4

    monitor-enter p0

    .line 835
    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/at;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 836
    monitor-exit p0

    return-void

    .line 839
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/en;->a()V

    .line 841
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    .line 11103
    iget-object v0, v0, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    const-string v1, "FLURRY_SHARED_PREFERENCES"

    const/4 v2, 0x0

    .line 843
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "com.flurry.android.flurryAppInstall"

    const/4 v3, 0x1

    .line 845
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "flurry.app_install"

    const/4 v3, 0x0

    .line 847
    invoke-direct {p0, v1, v3}, Lcom/flurry/sdk/at;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 848
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.flurry.android.flurryAppInstall"

    .line 849
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 850
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 852
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 834
    monitor-exit p0

    throw v0
.end method

.method static synthetic h(Lcom/flurry/sdk/at;)Z
    .locals 1

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/flurry/sdk/at;->u:Z

    return v0
.end method

.method private declared-synchronized i()V
    .locals 6

    monitor-enter p0

    .line 916
    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/at;->o:Z

    if-nez v0, :cond_0

    .line 917
    sget-object v0, Lcom/flurry/sdk/at;->e:Ljava/lang/String;

    const-string v1, "Analytics disabled, not sending pulse reports."

    invoke-static {v0, v1}, Lcom/flurry/sdk/dc;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 918
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x4

    .line 921
    :try_start_1
    sget-object v1, Lcom/flurry/sdk/at;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sending "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/at;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " queued reports."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 923
    iget-object v0, p0, Lcom/flurry/sdk/at;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/ba;

    const/4 v2, 0x3

    .line 924
    sget-object v3, Lcom/flurry/sdk/at;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Firing Pulse callbacks for event: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12097
    iget-object v5, v1, Lcom/flurry/sdk/ba;->d:Ljava/lang/String;

    .line 925
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 924
    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 926
    invoke-static {}, Lcom/flurry/sdk/az;->d()Lcom/flurry/sdk/az;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/flurry/sdk/az;->a(Lcom/flurry/sdk/ba;)V

    goto :goto_0

    .line 929
    :cond_1
    invoke-direct {p0}, Lcom/flurry/sdk/at;->j()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 930
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 915
    monitor-exit p0

    throw v0
.end method

.method static synthetic i(Lcom/flurry/sdk/at;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/flurry/sdk/at;->h()V

    return-void
.end method

.method static synthetic j(Lcom/flurry/sdk/at;)J
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/flurry/sdk/at;->q:J

    return-wide v0
.end method

.method private declared-synchronized j()V
    .locals 1

    monitor-enter p0

    .line 933
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/at;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 934
    iget-object v0, p0, Lcom/flurry/sdk/at;->l:Lcom/flurry/sdk/cu;

    invoke-virtual {v0}, Lcom/flurry/sdk/cu;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 935
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 932
    monitor-exit p0

    throw v0
.end method

.method static synthetic k(Lcom/flurry/sdk/at;)Ljava/lang/Runnable;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/flurry/sdk/at;->a:Ljava/lang/Runnable;

    return-object p0
.end method

.method private declared-synchronized k()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x4

    .line 938
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/at;->e:Ljava/lang/String;

    const-string v2, "Saving queued report data."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 940
    iget-object v0, p0, Lcom/flurry/sdk/at;->l:Lcom/flurry/sdk/cu;

    iget-object v1, p0, Lcom/flurry/sdk/at;->j:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/cu;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 941
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 937
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized l()V
    .locals 7

    monitor-enter p0

    .line 944
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/at;->k:Lcom/flurry/sdk/cu;

    invoke-virtual {v0}, Lcom/flurry/sdk/cu;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 948
    :try_start_1
    iget-object v2, p0, Lcom/flurry/sdk/at;->g:Lcom/flurry/sdk/dh;

    .line 13037
    iget-object v3, v0, Lcom/flurry/sdk/ar;->c:[B

    .line 949
    invoke-virtual {v2, v3}, Lcom/flurry/sdk/dh;->c([B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/sdk/ag;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x5

    .line 951
    :try_start_2
    sget-object v4, Lcom/flurry/sdk/at;->e:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to decode saved proton config response: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 952
    iget-object v2, p0, Lcom/flurry/sdk/at;->k:Lcom/flurry/sdk/cu;

    invoke-virtual {v2}, Lcom/flurry/sdk/cu;->b()Z

    move-object v2, v1

    .line 955
    :goto_0
    invoke-static {v2}, Lcom/flurry/sdk/at;->b(Lcom/flurry/sdk/ag;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_1

    const/4 v2, 0x4

    .line 960
    sget-object v3, Lcom/flurry/sdk/at;->e:Ljava/lang/String;

    const-string v4, "Loaded saved proton config response"

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x2710

    .line 962
    iput-wide v2, p0, Lcom/flurry/sdk/at;->q:J

    .line 14021
    iget-wide v2, v0, Lcom/flurry/sdk/ar;->a:J

    .line 964
    iput-wide v2, p0, Lcom/flurry/sdk/at;->r:J

    .line 14029
    iget-boolean v0, v0, Lcom/flurry/sdk/ar;->b:Z

    .line 965
    iput-boolean v0, p0, Lcom/flurry/sdk/at;->s:Z

    .line 966
    iput-object v1, p0, Lcom/flurry/sdk/at;->t:Lcom/flurry/sdk/ag;

    .line 969
    invoke-direct {p0}, Lcom/flurry/sdk/at;->g()V

    :cond_1
    const/4 v0, 0x1

    .line 973
    iput-boolean v0, p0, Lcom/flurry/sdk/at;->p:Z

    .line 976
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/at$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/at$3;-><init>(Lcom/flurry/sdk/at;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/cl;->b(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 982
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 943
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized m()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x4

    .line 985
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/at;->e:Ljava/lang/String;

    const-string v2, "Loading queued report data."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 987
    iget-object v0, p0, Lcom/flurry/sdk/at;->l:Lcom/flurry/sdk/cu;

    invoke-virtual {v0}, Lcom/flurry/sdk/cu;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 990
    iget-object v1, p0, Lcom/flurry/sdk/at;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 992
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 984
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 253
    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/at;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 254
    monitor-exit p0

    return-void

    .line 257
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/en;->a()V

    .line 261
    invoke-static {}, Lcom/flurry/sdk/br;->a()Lcom/flurry/sdk/br;

    invoke-static {}, Lcom/flurry/sdk/br;->d()J

    move-result-wide v0

    sput-wide v0, Lcom/flurry/sdk/av;->a:J

    const/4 v0, 0x0

    .line 264
    iput-boolean v0, p0, Lcom/flurry/sdk/at;->u:Z

    .line 266
    invoke-direct {p0}, Lcom/flurry/sdk/at;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 252
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(J)V
    .locals 1

    monitor-enter p0

    .line 284
    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/at;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 285
    monitor-exit p0

    return-void

    .line 288
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/en;->a()V

    .line 291
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/at;->b(J)V

    const-string p1, "flurry.session_end"

    const/4 p2, 0x0

    .line 294
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/at;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 297
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object p1

    new-instance p2, Lcom/flurry/sdk/at$11;

    invoke-direct {p2, p0}, Lcom/flurry/sdk/at$11;-><init>(Lcom/flurry/sdk/at;)V

    invoke-virtual {p1, p2}, Lcom/flurry/sdk/cl;->b(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 283
    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 232
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x66855b25

    if-eq v0, v1, :cond_2

    const v1, 0x2633fcbb

    if-eq v0, v1, :cond_1

    const v1, 0x5edae5c7

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ProtonConfigUrl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "ProtonEnabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const-string v0, "analyticsEnabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const/4 v0, 0x4

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x6

    .line 246
    sget-object p2, Lcom/flurry/sdk/at;->e:Ljava/lang/String;

    const-string v0, "onSettingUpdate internal error!"

    invoke-static {p1, p2, v0}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 242
    :pswitch_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/flurry/sdk/at;->o:Z

    .line 243
    sget-object p1, Lcom/flurry/sdk/at;->e:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "onSettingUpdate, AnalyticsEnabled = "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/flurry/sdk/at;->o:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 238
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/flurry/sdk/at;->n:Ljava/lang/String;

    .line 239
    sget-object p1, Lcom/flurry/sdk/at;->e:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "onSettingUpdate, protonConfigUrl = "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/flurry/sdk/at;->n:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 234
    :pswitch_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/flurry/sdk/at;->m:Z

    .line 235
    sget-object p1, Lcom/flurry/sdk/at;->e:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "onSettingUpdate, protonEnabled = "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/flurry/sdk/at;->m:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
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

    .line 318
    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/at;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 319
    monitor-exit p0

    return-void

    .line 322
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/en;->a()V

    .line 324
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/at;->b(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 317
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    .line 271
    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/at;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 272
    monitor-exit p0

    return-void

    .line 275
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/en;->a()V

    .line 278
    invoke-static {}, Lcom/flurry/sdk/br;->a()Lcom/flurry/sdk/br;

    invoke-static {}, Lcom/flurry/sdk/br;->d()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/at;->b(J)V

    .line 279
    invoke-direct {p0}, Lcom/flurry/sdk/at;->i()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 270
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 1

    monitor-enter p0

    .line 307
    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/at;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 308
    monitor-exit p0

    return-void

    .line 311
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/en;->a()V

    .line 314
    invoke-direct {p0}, Lcom/flurry/sdk/at;->i()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 306
    monitor-exit p0

    throw v0
.end method
