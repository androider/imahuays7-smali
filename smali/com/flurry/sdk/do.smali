.class public abstract Lcom/flurry/sdk/do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReportInfo:",
        "Lcom/flurry/sdk/dn;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "do"

.field protected static b:J = 0x2710L


# instance fields
.field public c:Z

.field protected d:J

.field public final e:Ljava/lang/Runnable;

.field public final f:Lcom/flurry/sdk/cw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/cw<",
            "Lcom/flurry/sdk/by;",
            ">;"
        }
    .end annotation
.end field

.field private final g:I

.field private final h:Lcom/flurry/sdk/cu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/cu<",
            "Ljava/util/List<",
            "TReportInfo;>;>;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TReportInfo;>;"
        }
    .end annotation
.end field

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 24
    iput v0, p0, Lcom/flurry/sdk/do;->g:I

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/do;->i:Ljava/util/List;

    .line 33
    new-instance v0, Lcom/flurry/sdk/do$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/do$1;-><init>(Lcom/flurry/sdk/do;)V

    iput-object v0, p0, Lcom/flurry/sdk/do;->e:Ljava/lang/Runnable;

    .line 40
    new-instance v0, Lcom/flurry/sdk/do$2;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/do$2;-><init>(Lcom/flurry/sdk/do;)V

    iput-object v0, p0, Lcom/flurry/sdk/do;->f:Lcom/flurry/sdk/cw;

    .line 51
    invoke-static {}, Lcom/flurry/sdk/cx;->a()Lcom/flurry/sdk/cx;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.NetworkStateEvent"

    iget-object v2, p0, Lcom/flurry/sdk/do;->f:Lcom/flurry/sdk/cw;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/cx;->a(Ljava/lang/String;Lcom/flurry/sdk/cw;)V

    .line 53
    invoke-virtual {p0}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/cu;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/do;->h:Lcom/flurry/sdk/cu;

    .line 55
    sget-wide v0, Lcom/flurry/sdk/do;->b:J

    iput-wide v0, p0, Lcom/flurry/sdk/do;->d:J

    const/4 v0, -0x1

    .line 56
    iput v0, p0, Lcom/flurry/sdk/do;->j:I

    .line 59
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/do$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/do$3;-><init>(Lcom/flurry/sdk/do;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/cl;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/do;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/flurry/sdk/do;->b()V

    return-void
.end method

.method static synthetic b(Lcom/flurry/sdk/do;)Ljava/util/List;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/flurry/sdk/do;->i:Ljava/util/List;

    return-object p0
.end method

.method private declared-synchronized b()V
    .locals 3

    monitor-enter p0

    .line 81
    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/do;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 82
    monitor-exit p0

    return-void

    .line 86
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/flurry/sdk/do;->j:I

    if-ltz v0, :cond_1

    const/4 v0, 0x3

    .line 87
    sget-object v1, Lcom/flurry/sdk/do;->a:Ljava/lang/String;

    const-string v2, "Transmit is in progress"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 92
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/flurry/sdk/do;->c()V

    .line 93
    iget-object v0, p0, Lcom/flurry/sdk/do;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    sget-wide v0, Lcom/flurry/sdk/do;->b:J

    iput-wide v0, p0, Lcom/flurry/sdk/do;->d:J

    const/4 v0, -0x1

    .line 95
    iput v0, p0, Lcom/flurry/sdk/do;->j:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 100
    :try_start_3
    iput v0, p0, Lcom/flurry/sdk/do;->j:I

    .line 101
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/do$4;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/do$4;-><init>(Lcom/flurry/sdk/do;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/cl;->b(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 107
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 80
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c()V
    .locals 8

    monitor-enter p0

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/do;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 111
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 112
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/dn;

    .line 1024
    iget-boolean v2, v1, Lcom/flurry/sdk/dn;->o:Z

    const/4 v3, 0x3

    if-eqz v2, :cond_1

    .line 115
    sget-object v2, Lcom/flurry/sdk/do;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Url transmitted - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1040
    iget-object v5, v1, Lcom/flurry/sdk/dn;->q:Ljava/lang/String;

    .line 116
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Attempts: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2032
    iget v1, v1, Lcom/flurry/sdk/dn;->p:I

    .line 117
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-static {v3, v2, v1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 3032
    :cond_1
    iget v2, v1, Lcom/flurry/sdk/dn;->p:I

    .line 3048
    iget v4, v1, Lcom/flurry/sdk/dn;->s:I

    if-le v2, v4, :cond_2

    .line 120
    sget-object v2, Lcom/flurry/sdk/do;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exceeded max no of attempts - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4040
    iget-object v5, v1, Lcom/flurry/sdk/dn;->q:Ljava/lang/String;

    .line 121
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Attempts: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5032
    iget v1, v1, Lcom/flurry/sdk/dn;->p:I

    .line 122
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-static {v3, v2, v1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 124
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 6016
    iget-wide v6, v1, Lcom/flurry/sdk/dn;->n:J

    cmp-long v2, v4, v6

    if-lez v2, :cond_0

    .line 6032
    iget v2, v1, Lcom/flurry/sdk/dn;->p:I

    if-lez v2, :cond_0

    .line 127
    sget-object v2, Lcom/flurry/sdk/do;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Expired: Time expired - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6040
    iget-object v5, v1, Lcom/flurry/sdk/dn;->q:Ljava/lang/String;

    .line 128
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Attempts: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7032
    iget v1, v1, Lcom/flurry/sdk/dn;->p:I

    .line 129
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-static {v3, v2, v1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 133
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 109
    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcom/flurry/sdk/do;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/flurry/sdk/do;->d()V

    return-void
.end method

.method private declared-synchronized d()V
    .locals 4

    monitor-enter p0

    .line 136
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/en;->a()V

    const/4 v0, 0x0

    .line 141
    invoke-static {}, Lcom/flurry/sdk/bz;->a()Lcom/flurry/sdk/bz;

    move-result-object v1

    .line 7137
    iget-boolean v1, v1, Lcom/flurry/sdk/bz;->c:Z

    if-eqz v1, :cond_1

    .line 142
    :cond_0
    iget v1, p0, Lcom/flurry/sdk/do;->j:I

    iget-object v2, p0, Lcom/flurry/sdk/do;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 143
    iget-object v1, p0, Lcom/flurry/sdk/do;->i:Ljava/util/List;

    iget v2, p0, Lcom/flurry/sdk/do;->j:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/sdk/do;->j:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/dn;

    .line 8024
    iget-boolean v2, v1, Lcom/flurry/sdk/dn;->o:Z

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    .line 150
    sget-object v2, Lcom/flurry/sdk/do;->a:Ljava/lang/String;

    const-string v3, "Network is not available, aborting transmission"

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    .line 154
    invoke-direct {p0}, Lcom/flurry/sdk/do;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 156
    :cond_3
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/do;->a(Lcom/flurry/sdk/dn;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 135
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized e()V
    .locals 5

    monitor-enter p0

    .line 162
    :try_start_0
    invoke-direct {p0}, Lcom/flurry/sdk/do;->c()V

    .line 163
    iget-object v0, p0, Lcom/flurry/sdk/do;->i:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/do;->b(Ljava/util/List;)V

    .line 165
    iget-boolean v0, p0, Lcom/flurry/sdk/do;->c:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 166
    sget-object v0, Lcom/flurry/sdk/do;->a:Ljava/lang/String;

    const-string v2, "Reporter paused"

    invoke-static {v1, v0, v2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 168
    sget-wide v0, Lcom/flurry/sdk/do;->b:J

    iput-wide v0, p0, Lcom/flurry/sdk/do;->d:J

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/do;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    sget-object v0, Lcom/flurry/sdk/do;->a:Ljava/lang/String;

    const-string v2, "All reports sent successfully"

    invoke-static {v1, v0, v2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 172
    sget-wide v0, Lcom/flurry/sdk/do;->b:J

    iput-wide v0, p0, Lcom/flurry/sdk/do;->d:J

    goto :goto_0

    .line 175
    :cond_1
    iget-wide v2, p0, Lcom/flurry/sdk/do;->d:J

    const/4 v0, 0x1

    shl-long/2addr v2, v0

    iput-wide v2, p0, Lcom/flurry/sdk/do;->d:J

    .line 177
    sget-object v0, Lcom/flurry/sdk/do;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "One or more reports failed to send, backing off: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/flurry/sdk/do;->d:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/do;->e:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/flurry/sdk/do;->d:J

    .line 180
    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/cl;->a(Ljava/lang/Runnable;J)V

    :goto_0
    const/4 v0, -0x1

    .line 184
    iput v0, p0, Lcom/flurry/sdk/do;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 161
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public abstract a()Lcom/flurry/sdk/cu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/sdk/cu<",
            "Ljava/util/List<",
            "TReportInfo;>;>;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/flurry/sdk/dn;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReportInfo;)V"
        }
    .end annotation
.end method

.method public declared-synchronized a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TReportInfo;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 71
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/en;->a()V

    .line 73
    iget-object v0, p0, Lcom/flurry/sdk/do;->h:Lcom/flurry/sdk/cu;

    invoke-virtual {v0}, Lcom/flurry/sdk/cu;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 75
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 70
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Lcom/flurry/sdk/dn;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReportInfo;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    .line 229
    monitor-exit p0

    return-void

    .line 232
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/do;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object p1

    new-instance v0, Lcom/flurry/sdk/do$6;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/do$6;-><init>(Lcom/flurry/sdk/do;)V

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cl;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 227
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TReportInfo;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 190
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/en;->a()V

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 193
    iget-object p1, p0, Lcom/flurry/sdk/do;->h:Lcom/flurry/sdk/cu;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cu;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 189
    monitor-exit p0

    throw p1
.end method

.method protected final declared-synchronized c(Lcom/flurry/sdk/dn;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReportInfo;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 8028
    :try_start_0
    iput-boolean v0, p1, Lcom/flurry/sdk/dn;->o:Z

    .line 246
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object p1

    new-instance v0, Lcom/flurry/sdk/do$7;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/do$7;-><init>(Lcom/flurry/sdk/do;)V

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cl;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 243
    monitor-exit p0

    throw p1
.end method

.method protected final declared-synchronized d(Lcom/flurry/sdk/dn;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReportInfo;)V"
        }
    .end annotation

    monitor-enter p0

    .line 255
    :try_start_0
    invoke-virtual {p1}, Lcom/flurry/sdk/dn;->a()V

    .line 257
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object p1

    new-instance v0, Lcom/flurry/sdk/do$8;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/do$8;-><init>(Lcom/flurry/sdk/do;)V

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cl;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 254
    monitor-exit p0

    throw p1
.end method
