.class Lanet/channel/strategy/j;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/status/NetworkStatusHelper$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/strategy/j$a;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String;

.field static final b:Ljava/lang/String;


# instance fields
.field c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lanet/channel/strategy/l;",
            ">;"
        }
    .end annotation
.end field

.field d:Lanet/channel/strategy/n;

.field e:Lanet/channel/strategy/g;

.field final f:Lanet/channel/strategy/o;

.field private final g:Lanet/channel/strategy/l;

.field private final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lanet/channel/strategy/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lanet/channel/strategy/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lanet/channel/strategy/j;->a:Ljava/lang/String;

    .line 29
    const-class v0, Lanet/channel/strategy/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lanet/channel/strategy/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lanet/channel/strategy/j;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lanet/channel/strategy/j$a;

    invoke-direct {v0}, Lanet/channel/strategy/j$a;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/j;->c:Ljava/util/Map;

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lanet/channel/strategy/j;->d:Lanet/channel/strategy/n;

    .line 33
    iput-object v0, p0, Lanet/channel/strategy/j;->e:Lanet/channel/strategy/g;

    .line 35
    new-instance v0, Lanet/channel/strategy/o;

    invoke-direct {v0}, Lanet/channel/strategy/o;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/j;->f:Lanet/channel/strategy/o;

    .line 38
    new-instance v0, Lanet/channel/strategy/l;

    const-string v1, "Unknown"

    invoke-direct {v0, v1}, Lanet/channel/strategy/l;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lanet/channel/strategy/j;->g:Lanet/channel/strategy/l;

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/j;->h:Ljava/util/Set;

    const-string v0, ""

    .line 41
    iput-object v0, p0, Lanet/channel/strategy/j;->i:Ljava/lang/String;

    .line 50
    :try_start_0
    invoke-direct {p0}, Lanet/channel/strategy/j;->e()V

    .line 51
    invoke-direct {p0}, Lanet/channel/strategy/j;->g()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 55
    invoke-direct {p0}, Lanet/channel/strategy/j;->f()V

    throw v0

    :catch_0
    :goto_0
    invoke-direct {p0}, Lanet/channel/strategy/j;->f()V

    return-void
.end method

.method public static a()Lanet/channel/strategy/j;
    .locals 1

    .line 45
    new-instance v0, Lanet/channel/strategy/j;

    invoke-direct {v0}, Lanet/channel/strategy/j;-><init>()V

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 25
    invoke-static {p0}, Lanet/channel/strategy/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lanet/channel/strategy/j;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lanet/channel/strategy/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 123
    iget-object v0, p0, Lanet/channel/strategy/j;->h:Ljava/util/Set;

    monitor-enter v0

    .line 124
    :try_start_0
    iget-object v1, p0, Lanet/channel/strategy/j;->h:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 125
    iget-object v1, p0, Lanet/channel/strategy/j;->h:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 129
    monitor-exit v0

    .line 130
    invoke-static {p1}, Lanet/channel/strategy/z;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/l;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Lanet/channel/strategy/l;->a()V

    .line 133
    iget-object v1, p0, Lanet/channel/strategy/j;->c:Ljava/util/Map;

    monitor-enter v1

    .line 134
    :try_start_1
    iget-object v2, p0, Lanet/channel/strategy/j;->c:Ljava/util/Map;

    iget-object v3, v0, Lanet/channel/strategy/l;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1

    .line 137
    :cond_0
    :goto_0
    iget-object v1, p0, Lanet/channel/strategy/j;->h:Ljava/util/Set;

    monitor-enter v1

    .line 138
    :try_start_2
    iget-object v2, p0, Lanet/channel/strategy/j;->h:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 139
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 142
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "awcn.StrategyInfoHolder"

    const-string v2, "restore strategy file"

    const/4 v3, 0x0

    const/4 v4, 0x4

    .line 144
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "id"

    aput-object v5, v4, p1

    iget-object p1, p0, Lanet/channel/strategy/j;->i:Ljava/lang/String;

    aput-object p1, v4, p2

    const/4 p1, 0x2

    const-string p2, "result"

    aput-object p2, v4, p1

    const/4 p1, 0x3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v4, p1

    invoke-static {v1, v2, v3, v4}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    new-instance p1, Lanet/channel/statist/a;

    invoke-direct {p1}, Lanet/channel/statist/a;-><init>()V

    const-string p2, "networkPrefer"

    .line 146
    iput-object p2, p1, Lanet/channel/statist/a;->e:Ljava/lang/String;

    const-string p2, "strategy_load_stat"

    .line 147
    iput-object p2, p1, Lanet/channel/statist/a;->f:Ljava/lang/String;

    .line 148
    iput-boolean v0, p1, Lanet/channel/statist/a;->a:Z

    .line 149
    iget-object p2, p0, Lanet/channel/strategy/j;->i:Ljava/lang/String;

    iput-object p2, p1, Lanet/channel/statist/a;->b:Ljava/lang/String;

    .line 150
    invoke-static {}, Lanet/channel/d;->b()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 151
    invoke-static {}, Lanet/channel/b/a;->a()Lanet/channel/b/b;

    move-result-object p2

    invoke-interface {p2, p1}, Lanet/channel/b/b;->a(Lanet/channel/statist/a;)V

    :cond_2
    return-void

    :catchall_1
    move-exception p1

    .line 139
    monitor-exit v1

    throw p1

    .line 127
    :cond_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-void

    :catchall_2
    move-exception p1

    .line 129
    monitor-exit v0

    throw p1
.end method

.method private b(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    .line 195
    invoke-virtual {p1}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->isWifi()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->f()Ljava/lang/String;

    move-result-object v0

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "$"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 198
    :cond_0
    invoke-virtual {p1}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->isMobile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "$"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 189
    invoke-static {p0}, Lanet/channel/h/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lanet/channel/h/g;->a([B)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private e()V
    .locals 1

    .line 64
    invoke-static {p0}, Lanet/channel/status/NetworkStatusHelper;->a(Lanet/channel/status/NetworkStatusHelper$a;)V

    .line 65
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->a()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v0

    invoke-direct {p0, v0}, Lanet/channel/strategy/j;->b(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/strategy/j;->i:Ljava/lang/String;

    return-void
.end method

.method private f()V
    .locals 2

    .line 69
    iget-object v0, p0, Lanet/channel/strategy/j;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 70
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/l;

    invoke-virtual {v1}, Lanet/channel/strategy/l;->a()V

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lanet/channel/strategy/j;->d:Lanet/channel/strategy/n;

    if-nez v0, :cond_1

    .line 74
    new-instance v0, Lanet/channel/strategy/n;

    invoke-direct {v0}, Lanet/channel/strategy/n;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/j;->d:Lanet/channel/strategy/n;

    goto :goto_1

    .line 76
    :cond_1
    iget-object v0, p0, Lanet/channel/strategy/j;->d:Lanet/channel/strategy/n;

    invoke-virtual {v0}, Lanet/channel/strategy/n;->a()V

    .line 79
    :goto_1
    iget-object v0, p0, Lanet/channel/strategy/j;->e:Lanet/channel/strategy/g;

    if-nez v0, :cond_2

    .line 80
    new-instance v0, Lanet/channel/strategy/g;

    invoke-direct {v0}, Lanet/channel/strategy/g;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/j;->e:Lanet/channel/strategy/g;

    goto :goto_2

    .line 82
    :cond_2
    iget-object v0, p0, Lanet/channel/strategy/j;->e:Lanet/channel/strategy/g;

    invoke-virtual {v0}, Lanet/channel/strategy/g;->a()V

    .line 84
    :goto_2
    iget-object v0, p0, Lanet/channel/strategy/j;->e:Lanet/channel/strategy/g;

    invoke-virtual {v0, p0}, Lanet/channel/strategy/g;->a(Lanet/channel/strategy/j;)V

    return-void
.end method

.method private g()V
    .locals 2

    .line 89
    iget-object v0, p0, Lanet/channel/strategy/j;->i:Ljava/lang/String;

    invoke-static {v0}, Lanet/channel/strategy/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lanet/channel/strategy/j;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    iget-object v1, p0, Lanet/channel/strategy/j;->i:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lanet/channel/strategy/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_0
    sget-object v1, Lanet/channel/strategy/j;->a:Ljava/lang/String;

    invoke-static {v1}, Lanet/channel/strategy/z;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/n;

    iput-object v1, p0, Lanet/channel/strategy/j;->d:Lanet/channel/strategy/n;

    .line 95
    sget-object v1, Lanet/channel/strategy/j;->b:Ljava/lang/String;

    invoke-static {v1}, Lanet/channel/strategy/z;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/g;

    iput-object v1, p0, Lanet/channel/strategy/j;->e:Lanet/channel/strategy/g;

    .line 98
    new-instance v1, Lanet/channel/strategy/r;

    invoke-direct {v1, p0, v0}, Lanet/channel/strategy/r;-><init>(Lanet/channel/strategy/j;Ljava/lang/String;)V

    invoke-static {v1}, Lanet/channel/strategy/utils/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)V
    .locals 2

    .line 217
    invoke-direct {p0, p1}, Lanet/channel/strategy/j;->b(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/strategy/j;->i:Ljava/lang/String;

    .line 218
    iget-object p1, p0, Lanet/channel/strategy/j;->i:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 219
    iget-object p1, p0, Lanet/channel/strategy/j;->c:Ljava/util/Map;

    monitor-enter p1

    .line 220
    :try_start_0
    iget-object v0, p0, Lanet/channel/strategy/j;->c:Ljava/util/Map;

    iget-object v1, p0, Lanet/channel/strategy/j;->i:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lanet/channel/strategy/j;->i:Ljava/lang/String;

    .line 222
    new-instance v1, Lanet/channel/strategy/s;

    invoke-direct {v1, p0, v0}, Lanet/channel/strategy/s;-><init>(Lanet/channel/strategy/j;Ljava/lang/String;)V

    invoke-static {v1}, Lanet/channel/strategy/utils/a;->a(Ljava/lang/Runnable;)V

    .line 229
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method a(Lanet/channel/strategy/y$c;)V
    .locals 2

    .line 205
    iget v0, p1, Lanet/channel/strategy/y$c;->g:I

    if-eqz v0, :cond_0

    .line 206
    iget v0, p1, Lanet/channel/strategy/y$c;->g:I

    iget v1, p1, Lanet/channel/strategy/y$c;->h:I

    invoke-static {v0, v1}, Lanet/channel/strategy/a/e;->a(II)V

    .line 208
    :cond_0
    monitor-enter p0

    .line 209
    :try_start_0
    invoke-virtual {p0}, Lanet/channel/strategy/j;->d()Lanet/channel/strategy/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lanet/channel/strategy/l;->a(Lanet/channel/strategy/y$c;)V

    .line 210
    iget-object v0, p0, Lanet/channel/strategy/j;->e:Lanet/channel/strategy/g;

    invoke-virtual {v0, p1}, Lanet/channel/strategy/g;->a(Lanet/channel/strategy/y$c;)V

    .line 211
    iget-object v0, p0, Lanet/channel/strategy/j;->d:Lanet/channel/strategy/n;

    invoke-virtual {v0, p1}, Lanet/channel/strategy/n;->a(Lanet/channel/strategy/y$c;)V

    .line 212
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method b()V
    .locals 0

    .line 60
    invoke-static {p0}, Lanet/channel/status/NetworkStatusHelper;->b(Lanet/channel/status/NetworkStatusHelper$a;)V

    return-void
.end method

.method c()V
    .locals 3

    .line 160
    monitor-enter p0

    .line 161
    :try_start_0
    iget-object v0, p0, Lanet/channel/strategy/j;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/l;

    .line 162
    iget-object v2, v1, Lanet/channel/strategy/l;->a:Ljava/lang/String;

    invoke-static {v2}, Lanet/channel/strategy/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lanet/channel/strategy/z;->a(Ljava/io/Serializable;Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_0
    iget-object v0, p0, Lanet/channel/strategy/j;->d:Lanet/channel/strategy/n;

    sget-object v1, Lanet/channel/strategy/j;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lanet/channel/strategy/z;->a(Ljava/io/Serializable;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lanet/channel/strategy/j;->e:Lanet/channel/strategy/g;

    sget-object v1, Lanet/channel/strategy/j;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lanet/channel/strategy/z;->a(Ljava/io/Serializable;Ljava/lang/String;)V

    .line 166
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method d()Lanet/channel/strategy/l;
    .locals 4

    .line 173
    iget-object v0, p0, Lanet/channel/strategy/j;->g:Lanet/channel/strategy/l;

    .line 174
    iget-object v1, p0, Lanet/channel/strategy/j;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 175
    iget-object v0, p0, Lanet/channel/strategy/j;->c:Ljava/util/Map;

    monitor-enter v0

    .line 176
    :try_start_0
    iget-object v1, p0, Lanet/channel/strategy/j;->c:Ljava/util/Map;

    iget-object v2, p0, Lanet/channel/strategy/j;->i:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/l;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    new-instance v1, Lanet/channel/strategy/l;

    iget-object v2, p0, Lanet/channel/strategy/j;->i:Ljava/lang/String;

    invoke-direct {v1, v2}, Lanet/channel/strategy/l;-><init>(Ljava/lang/String;)V

    .line 181
    iget-object v2, p0, Lanet/channel/strategy/j;->c:Ljava/util/Map;

    iget-object v3, p0, Lanet/channel/strategy/j;->i:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    :goto_1
    return-object v0
.end method
