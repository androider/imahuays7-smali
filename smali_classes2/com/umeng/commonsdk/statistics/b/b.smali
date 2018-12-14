.class public Lcom/umeng/commonsdk/statistics/b/b;
.super Ljava/lang/Object;
.source "ImprintHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/statistics/b/b$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/Object;

.field private static final b:[B

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/umeng/commonsdk/statistics/c/c;",
            ">;>;"
        }
    .end annotation
.end field

.field private static e:Ljava/lang/Object;

.field private static h:Lcom/umeng/commonsdk/statistics/b/b;

.field private static i:Landroid/content/Context;


# instance fields
.field private c:Lcom/umeng/commonsdk/statistics/c/g;

.field private f:Lcom/umeng/commonsdk/statistics/b/b$a;

.field private g:Lcom/umeng/commonsdk/statistics/proto/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/statistics/b/b;->a:Ljava/lang/Object;

    const-string v0, "pbl0"

    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/statistics/b/b;->b:[B

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/statistics/b/b;->d:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/statistics/b/b;->e:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/umeng/commonsdk/statistics/b/b$a;

    invoke-direct {v0}, Lcom/umeng/commonsdk/statistics/b/b$a;-><init>()V

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/b/b;->f:Lcom/umeng/commonsdk/statistics/b/b$a;

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/b/b;->g:Lcom/umeng/commonsdk/statistics/proto/d;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/umeng/commonsdk/statistics/b/b;->i:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/b/b;
    .locals 2

    const-class v0, Lcom/umeng/commonsdk/statistics/b/b;

    monitor-enter v0

    .line 59
    :try_start_0
    sget-object v1, Lcom/umeng/commonsdk/statistics/b/b;->h:Lcom/umeng/commonsdk/statistics/b/b;

    if-nez v1, :cond_0

    .line 60
    new-instance v1, Lcom/umeng/commonsdk/statistics/b/b;

    invoke-direct {v1, p0}, Lcom/umeng/commonsdk/statistics/b/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/umeng/commonsdk/statistics/b/b;->h:Lcom/umeng/commonsdk/statistics/b/b;

    .line 61
    sget-object p0, Lcom/umeng/commonsdk/statistics/b/b;->h:Lcom/umeng/commonsdk/statistics/b/b;

    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/b/b;->d()V

    .line 64
    :cond_0
    sget-object p0, Lcom/umeng/commonsdk/statistics/b/b;->h:Lcom/umeng/commonsdk/statistics/b/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 58
    monitor-exit v0

    throw p0
.end method

.method private a(Lcom/umeng/commonsdk/statistics/proto/d;Lcom/umeng/commonsdk/statistics/proto/d;Ljava/util/Map;)Lcom/umeng/commonsdk/statistics/proto/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/umeng/commonsdk/statistics/proto/d;",
            "Lcom/umeng/commonsdk/statistics/proto/d;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/umeng/commonsdk/statistics/proto/d;"
        }
    .end annotation

    if-nez p2, :cond_0

    return-object p1

    .line 299
    :cond_0
    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/d;->c()Ljava/util/Map;

    move-result-object v0

    .line 300
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/d;->c()Ljava/util/Map;

    move-result-object v1

    .line 303
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 304
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-virtual {v3}, Lcom/umeng/commonsdk/statistics/proto/e;->d()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 305
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v3, Lcom/umeng/commonsdk/statistics/b/b;->e:Ljava/lang/Object;

    monitor-enter v3

    .line 307
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 308
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/commonsdk/statistics/proto/e;

    iget-object v2, v2, Lcom/umeng/commonsdk/statistics/proto/e;->a:Ljava/lang/String;

    .line 309
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/umeng/commonsdk/statistics/b/b;->d:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 311
    sget-object v5, Lcom/umeng/commonsdk/statistics/b/b;->d:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    .line 313
    invoke-interface {p3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 321
    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 322
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    iget-object v3, p0, Lcom/umeng/commonsdk/statistics/b/b;->f:Lcom/umeng/commonsdk/statistics/b/b$a;

    invoke-virtual {v3, v2}, Lcom/umeng/commonsdk/statistics/b/b$a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 327
    :cond_3
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/d;->f()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/umeng/commonsdk/statistics/proto/d;->a(I)Lcom/umeng/commonsdk/statistics/proto/d;

    .line 328
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/statistics/b/b;->a(Lcom/umeng/commonsdk/statistics/proto/d;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/umeng/commonsdk/statistics/proto/d;->a(Ljava/lang/String;)Lcom/umeng/commonsdk/statistics/proto/d;

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 290
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private c(Lcom/umeng/commonsdk/statistics/proto/d;)Z
    .locals 6

    .line 175
    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/d;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/statistics/b/b;->a(Lcom/umeng/commonsdk/statistics/proto/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 179
    :cond_0
    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/d;->c()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/commonsdk/statistics/proto/e;

    .line 180
    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/proto/e;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/a/a;->a(Ljava/lang/String;)[B

    move-result-object v2

    .line 181
    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/statistics/b/b;->a(Lcom/umeng/commonsdk/statistics/proto/e;)[B

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    .line 184
    aget-byte v4, v2, v3

    aget-byte v5, v0, v3

    if-eq v4, v5, :cond_2

    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private d(Lcom/umeng/commonsdk/statistics/proto/d;)Lcom/umeng/commonsdk/statistics/proto/d;
    .locals 5

    .line 334
    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/d;->c()Ljava/util/Map;

    move-result-object v0

    .line 335
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 337
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 338
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-virtual {v4}, Lcom/umeng/commonsdk/statistics/proto/e;->d()Z

    move-result v4

    if-nez v4, :cond_0

    .line 339
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 343
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 344
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method private d()V
    .locals 5

    .line 359
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/umeng/commonsdk/statistics/b/b;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".imprint"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 361
    sget-object v1, Lcom/umeng/commonsdk/statistics/b/b;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 362
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 369
    :try_start_1
    sget-object v2, Lcom/umeng/commonsdk/statistics/b/b;->i:Landroid/content/Context;

    const-string v3, ".imprint"

    invoke-virtual {v2, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 370
    :try_start_2
    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/a/c;->b(Ljava/io/InputStream;)[B

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 374
    :try_start_3
    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/a/c;->c(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v0, v3

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_1
    move-exception v3

    move-object v2, v0

    .line 372
    :goto_0
    :try_start_4
    invoke-static {v3}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 374
    :try_start_5
    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/a/c;->c(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_1
    if-eqz v0, :cond_1

    .line 379
    :try_start_6
    new-instance v2, Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-direct {v2}, Lcom/umeng/commonsdk/statistics/proto/d;-><init>()V

    .line 380
    new-instance v3, Lcom/umeng/commonsdk/proguard/ai;

    invoke-direct {v3}, Lcom/umeng/commonsdk/proguard/ai;-><init>()V

    invoke-virtual {v3, v2, v0}, Lcom/umeng/commonsdk/proguard/ai;->a(Lcom/umeng/commonsdk/proguard/l;[B)V

    .line 381
    iput-object v2, p0, Lcom/umeng/commonsdk/statistics/b/b;->g:Lcom/umeng/commonsdk/statistics/proto/d;

    .line 382
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/b/b;->f:Lcom/umeng/commonsdk/statistics/b/b$a;

    invoke-virtual {v0, v2}, Lcom/umeng/commonsdk/statistics/b/b$a;->a(Lcom/umeng/commonsdk/statistics/proto/d;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 384
    :try_start_7
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 387
    :cond_1
    :goto_2
    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    .line 374
    :goto_3
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/a/c;->c(Ljava/io/InputStream;)V

    throw v2

    :catchall_2
    move-exception v0

    .line 387
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0
.end method


# virtual methods
.method public declared-synchronized a()Lcom/umeng/commonsdk/statistics/proto/d;
    .locals 1

    monitor-enter p0

    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/b/b;->g:Lcom/umeng/commonsdk/statistics/proto/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/umeng/commonsdk/statistics/proto/d;)Ljava/lang/String;
    .locals 5

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    new-instance v1, Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/d;->c()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 160
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 161
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-virtual {v3}, Lcom/umeng/commonsdk/statistics/proto/e;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-virtual {v3}, Lcom/umeng/commonsdk/statistics/proto/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-virtual {v3}, Lcom/umeng/commonsdk/statistics/proto/e;->e()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 166
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-virtual {v2}, Lcom/umeng/commonsdk/statistics/proto/e;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 169
    :cond_1
    iget p1, p1, Lcom/umeng/commonsdk/statistics/proto/d;->b:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/umeng/commonsdk/statistics/c/g;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/b/b;->c:Lcom/umeng/commonsdk/statistics/c/g;

    return-void
.end method

.method public a(Lcom/umeng/commonsdk/statistics/proto/e;)[B
    .locals 6

    const/16 v0, 0x8

    .line 193
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 194
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 195
    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/e;->e()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 197
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 198
    sget-object v0, Lcom/umeng/commonsdk/statistics/b/b;->b:[B

    const/4 v1, 0x4

    .line 199
    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 202
    aget-byte v4, p1, v3

    aget-byte v5, v0, v3

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public b()Lcom/umeng/commonsdk/statistics/b/b$a;
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/b/b;->f:Lcom/umeng/commonsdk/statistics/b/b$a;

    return-object v0
.end method

.method public b(Lcom/umeng/commonsdk/statistics/proto/d;)V
    .locals 6

    if-nez p1, :cond_1

    .line 210
    sget-boolean p1, Lcom/umeng/commonsdk/statistics/a;->c:Z

    if-eqz p1, :cond_0

    const-string p1, "Imprint is null"

    .line 211
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/a/d;->a(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 215
    :cond_1
    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/statistics/b/b;->c(Lcom/umeng/commonsdk/statistics/proto/d;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 216
    sget-boolean p1, Lcom/umeng/commonsdk/statistics/a;->c:Z

    if-eqz p1, :cond_2

    const-string p1, "Imprint is not valid"

    .line 217
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/a/d;->d(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 220
    :cond_3
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/a;->c:Z

    if-eqz v0, :cond_4

    const-string v0, "Imprint is ok"

    .line 221
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/a/d;->a(Ljava/lang/String;)V

    .line 226
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 227
    monitor-enter p0

    .line 228
    :try_start_0
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/b/b;->g:Lcom/umeng/commonsdk/statistics/proto/d;

    const/4 v2, 0x0

    if-nez v1, :cond_5

    move-object v3, v2

    goto :goto_0

    .line 231
    :cond_5
    invoke-virtual {v1}, Lcom/umeng/commonsdk/statistics/proto/d;->i()Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-nez v1, :cond_6

    .line 233
    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/statistics/b/b;->d(Lcom/umeng/commonsdk/statistics/proto/d;)Lcom/umeng/commonsdk/statistics/proto/d;

    move-result-object p1

    goto :goto_1

    .line 235
    :cond_6
    invoke-direct {p0, v1, p1, v0}, Lcom/umeng/commonsdk/statistics/b/b;->a(Lcom/umeng/commonsdk/statistics/proto/d;Lcom/umeng/commonsdk/statistics/proto/d;Ljava/util/Map;)Lcom/umeng/commonsdk/statistics/proto/d;

    move-result-object p1

    .line 238
    :goto_1
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/b/b;->g:Lcom/umeng/commonsdk/statistics/proto/d;

    if-nez p1, :cond_7

    goto :goto_2

    .line 239
    :cond_7
    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/d;->i()Ljava/lang/String;

    move-result-object v2

    .line 240
    :goto_2
    invoke-direct {p0, v3, v2}, Lcom/umeng/commonsdk/statistics/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 243
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 245
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/b/b;->g:Lcom/umeng/commonsdk/statistics/proto/d;

    if-eqz v1, :cond_8

    .line 246
    sget-boolean v1, Lcom/umeng/commonsdk/statistics/a;->c:Z

    if-eqz p1, :cond_8

    .line 250
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/b/b;->f:Lcom/umeng/commonsdk/statistics/b/b$a;

    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/b/b;->g:Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-virtual {p1, v1}, Lcom/umeng/commonsdk/statistics/b/b$a;->a(Lcom/umeng/commonsdk/statistics/proto/d;)V

    .line 251
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/b/b;->c:Lcom/umeng/commonsdk/statistics/c/g;

    if-eqz p1, :cond_8

    .line 252
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/b/b;->c:Lcom/umeng/commonsdk/statistics/c/g;

    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/b/b;->f:Lcom/umeng/commonsdk/statistics/b/b$a;

    invoke-interface {p1, v1}, Lcom/umeng/commonsdk/statistics/c/g;->a(Lcom/umeng/commonsdk/statistics/b/b$a;)V

    .line 259
    :cond_8
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_b

    .line 262
    sget-object p1, Lcom/umeng/commonsdk/statistics/b/b;->e:Ljava/lang/Object;

    monitor-enter p1

    .line 263
    :try_start_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 264
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 265
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 266
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    sget-object v3, Lcom/umeng/commonsdk/statistics/b/b;->d:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 267
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--->>> target imprint key is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; value is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/a/i;->b(Ljava/lang/String;)V

    .line 268
    sget-object v3, Lcom/umeng/commonsdk/statistics/b/b;->d:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_9

    const/4 v4, 0x0

    .line 270
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_9

    .line 271
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/umeng/commonsdk/statistics/c/c;

    invoke-interface {v5, v2, v1}, Lcom/umeng/commonsdk/statistics/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 277
    :cond_a
    monitor-exit p1

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_b
    :goto_4
    return-void

    :catchall_1
    move-exception p1

    .line 243
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public c()V
    .locals 6

    .line 392
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/b/b;->g:Lcom/umeng/commonsdk/statistics/proto/d;

    if-nez v0, :cond_0

    return-void

    .line 397
    :cond_0
    :try_start_0
    sget-object v0, Lcom/umeng/commonsdk/statistics/b/b;->a:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    :try_start_1
    new-instance v1, Lcom/umeng/commonsdk/proguard/ak;

    invoke-direct {v1}, Lcom/umeng/commonsdk/proguard/ak;-><init>()V

    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/b/b;->g:Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-virtual {v1, v2}, Lcom/umeng/commonsdk/proguard/ak;->a(Lcom/umeng/commonsdk/proguard/l;)[B

    move-result-object v1

    .line 400
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/umeng/commonsdk/statistics/b/b;->i:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, ".imprint"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 403
    :try_start_2
    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 404
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 406
    :try_start_3
    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/a/c;->a(Ljava/io/OutputStream;)V

    .line 408
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 406
    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/a/c;->a(Ljava/io/OutputStream;)V

    throw v1

    :catchall_1
    move-exception v1

    .line 408
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 410
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
