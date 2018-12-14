.class public Lcom/flurry/sdk/av;
.super Lcom/flurry/sdk/do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/av$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/do<",
        "Lcom/flurry/sdk/aw;",
        ">;"
    }
.end annotation


# static fields
.field public static a:J = 0x0L

.field private static final g:Ljava/lang/String; = "av"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Lcom/flurry/sdk/do;-><init>()V

    const-wide/16 v0, 0x7530

    .line 1197
    sput-wide v0, Lcom/flurry/sdk/do;->b:J

    .line 1198
    sget-wide v0, Lcom/flurry/sdk/do;->b:J

    iput-wide v0, p0, Lcom/flurry/sdk/do;->d:J

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/av;Lcom/flurry/sdk/ax;Lcom/flurry/sdk/aw;)V
    .locals 1

    .line 20228
    invoke-static {}, Lcom/flurry/sdk/az;->d()Lcom/flurry/sdk/az;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/az;->b(Lcom/flurry/sdk/ax;)V

    .line 20230
    invoke-virtual {p0, p2}, Lcom/flurry/sdk/av;->c(Lcom/flurry/sdk/dn;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/av;Lcom/flurry/sdk/ax;Lcom/flurry/sdk/aw;Lcom/flurry/sdk/dj;)V
    .locals 5

    const-string v0, "Location"

    .line 22265
    invoke-virtual {p3, v0}, Lcom/flurry/sdk/dj;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 22266
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 22267
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 23040
    iget-object v1, p2, Lcom/flurry/sdk/dn;->q:Ljava/lang/String;

    .line 22267
    invoke-static {v0, v1}, Lcom/flurry/sdk/es;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 22271
    :goto_0
    invoke-static {}, Lcom/flurry/sdk/az;->d()Lcom/flurry/sdk/az;

    move-result-object v1

    .line 22272
    invoke-virtual {v1, p1, v0}, Lcom/flurry/sdk/az;->a(Lcom/flurry/sdk/ax;Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x3

    if-eqz p1, :cond_1

    .line 22275
    sget-object v2, Lcom/flurry/sdk/av;->g:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Received redirect url. Retrying: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 22277
    :cond_1
    sget-object v2, Lcom/flurry/sdk/av;->g:Ljava/lang/String;

    const-string v3, "Received redirect url. Retrying: false"

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-eqz p1, :cond_3

    .line 23060
    iput-object v0, p2, Lcom/flurry/sdk/dn;->r:Ljava/lang/String;

    .line 23077
    iput-object v0, p3, Lcom/flurry/sdk/dl;->g:Ljava/lang/String;

    const-string p1, "Location"

    .line 23252
    iget-object p2, p3, Lcom/flurry/sdk/dl;->f:Lcom/flurry/sdk/cr;

    if-eqz p2, :cond_2

    iget-object p2, p3, Lcom/flurry/sdk/dl;->f:Lcom/flurry/sdk/cr;

    .line 24123
    iget-object p2, p2, Lcom/flurry/sdk/cr;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 23253
    iget-object p2, p3, Lcom/flurry/sdk/dl;->f:Lcom/flurry/sdk/cr;

    invoke-virtual {p2, p1}, Lcom/flurry/sdk/cr;->b(Ljava/lang/Object;)Z

    .line 22285
    :cond_2
    invoke-static {}, Lcom/flurry/sdk/ch;->a()Lcom/flurry/sdk/ch;

    move-result-object p1

    invoke-virtual {p1, p0, p3}, Lcom/flurry/sdk/ch;->a(Ljava/lang/Object;Lcom/flurry/sdk/er;)V

    return-void

    .line 22287
    :cond_3
    invoke-virtual {p0, p2}, Lcom/flurry/sdk/av;->c(Lcom/flurry/sdk/dn;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/av;Lcom/flurry/sdk/ax;Lcom/flurry/sdk/aw;Ljava/lang/String;)V
    .locals 2

    .line 20238
    invoke-static {}, Lcom/flurry/sdk/az;->d()Lcom/flurry/sdk/az;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/flurry/sdk/az;->b(Lcom/flurry/sdk/ax;Ljava/lang/String;)Z

    move-result p1

    .line 20240
    sget-object p3, Lcom/flurry/sdk/av;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed report retrying: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1, p3, v0}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 20243
    invoke-virtual {p0, p2}, Lcom/flurry/sdk/av;->d(Lcom/flurry/sdk/dn;)V

    return-void

    .line 20245
    :cond_0
    invoke-virtual {p0, p2}, Lcom/flurry/sdk/av;->c(Lcom/flurry/sdk/dn;)V

    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/flurry/sdk/av;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/flurry/sdk/av;Lcom/flurry/sdk/ax;Lcom/flurry/sdk/aw;)V
    .locals 3

    .line 20252
    sget-object v0, Lcom/flurry/sdk/av;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21138
    iget-object v2, p2, Lcom/flurry/sdk/aw;->g:Lcom/flurry/sdk/ba;

    .line 22097
    iget-object v2, v2, Lcom/flurry/sdk/ba;->d:Ljava/lang/String;

    .line 20252
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " report sent successfully to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22122
    iget-object v2, p2, Lcom/flurry/sdk/aw;->l:Ljava/lang/String;

    .line 20253
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 20252
    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 20255
    invoke-static {}, Lcom/flurry/sdk/az;->d()Lcom/flurry/sdk/az;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/az;->a(Lcom/flurry/sdk/ax;)V

    .line 20256
    invoke-virtual {p0, p2}, Lcom/flurry/sdk/av;->c(Lcom/flurry/sdk/dn;)V

    return-void
.end method


# virtual methods
.method protected final a()Lcom/flurry/sdk/cu;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/sdk/cu<",
            "Ljava/util/List<",
            "Lcom/flurry/sdk/aw;",
            ">;>;"
        }
    .end annotation

    .line 43
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    .line 2103
    iget-object v0, v0, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    .line 44
    new-instance v1, Lcom/flurry/sdk/cu;

    const-string v2, ".yflurryanpulsecallbackreporter"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v2, ".yflurryanpulsecallbackreporter"

    new-instance v3, Lcom/flurry/sdk/av$1;

    invoke-direct {v3, p0}, Lcom/flurry/sdk/av$1;-><init>(Lcom/flurry/sdk/av;)V

    const/4 v4, 0x2

    invoke-direct {v1, v0, v2, v4, v3}, Lcom/flurry/sdk/cu;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/ea;)V

    return-object v1
.end method

.method protected final synthetic a(Lcom/flurry/sdk/dn;)V
    .locals 10

    .line 27
    check-cast p1, Lcom/flurry/sdk/aw;

    .line 5094
    sget-object v0, Lcom/flurry/sdk/av;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending next pulse report to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6122
    iget-object v2, p1, Lcom/flurry/sdk/aw;->l:Ljava/lang/String;

    .line 5094
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7056
    iget-object v2, p1, Lcom/flurry/sdk/dn;->r:Ljava/lang/String;

    .line 5095
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 5094
    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 5097
    invoke-static {}, Lcom/flurry/sdk/br;->a()Lcom/flurry/sdk/br;

    invoke-static {}, Lcom/flurry/sdk/br;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 5101
    sget-wide v0, Lcom/flurry/sdk/av;->a:J

    :cond_0
    move-wide v4, v0

    .line 5104
    invoke-static {}, Lcom/flurry/sdk/br;->a()Lcom/flurry/sdk/br;

    invoke-static {}, Lcom/flurry/sdk/br;->g()J

    move-result-wide v0

    cmp-long v6, v0, v2

    if-nez v6, :cond_1

    .line 5108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v2, v0, v4

    move-wide v6, v2

    goto :goto_0

    :cond_1
    move-wide v6, v0

    .line 8032
    :goto_0
    iget v8, p1, Lcom/flurry/sdk/dn;->p:I

    .line 5114
    new-instance v9, Lcom/flurry/sdk/ax;

    move-object v0, v9

    move-object v1, p1

    move-wide v2, v4

    move-wide v4, v6

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/flurry/sdk/ax;-><init>(Lcom/flurry/sdk/aw;JJI)V

    .line 5119
    new-instance v0, Lcom/flurry/sdk/dj;

    invoke-direct {v0}, Lcom/flurry/sdk/dj;-><init>()V

    .line 8056
    iget-object v1, p1, Lcom/flurry/sdk/dn;->r:Ljava/lang/String;

    .line 8077
    iput-object v1, v0, Lcom/flurry/sdk/dl;->g:Ljava/lang/String;

    const v1, 0x186a0

    .line 9028
    iput v1, v0, Lcom/flurry/sdk/er;->u:I

    .line 9110
    iget-object v1, p1, Lcom/flurry/sdk/aw;->d:Lcom/flurry/sdk/bd;

    .line 5124
    sget-object v2, Lcom/flurry/sdk/bd;->c:Lcom/flurry/sdk/bd;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/bd;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5125
    new-instance v1, Lcom/flurry/sdk/dt;

    invoke-direct {v1}, Lcom/flurry/sdk/dt;-><init>()V

    .line 10027
    iput-object v1, v0, Lcom/flurry/sdk/dj;->c:Lcom/flurry/sdk/dx;

    .line 10134
    iget-object v1, p1, Lcom/flurry/sdk/aw;->k:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 11134
    iget-object v1, p1, Lcom/flurry/sdk/aw;->k:Ljava/lang/String;

    .line 5128
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 12023
    iput-object v1, v0, Lcom/flurry/sdk/dj;->b:Ljava/lang/Object;

    .line 5132
    :cond_2
    sget-object v1, Lcom/flurry/sdk/dl$a;->c:Lcom/flurry/sdk/dl$a;

    .line 12085
    iput-object v1, v0, Lcom/flurry/sdk/dl;->h:Lcom/flurry/sdk/dl$a;

    goto :goto_1

    .line 5134
    :cond_3
    sget-object v1, Lcom/flurry/sdk/dl$a;->b:Lcom/flurry/sdk/dl$a;

    .line 13085
    iput-object v1, v0, Lcom/flurry/sdk/dl;->h:Lcom/flurry/sdk/dl$a;

    .line 13126
    :goto_1
    iget v1, p1, Lcom/flurry/sdk/aw;->i:I

    mul-int/lit16 v1, v1, 0x3e8

    .line 14093
    iput v1, v0, Lcom/flurry/sdk/dl;->i:I

    .line 14130
    iget v1, p1, Lcom/flurry/sdk/aw;->j:I

    mul-int/lit16 v1, v1, 0x3e8

    .line 15101
    iput v1, v0, Lcom/flurry/sdk/dl;->j:I

    const/4 v1, 0x1

    .line 15141
    iput-boolean v1, v0, Lcom/flurry/sdk/dl;->m:Z

    .line 16109
    iput-boolean v1, v0, Lcom/flurry/sdk/dl;->r:Z

    .line 16126
    iget v1, p1, Lcom/flurry/sdk/aw;->i:I

    .line 16130
    iget v2, p1, Lcom/flurry/sdk/aw;->j:I

    add-int/2addr v1, v2

    mul-int/lit16 v1, v1, 0x3e8

    .line 17117
    iput v1, v0, Lcom/flurry/sdk/dl;->s:I

    .line 18118
    iget-object v1, p1, Lcom/flurry/sdk/aw;->e:Ljava/util/Map;

    if-eqz v1, :cond_4

    .line 19118
    iget-object v2, p1, Lcom/flurry/sdk/aw;->e:Ljava/util/Map;

    .line 5153
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 5155
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5156
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/flurry/sdk/dj;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 19137
    iput-boolean v1, v0, Lcom/flurry/sdk/dl;->k:Z

    .line 5162
    new-instance v1, Lcom/flurry/sdk/av$2;

    invoke-direct {v1, p0, p1, v9}, Lcom/flurry/sdk/av$2;-><init>(Lcom/flurry/sdk/av;Lcom/flurry/sdk/aw;Lcom/flurry/sdk/ax;)V

    .line 20035
    iput-object v1, v0, Lcom/flurry/sdk/dj;->a:Lcom/flurry/sdk/dj$a;

    .line 5222
    invoke-static {}, Lcom/flurry/sdk/ch;->a()Lcom/flurry/sdk/ch;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/flurry/sdk/ch;->a(Ljava/lang/Object;Lcom/flurry/sdk/er;)V

    return-void
.end method

.method protected final declared-synchronized a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/flurry/sdk/aw;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 59
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/az;->d()Lcom/flurry/sdk/az;

    invoke-static {}, Lcom/flurry/sdk/az;->e()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 62
    monitor-exit p0

    return-void

    .line 65
    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 66
    monitor-exit p0

    return-void

    .line 69
    :cond_1
    :try_start_2
    sget-object v1, Lcom/flurry/sdk/av;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Restoring "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " from report queue."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3, v1, v2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/ba;

    .line 72
    invoke-static {}, Lcom/flurry/sdk/az;->d()Lcom/flurry/sdk/az;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/flurry/sdk/az;->b(Lcom/flurry/sdk/ba;)V

    goto :goto_0

    .line 76
    :cond_2
    invoke-static {}, Lcom/flurry/sdk/az;->d()Lcom/flurry/sdk/az;

    invoke-static {}, Lcom/flurry/sdk/az;->c()Ljava/util/List;

    move-result-object v0

    .line 79
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/ba;

    .line 80
    invoke-virtual {v1}, Lcom/flurry/sdk/ba;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/sdk/aw;

    .line 2146
    iget-boolean v4, v2, Lcom/flurry/sdk/aw;->m:Z

    if-nez v4, :cond_4

    .line 82
    sget-object v4, Lcom/flurry/sdk/av;->g:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Callback for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3138
    iget-object v6, v2, Lcom/flurry/sdk/aw;->g:Lcom/flurry/sdk/ba;

    .line 4097
    iget-object v6, v6, Lcom/flurry/sdk/ba;->d:Ljava/lang/String;

    .line 82
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4122
    iget-object v6, v2, Lcom/flurry/sdk/aw;->l:Ljava/lang/String;

    .line 83
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " not completed.  Adding to reporter queue."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 82
    invoke-static {v3, v4, v5}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 90
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 58
    monitor-exit p0

    throw p1
.end method

.method protected final declared-synchronized b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/flurry/sdk/aw;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 294
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/az;->d()Lcom/flurry/sdk/az;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flurry/sdk/az;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 293
    monitor-exit p0

    throw p1
.end method
