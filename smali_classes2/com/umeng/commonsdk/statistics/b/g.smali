.class public Lcom/umeng/commonsdk/statistics/b/g;
.super Ljava/lang/Object;
.source "IdTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/statistics/b/g$a;
    }
.end annotation


# static fields
.field public static a:Lcom/umeng/commonsdk/statistics/b/g;

.field private static i:Ljava/lang/Object;


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Ljava/io/File;

.field private d:Lcom/umeng/commonsdk/statistics/proto/c;

.field private e:J

.field private f:J

.field private g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/umeng/commonsdk/statistics/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/umeng/commonsdk/statistics/b/g$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 220
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/statistics/b/g;->i:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "umeng_it.cache"

    .line 33
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/b/g;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/b/g;->d:Lcom/umeng/commonsdk/statistics/proto/c;

    .line 41
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/umeng/commonsdk/statistics/b/g;->g:Ljava/util/Set;

    .line 42
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/b/g;->h:Lcom/umeng/commonsdk/statistics/b/g$a;

    .line 47
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "umeng_it.cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/b/g;->c:Ljava/io/File;

    const-wide/32 v0, 0x5265c00

    .line 48
    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/b/g;->f:J

    .line 49
    new-instance v0, Lcom/umeng/commonsdk/statistics/b/g$a;

    invoke-direct {v0, p1}, Lcom/umeng/commonsdk/statistics/b/g$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/b/g;->h:Lcom/umeng/commonsdk/statistics/b/g$a;

    .line 50
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/b/g;->h:Lcom/umeng/commonsdk/statistics/b/g$a;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/b/g$a;->b()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/b/g;
    .locals 4

    const-class v0, Lcom/umeng/commonsdk/statistics/b/g;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcom/umeng/commonsdk/statistics/b/g;->a:Lcom/umeng/commonsdk/statistics/b/g;

    if-nez v1, :cond_3

    .line 55
    new-instance v1, Lcom/umeng/commonsdk/statistics/b/g;

    invoke-direct {v1, p0}, Lcom/umeng/commonsdk/statistics/b/g;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/umeng/commonsdk/statistics/b/g;->a:Lcom/umeng/commonsdk/statistics/b/g;

    .line 57
    sget-object v1, Lcom/umeng/commonsdk/statistics/b/g;->a:Lcom/umeng/commonsdk/statistics/b/g;

    new-instance v2, Lcom/umeng/commonsdk/statistics/b/h;

    invoke-direct {v2, p0}, Lcom/umeng/commonsdk/statistics/b/h;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/umeng/commonsdk/statistics/b/g;->a(Lcom/umeng/commonsdk/statistics/b/c;)Z

    .line 58
    sget-object v1, Lcom/umeng/commonsdk/statistics/b/g;->a:Lcom/umeng/commonsdk/statistics/b/g;

    new-instance v2, Lcom/umeng/commonsdk/statistics/b/d;

    invoke-direct {v2, p0}, Lcom/umeng/commonsdk/statistics/b/d;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/umeng/commonsdk/statistics/b/g;->a(Lcom/umeng/commonsdk/statistics/b/c;)Z

    .line 59
    sget-object v1, Lcom/umeng/commonsdk/statistics/b/g;->a:Lcom/umeng/commonsdk/statistics/b/g;

    new-instance v2, Lcom/umeng/commonsdk/statistics/b/t;

    invoke-direct {v2, p0}, Lcom/umeng/commonsdk/statistics/b/t;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/umeng/commonsdk/statistics/b/g;->a(Lcom/umeng/commonsdk/statistics/b/c;)Z

    .line 60
    sget-object v1, Lcom/umeng/commonsdk/statistics/b/g;->a:Lcom/umeng/commonsdk/statistics/b/g;

    new-instance v2, Lcom/umeng/commonsdk/statistics/b/f;

    invoke-direct {v2, p0}, Lcom/umeng/commonsdk/statistics/b/f;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/umeng/commonsdk/statistics/b/g;->a(Lcom/umeng/commonsdk/statistics/b/c;)Z

    .line 61
    sget-object v1, Lcom/umeng/commonsdk/statistics/b/g;->a:Lcom/umeng/commonsdk/statistics/b/g;

    new-instance v2, Lcom/umeng/commonsdk/statistics/b/e;

    invoke-direct {v2, p0}, Lcom/umeng/commonsdk/statistics/b/e;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/umeng/commonsdk/statistics/b/g;->a(Lcom/umeng/commonsdk/statistics/b/c;)Z

    .line 62
    sget-object v1, Lcom/umeng/commonsdk/statistics/b/g;->a:Lcom/umeng/commonsdk/statistics/b/g;

    new-instance v2, Lcom/umeng/commonsdk/statistics/b/i;

    invoke-direct {v2, p0}, Lcom/umeng/commonsdk/statistics/b/i;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/umeng/commonsdk/statistics/b/g;->a(Lcom/umeng/commonsdk/statistics/b/c;)Z

    .line 63
    sget-object v1, Lcom/umeng/commonsdk/statistics/b/g;->a:Lcom/umeng/commonsdk/statistics/b/g;

    new-instance v2, Lcom/umeng/commonsdk/statistics/b/l;

    invoke-direct {v2}, Lcom/umeng/commonsdk/statistics/b/l;-><init>()V

    invoke-direct {v1, v2}, Lcom/umeng/commonsdk/statistics/b/g;->a(Lcom/umeng/commonsdk/statistics/b/c;)Z

    .line 64
    sget-object v1, Lcom/umeng/commonsdk/statistics/b/g;->a:Lcom/umeng/commonsdk/statistics/b/g;

    new-instance v2, Lcom/umeng/commonsdk/statistics/b/u;

    invoke-direct {v2, p0}, Lcom/umeng/commonsdk/statistics/b/u;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/umeng/commonsdk/statistics/b/g;->a(Lcom/umeng/commonsdk/statistics/b/c;)Z

    .line 65
    new-instance v1, Lcom/umeng/commonsdk/statistics/b/s;

    invoke-direct {v1, p0}, Lcom/umeng/commonsdk/statistics/b/s;-><init>(Landroid/content/Context;)V

    .line 66
    invoke-virtual {v1}, Lcom/umeng/commonsdk/statistics/b/s;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 67
    sget-object v2, Lcom/umeng/commonsdk/statistics/b/g;->a:Lcom/umeng/commonsdk/statistics/b/g;

    invoke-direct {v2, v1}, Lcom/umeng/commonsdk/statistics/b/g;->a(Lcom/umeng/commonsdk/statistics/b/c;)Z

    .line 70
    :cond_0
    new-instance v1, Lcom/umeng/commonsdk/statistics/b/k;

    invoke-direct {v1, p0}, Lcom/umeng/commonsdk/statistics/b/k;-><init>(Landroid/content/Context;)V

    .line 71
    invoke-virtual {v1}, Lcom/umeng/commonsdk/statistics/b/k;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    sget-object v2, Lcom/umeng/commonsdk/statistics/b/g;->a:Lcom/umeng/commonsdk/statistics/b/g;

    invoke-direct {v2, v1}, Lcom/umeng/commonsdk/statistics/b/g;->a(Lcom/umeng/commonsdk/statistics/b/c;)Z

    .line 73
    sget-object v2, Lcom/umeng/commonsdk/statistics/b/g;->a:Lcom/umeng/commonsdk/statistics/b/g;

    new-instance v3, Lcom/umeng/commonsdk/statistics/b/j;

    invoke-direct {v3, p0}, Lcom/umeng/commonsdk/statistics/b/j;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v3}, Lcom/umeng/commonsdk/statistics/b/g;->a(Lcom/umeng/commonsdk/statistics/b/c;)Z

    .line 74
    invoke-virtual {v1}, Lcom/umeng/commonsdk/statistics/b/k;->i()V

    .line 77
    :cond_1
    sget v1, Lcom/umeng/commonsdk/statistics/b;->a:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 78
    sget-object v1, Lcom/umeng/commonsdk/statistics/b/g;->a:Lcom/umeng/commonsdk/statistics/b/g;

    new-instance v2, Lcom/umeng/commonsdk/statistics/b/r;

    invoke-direct {v2, p0}, Lcom/umeng/commonsdk/statistics/b/r;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/umeng/commonsdk/statistics/b/g;->a(Lcom/umeng/commonsdk/statistics/b/c;)Z

    .line 79
    sget-object v1, Lcom/umeng/commonsdk/statistics/b/g;->a:Lcom/umeng/commonsdk/statistics/b/g;

    new-instance v2, Lcom/umeng/commonsdk/statistics/b/o;

    invoke-direct {v2, p0}, Lcom/umeng/commonsdk/statistics/b/o;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/umeng/commonsdk/statistics/b/g;->a(Lcom/umeng/commonsdk/statistics/b/c;)Z

    .line 80
    sget-object v1, Lcom/umeng/commonsdk/statistics/b/g;->a:Lcom/umeng/commonsdk/statistics/b/g;

    new-instance v2, Lcom/umeng/commonsdk/statistics/b/q;

    invoke-direct {v2, p0}, Lcom/umeng/commonsdk/statistics/b/q;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/umeng/commonsdk/statistics/b/g;->a(Lcom/umeng/commonsdk/statistics/b/c;)Z

    .line 81
    sget-object v1, Lcom/umeng/commonsdk/statistics/b/g;->a:Lcom/umeng/commonsdk/statistics/b/g;

    new-instance v2, Lcom/umeng/commonsdk/statistics/b/p;

    invoke-direct {v2, p0}, Lcom/umeng/commonsdk/statistics/b/p;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/umeng/commonsdk/statistics/b/g;->a(Lcom/umeng/commonsdk/statistics/b/c;)Z

    .line 82
    sget-object v1, Lcom/umeng/commonsdk/statistics/b/g;->a:Lcom/umeng/commonsdk/statistics/b/g;

    new-instance v2, Lcom/umeng/commonsdk/statistics/b/n;

    invoke-direct {v2, p0}, Lcom/umeng/commonsdk/statistics/b/n;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/umeng/commonsdk/statistics/b/g;->a(Lcom/umeng/commonsdk/statistics/b/c;)Z

    .line 83
    sget-object v1, Lcom/umeng/commonsdk/statistics/b/g;->a:Lcom/umeng/commonsdk/statistics/b/g;

    new-instance v2, Lcom/umeng/commonsdk/statistics/b/m;

    invoke-direct {v2, p0}, Lcom/umeng/commonsdk/statistics/b/m;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/umeng/commonsdk/statistics/b/g;->a(Lcom/umeng/commonsdk/statistics/b/c;)Z

    .line 86
    :cond_2
    sget-object p0, Lcom/umeng/commonsdk/statistics/b/g;->a:Lcom/umeng/commonsdk/statistics/b/g;

    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/b/g;->d()V

    .line 89
    :cond_3
    sget-object p0, Lcom/umeng/commonsdk/statistics/b/g;->a:Lcom/umeng/commonsdk/statistics/b/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 53
    monitor-exit v0

    throw p0
.end method

.method private a(Lcom/umeng/commonsdk/statistics/proto/c;)V
    .locals 2

    .line 248
    sget-object v0, Lcom/umeng/commonsdk/statistics/b/g;->i:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 252
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 253
    :try_start_1
    new-instance v1, Lcom/umeng/commonsdk/proguard/ak;

    invoke-direct {v1}, Lcom/umeng/commonsdk/proguard/ak;-><init>()V

    invoke-virtual {v1, p1}, Lcom/umeng/commonsdk/proguard/ak;->a(Lcom/umeng/commonsdk/proguard/l;)[B

    move-result-object p1

    .line 254
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 257
    :try_start_2
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/b/g;->c:Ljava/io/File;

    invoke-static {v1, p1}, Lcom/umeng/commonsdk/statistics/a/c;->a(Ljava/io/File;[B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 254
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 260
    :try_start_5
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 263
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method

.method private a(Lcom/umeng/commonsdk/statistics/b/c;)Z
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/b/g;->h:Lcom/umeng/commonsdk/statistics/b/g$a;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/b/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/commonsdk/statistics/b/g$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/b/g;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 95
    :cond_0
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/a;->c:Z

    if-eqz v0, :cond_1

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid domain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/b/c;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/a/d;->c(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private declared-synchronized f()V
    .locals 7

    monitor-enter p0

    .line 140
    :try_start_0
    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/c;

    invoke-direct {v0}, Lcom/umeng/commonsdk/statistics/proto/c;-><init>()V

    .line 141
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 142
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 144
    iget-object v3, p0, Lcom/umeng/commonsdk/statistics/b/g;->g:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/umeng/commonsdk/statistics/b/c;

    .line 145
    invoke-virtual {v4}, Lcom/umeng/commonsdk/statistics/b/c;->c()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 148
    :cond_1
    invoke-virtual {v4}, Lcom/umeng/commonsdk/statistics/b/c;->d()Lcom/umeng/commonsdk/statistics/proto/b;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 149
    invoke-virtual {v4}, Lcom/umeng/commonsdk/statistics/b/c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/umeng/commonsdk/statistics/b/c;->d()Lcom/umeng/commonsdk/statistics/proto/b;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_2
    invoke-virtual {v4}, Lcom/umeng/commonsdk/statistics/b/c;->e()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/umeng/commonsdk/statistics/b/c;->e()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 153
    invoke-virtual {v4}, Lcom/umeng/commonsdk/statistics/b/c;->e()Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 157
    :cond_3
    invoke-virtual {v0, v2}, Lcom/umeng/commonsdk/statistics/proto/c;->a(Ljava/util/List;)Lcom/umeng/commonsdk/statistics/proto/c;

    .line 158
    invoke-virtual {v0, v1}, Lcom/umeng/commonsdk/statistics/proto/c;->a(Ljava/util/Map;)Lcom/umeng/commonsdk/statistics/proto/c;

    .line 160
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 162
    :try_start_1
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/b/g;->d:Lcom/umeng/commonsdk/statistics/proto/c;

    .line 163
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 163
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 139
    monitor-exit p0

    throw v0
.end method

.method private g()Lcom/umeng/commonsdk/statistics/proto/c;
    .locals 7

    .line 224
    sget-object v0, Lcom/umeng/commonsdk/statistics/b/g;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/b/g;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 226
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    return-object v2

    .line 229
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/umeng/commonsdk/statistics/b/g;->c:Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    :try_start_2
    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/a/c;->b(Ljava/io/InputStream;)[B

    move-result-object v3

    .line 232
    new-instance v4, Lcom/umeng/commonsdk/statistics/proto/c;

    invoke-direct {v4}, Lcom/umeng/commonsdk/statistics/proto/c;-><init>()V

    .line 233
    new-instance v5, Lcom/umeng/commonsdk/proguard/ai;

    invoke-direct {v5}, Lcom/umeng/commonsdk/proguard/ai;-><init>()V

    invoke-virtual {v5, v4, v3}, Lcom/umeng/commonsdk/proguard/ai;->a(Lcom/umeng/commonsdk/proguard/l;[B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 239
    :try_start_3
    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/a/c;->c(Ljava/io/InputStream;)V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-object v4

    :catch_0
    move-exception v3

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_1

    :catch_1
    move-exception v3

    move-object v1, v2

    .line 237
    :goto_0
    :try_start_4
    invoke-static {v3}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 239
    :try_start_5
    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/a/c;->c(Ljava/io/InputStream;)V

    .line 241
    monitor-exit v0

    return-object v2

    :catchall_1
    move-exception v2

    .line 239
    :goto_1
    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/a/c;->c(Ljava/io/InputStream;)V

    throw v2

    :catchall_2
    move-exception v1

    .line 241
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 7

    monitor-enter p0

    .line 107
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 108
    iget-wide v2, p0, Lcom/umeng/commonsdk/statistics/b/g;->e:J

    const/4 v4, 0x0

    sub-long v4, v0, v2

    iget-wide v2, p0, Lcom/umeng/commonsdk/statistics/b/g;->f:J

    cmp-long v6, v4, v2

    if-ltz v6, :cond_4

    const/4 v2, 0x0

    .line 111
    iget-object v3, p0, Lcom/umeng/commonsdk/statistics/b/g;->g:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/umeng/commonsdk/statistics/b/c;

    .line 112
    invoke-virtual {v4}, Lcom/umeng/commonsdk/statistics/b/c;->c()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 116
    :cond_1
    invoke-virtual {v4}, Lcom/umeng/commonsdk/statistics/b/c;->a()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    .line 119
    invoke-virtual {v4}, Lcom/umeng/commonsdk/statistics/b/c;->c()Z

    move-result v5

    if-nez v5, :cond_0

    .line 120
    iget-object v5, p0, Lcom/umeng/commonsdk/statistics/b/g;->h:Lcom/umeng/commonsdk/statistics/b/g$a;

    invoke-virtual {v4}, Lcom/umeng/commonsdk/statistics/b/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/umeng/commonsdk/statistics/b/g$a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 126
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/b/g;->f()V

    .line 127
    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/b/g;->h:Lcom/umeng/commonsdk/statistics/b/g$a;

    invoke-virtual {v2}, Lcom/umeng/commonsdk/statistics/b/g$a;->a()V

    .line 128
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/b/g;->e()V

    .line 131
    :cond_3
    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/b/g;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 106
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Lcom/umeng/commonsdk/statistics/proto/c;
    .locals 1

    monitor-enter p0

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/b/g;->d:Lcom/umeng/commonsdk/statistics/proto/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 5

    monitor-enter p0

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/b/g;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/umeng/commonsdk/statistics/b/c;

    .line 173
    invoke-virtual {v3}, Lcom/umeng/commonsdk/statistics/b/c;->c()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 176
    :cond_1
    invoke-virtual {v3}, Lcom/umeng/commonsdk/statistics/b/c;->e()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/umeng/commonsdk/statistics/b/c;->e()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v2, 0x0

    .line 177
    invoke-virtual {v3, v2}, Lcom/umeng/commonsdk/statistics/b/c;->a(Ljava/util/List;)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 183
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/b/g;->d:Lcom/umeng/commonsdk/statistics/proto/c;

    invoke-virtual {v0, v1}, Lcom/umeng/commonsdk/statistics/proto/c;->b(Z)V

    .line 184
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/b/g;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 170
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .locals 4

    monitor-enter p0

    .line 189
    :try_start_0
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/b/g;->g()Lcom/umeng/commonsdk/statistics/proto/c;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 192
    monitor-exit p0

    return-void

    .line 194
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/b/g;->g:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 196
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 197
    :try_start_2
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/b/g;->d:Lcom/umeng/commonsdk/statistics/proto/c;

    .line 199
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/b/g;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/commonsdk/statistics/b/c;

    .line 200
    iget-object v3, p0, Lcom/umeng/commonsdk/statistics/b/g;->d:Lcom/umeng/commonsdk/statistics/proto/c;

    invoke-virtual {v2, v3}, Lcom/umeng/commonsdk/statistics/b/c;->a(Lcom/umeng/commonsdk/statistics/proto/c;)V

    .line 202
    invoke-virtual {v2}, Lcom/umeng/commonsdk/statistics/b/c;->c()Z

    move-result v3

    if-nez v3, :cond_1

    .line 203
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 207
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/commonsdk/statistics/b/c;

    .line 208
    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/b/g;->g:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 210
    :cond_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 212
    :try_start_3
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/b/g;->f()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 213
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 210
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    .line 188
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()V
    .locals 1

    monitor-enter p0

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/b/g;->d:Lcom/umeng/commonsdk/statistics/proto/c;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/b/g;->d:Lcom/umeng/commonsdk/statistics/proto/c;

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/statistics/b/g;->a(Lcom/umeng/commonsdk/statistics/proto/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 215
    monitor-exit p0

    throw v0
.end method
