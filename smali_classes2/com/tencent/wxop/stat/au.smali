.class public Lcom/tencent/wxop/stat/au;
.super Ljava/lang/Object;


# static fields
.field private static h:Lcom/tencent/wxop/stat/common/StatLogger;

.field private static i:Landroid/content/Context;

.field private static j:Lcom/tencent/wxop/stat/au;


# instance fields
.field volatile a:I

.field b:Lcom/tencent/wxop/stat/common/a;

.field private c:Lcom/tencent/wxop/stat/bc;

.field private d:Lcom/tencent/wxop/stat/bc;

.field private e:Lcom/tencent/wxop/stat/common/e;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private k:I

.field private l:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/tencent/wxop/stat/event/e;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/tencent/wxop/stat/common/l;->b()Lcom/tencent/wxop/stat/common/StatLogger;

    move-result-object v0

    sput-object v0, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/wxop/stat/au;->c:Lcom/tencent/wxop/stat/bc;

    iput-object v0, p0, Lcom/tencent/wxop/stat/au;->d:Lcom/tencent/wxop/stat/bc;

    iput-object v0, p0, Lcom/tencent/wxop/stat/au;->e:Lcom/tencent/wxop/stat/common/e;

    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/wxop/stat/au;->f:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/wxop/stat/au;->g:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/wxop/stat/au;->a:I

    iput-object v0, p0, Lcom/tencent/wxop/stat/au;->b:Lcom/tencent/wxop/stat/common/a;

    iput v1, p0, Lcom/tencent/wxop/stat/au;->k:I

    iput-object v0, p0, Lcom/tencent/wxop/stat/au;->l:Ljava/util/concurrent/ConcurrentHashMap;

    iput-boolean v1, p0, Lcom/tencent/wxop/stat/au;->m:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/wxop/stat/au;->n:Ljava/util/HashMap;

    :try_start_0
    new-instance v0, Lcom/tencent/wxop/stat/common/e;

    invoke-direct {v0}, Lcom/tencent/wxop/stat/common/e;-><init>()V

    iput-object v0, p0, Lcom/tencent/wxop/stat/au;->e:Lcom/tencent/wxop/stat/common/e;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/wxop/stat/au;->i:Landroid/content/Context;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/wxop/stat/au;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Lcom/tencent/wxop/stat/common/l;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wxop/stat/au;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "pri_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/wxop/stat/common/l;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wxop/stat/au;->g:Ljava/lang/String;

    new-instance p1, Lcom/tencent/wxop/stat/bc;

    sget-object v0, Lcom/tencent/wxop/stat/au;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/wxop/stat/au;->f:Ljava/lang/String;

    invoke-direct {p1, v0, v2}, Lcom/tencent/wxop/stat/bc;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/wxop/stat/au;->c:Lcom/tencent/wxop/stat/bc;

    new-instance p1, Lcom/tencent/wxop/stat/bc;

    sget-object v0, Lcom/tencent/wxop/stat/au;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/wxop/stat/au;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v2}, Lcom/tencent/wxop/stat/bc;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/wxop/stat/au;->d:Lcom/tencent/wxop/stat/bc;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/tencent/wxop/stat/au;->a(Z)V

    invoke-direct {p0, v1}, Lcom/tencent/wxop/stat/au;->a(Z)V

    invoke-direct {p0}, Lcom/tencent/wxop/stat/au;->f()V

    sget-object p1, Lcom/tencent/wxop/stat/au;->i:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/tencent/wxop/stat/au;->b(Landroid/content/Context;)Lcom/tencent/wxop/stat/common/a;

    invoke-virtual {p0}, Lcom/tencent/wxop/stat/au;->d()V

    invoke-direct {p0}, Lcom/tencent/wxop/stat/au;->j()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object v0, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v0, p1}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/wxop/stat/au;
    .locals 2

    sget-object v0, Lcom/tencent/wxop/stat/au;->j:Lcom/tencent/wxop/stat/au;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/wxop/stat/au;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/wxop/stat/au;->j:Lcom/tencent/wxop/stat/au;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/wxop/stat/au;

    invoke-direct {v1, p0}, Lcom/tencent/wxop/stat/au;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tencent/wxop/stat/au;->j:Lcom/tencent/wxop/stat/au;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/tencent/wxop/stat/au;->j:Lcom/tencent/wxop/stat/au;

    return-object p0
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/wxop/stat/bd;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "event_id in ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/wxop/stat/bd;

    iget-wide v3, v3, Lcom/tencent/wxop/stat/bd;->a:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, -0x1

    if-eq v2, v3, :cond_0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized a(IZ)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tencent/wxop/stat/au;->a:I

    if-lez v0, :cond_4

    if-lez p1, :cond_4

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Load "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/wxop/stat/au;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " unsent events"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v0, p1, p2}, Lcom/tencent/wxop/stat/au;->b(Ljava/util/List;IZ)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Peek "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " unsent events."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_2
    const/4 p1, 0x2

    invoke-direct {p0, v0, p1, p2}, Lcom/tencent/wxop/stat/au;->a(Ljava/util/List;IZ)V

    sget-object p1, Lcom/tencent/wxop/stat/au;->i:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/wxop/stat/i;->b(Landroid/content/Context;)Lcom/tencent/wxop/stat/i;

    move-result-object p1

    new-instance v1, Lcom/tencent/wxop/stat/ba;

    invoke-direct {v1, p0, v0, p2}, Lcom/tencent/wxop/stat/ba;-><init>(Lcom/tencent/wxop/stat/au;Ljava/util/List;Z)V

    invoke-virtual {p1, v0, v1}, Lcom/tencent/wxop/stat/i;->b(Ljava/util/List;Lcom/tencent/wxop/stat/h;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    sget-object p2, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {p2, p1}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/tencent/wxop/stat/au;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/wxop/stat/au;->i()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/wxop/stat/au;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/wxop/stat/au;->b(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/wxop/stat/au;Lcom/tencent/wxop/stat/event/e;Lcom/tencent/wxop/stat/h;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/wxop/stat/au;->b(Lcom/tencent/wxop/stat/event/e;Lcom/tencent/wxop/stat/h;ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/wxop/stat/au;Lcom/tencent/wxop/stat/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/wxop/stat/au;->b(Lcom/tencent/wxop/stat/f;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/wxop/stat/au;Ljava/util/List;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/wxop/stat/au;->a(Ljava/util/List;IZ)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/wxop/stat/au;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/wxop/stat/au;->a(Ljava/util/List;Z)V

    return-void
.end method

.method private a(Lcom/tencent/wxop/stat/event/e;Lcom/tencent/wxop/stat/h;Z)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p3}, Lcom/tencent/wxop/stat/au;->c(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    if-nez p3, :cond_0

    iget p3, p0, Lcom/tencent/wxop/stat/au;->a:I

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->getMaxStoreEventCount()I

    move-result v3

    if-le p3, v3, :cond_0

    sget-object p3, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v3, "Too many events stored in db."

    invoke-virtual {p3, v3}, Lcom/tencent/wxop/stat/common/StatLogger;->warn(Ljava/lang/Object;)V

    iget p3, p0, Lcom/tencent/wxop/stat/au;->a:I

    iget-object v3, p0, Lcom/tencent/wxop/stat/au;->c:Lcom/tencent/wxop/stat/bc;

    invoke-virtual {v3}, Lcom/tencent/wxop/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "events"

    const-string v5, "event_id in (select event_id from events where timestamp in (select min(timestamp) from events) limit 1)"

    invoke-virtual {v3, v4, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    sub-int/2addr p3, v3

    iput p3, p0, Lcom/tencent/wxop/stat/au;->a:I

    :cond_0
    new-instance p3, Landroid/content/ContentValues;

    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/wxop/stat/event/e;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "insert 1 event, content:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_1
    invoke-static {v3}, Lcom/tencent/wxop/stat/common/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "content"

    invoke-virtual {p3, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "send_count"

    const-string v4, "0"

    invoke-virtual {p3, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "status"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "timestamp"

    invoke-virtual {p1}, Lcom/tencent/wxop/stat/event/e;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "events"

    invoke-virtual {v2, v3, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p3

    sget-object v1, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v1, p3}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p3

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v2, v1

    goto :goto_2

    :catch_2
    move-exception p3

    :goto_0
    const-wide/16 v3, -0x1

    :try_start_3
    sget-object v2, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v2, p3}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    :goto_1
    const-wide/16 v1, 0x0

    cmp-long p3, v3, v1

    if-lez p3, :cond_4

    iget p3, p0, Lcom/tencent/wxop/stat/au;->a:I

    add-int/2addr p3, v0

    iput p3, p0, Lcom/tencent/wxop/stat/au;->a:I

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result p3

    if-eqz p3, :cond_3

    sget-object p3, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "directStoreEvent insert event to db, event:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/wxop/stat/event/e;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/tencent/wxop/stat/common/StatLogger;->d(Ljava/lang/Object;)V

    :cond_3
    if-eqz p2, :cond_5

    invoke-interface {p2}, Lcom/tencent/wxop/stat/h;->a()V

    return-void

    :cond_4
    sget-object p2, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Failed to store event:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/wxop/stat/event/e;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    :cond_5
    return-void

    :goto_2
    if-eqz v2, :cond_6

    :try_start_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception p2

    sget-object p3, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {p3, p2}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    throw p1
.end method

.method private declared-synchronized a(Ljava/util/List;IZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/wxop/stat/bd;",
            ">;IZ)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0, p3}, Lcom/tencent/wxop/stat/au;->b(Z)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v1, 0x0

    :try_start_2
    invoke-direct {p0, p3}, Lcom/tencent/wxop/stat/au;->c(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "update events set status="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", send_count=send_count+1  where "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/tencent/wxop/stat/au;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :catch_0
    move-exception p1

    move-object v1, p3

    goto/16 :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "update events set status="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " where "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/tencent/wxop/stat/au;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Lcom/tencent/wxop/stat/au;->k:I

    rem-int/lit8 p2, p2, 0x3

    if-nez p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "delete from events where send_count>"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v1, p2

    :cond_2
    iget p2, p0, Lcom/tencent/wxop/stat/au;->k:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/tencent/wxop/stat/au;->k:I

    :goto_0
    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p2, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "update sql:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-virtual {p3, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    if-eqz v1, :cond_4

    sget-object p1, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "update for delete sql:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    invoke-virtual {p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/wxop/stat/au;->f()V

    :cond_4
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p3, :cond_5

    :try_start_4
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit p0

    return-void

    :catch_1
    move-exception p1

    :try_start_5
    sget-object p2, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {p2, p1}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    move-object p3, v1

    goto :goto_2

    :catch_2
    move-exception p1

    :goto_1
    :try_start_6
    sget-object p2, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {p2, p1}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_5

    :try_start_7
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    monitor-exit p0

    return-void

    :catch_3
    move-exception p1

    :try_start_8
    sget-object p2, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {p2, p1}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    monitor-exit p0

    return-void

    :cond_5
    monitor-exit p0

    return-void

    :goto_2
    if-eqz p3, :cond_6

    :try_start_9
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_3

    :catch_4
    move-exception p2

    :try_start_a
    sget-object p3, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {p3, p2}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized a(Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/wxop/stat/bd;",
            ">;Z)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Delete "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " events, important:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "event_id in ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/wxop/stat/bd;

    iget-wide v3, v3, Lcom/tencent/wxop/stat/bd;->a:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v2, -0x1

    if-eq v1, v3, :cond_2

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 p1, 0x0

    :try_start_2
    invoke-direct {p0, p2}, Lcom/tencent/wxop/stat/au;->c(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v1, "events"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v1, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "delete "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " event "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", success delete:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_4
    iget v0, p0, Lcom/tencent/wxop/stat/au;->a:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/tencent/wxop/stat/au;->a:I

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-direct {p0}, Lcom/tencent/wxop/stat/au;->f()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p2, :cond_5

    :try_start_4
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    :try_start_5
    sget-object p2, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {p2, p1}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p2

    move-object v5, p2

    move-object p2, p1

    move-object p1, v5

    goto :goto_2

    :catch_2
    move-exception p2

    move-object v5, p2

    move-object p2, p1

    move-object p1, v5

    :goto_1
    :try_start_6
    sget-object v0, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v0, p1}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz p2, :cond_5

    :try_start_7
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    monitor-exit p0

    return-void

    :catch_3
    move-exception p1

    :try_start_8
    sget-object p2, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {p2, p1}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    monitor-exit p0

    return-void

    :cond_5
    monitor-exit p0

    return-void

    :goto_2
    if-eqz p2, :cond_6

    :try_start_9
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_3

    :catch_4
    move-exception p2

    :try_start_a
    sget-object v0, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v0, p2}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(Z)V
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/wxop/stat/au;->c(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "status"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "events"

    const-string v3, "status=?"

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-wide/16 v5, 0x2

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {p1, v1, v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "update "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " unsent events."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    :try_start_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object v0, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v0, p1}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    goto :goto_1

    :catch_2
    move-exception p1

    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    :goto_0
    :try_start_3
    sget-object v1, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_2

    :try_start_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    return-void

    :goto_1
    if-eqz p1, :cond_3

    :try_start_5
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    sget-object v1, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v1, p1}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v0
.end method

.method private b(Z)I
    .locals 0

    if-nez p1, :cond_0

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->getMaxSendRetryCount()I

    move-result p1

    return p1

    :cond_0
    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->getMaxImportantDataSendRetryCount()I

    move-result p1

    return p1
.end method

.method public static b()Lcom/tencent/wxop/stat/au;
    .locals 1

    sget-object v0, Lcom/tencent/wxop/stat/au;->j:Lcom/tencent/wxop/stat/au;

    return-object v0
.end method

.method private b(IZ)V
    .locals 7

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/tencent/wxop/stat/au;->g()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/tencent/wxop/stat/au;->h()I

    move-result p1

    :cond_1
    :goto_0
    if-lez p1, :cond_5

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->getSendPeriodMinutes()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->getNumEventsCommitPerSec()I

    move-result v1

    mul-int v0, v0, v1

    if-le p1, v0, :cond_2

    if-lez v0, :cond_2

    move p1, v0

    :cond_2
    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->a()I

    move-result v1

    div-int v2, p1, v1

    rem-int v3, p1, v1

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sentStoreEventsByDb sendNumbers="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",important="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",maxSendNumPerFor1Period="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",maxCount="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",restNumbers="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-ge p1, v2, :cond_4

    invoke-direct {p0, v1, p2}, Lcom/tencent/wxop/stat/au;->a(IZ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    if-lez v3, :cond_5

    invoke-direct {p0, v3, p2}, Lcom/tencent/wxop/stat/au;->a(IZ)V

    :cond_5
    return-void
.end method

.method private declared-synchronized b(Lcom/tencent/wxop/stat/event/e;Lcom/tencent/wxop/stat/h;ZZ)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->getMaxStoreEventCount()I

    move-result v0

    if-lez v0, :cond_5

    sget v0, Lcom/tencent/wxop/stat/StatConfig;->m:I

    if-lez v0, :cond_4

    if-nez p3, :cond_4

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    sget p3, Lcom/tencent/wxop/stat/StatConfig;->m:I

    if-lez p3, :cond_5

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result p3

    if-eqz p3, :cond_1

    sget-object p3, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "cacheEventsInMemory.size():"

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wxop/stat/au;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",numEventsCachedInMemory:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/tencent/wxop/stat/StatConfig;->m:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",numStoredEvents:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/tencent/wxop/stat/au;->a:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    sget-object p3, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "cache event:"

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/wxop/stat/event/e;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_1
    iget-object p3, p0, Lcom/tencent/wxop/stat/au;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string p4, ""

    invoke-virtual {p3, p1, p4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/tencent/wxop/stat/au;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p1

    sget p3, Lcom/tencent/wxop/stat/StatConfig;->m:I

    if-lt p1, p3, :cond_2

    invoke-direct {p0}, Lcom/tencent/wxop/stat/au;->i()V

    :cond_2
    if-eqz p2, :cond_5

    iget-object p1, p0, Lcom/tencent/wxop/stat/au;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p1

    if-lez p1, :cond_3

    invoke-direct {p0}, Lcom/tencent/wxop/stat/au;->i()V

    :cond_3
    invoke-interface {p2}, Lcom/tencent/wxop/stat/h;->a()V

    goto :goto_1

    :cond_4
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/wxop/stat/au;->a(Lcom/tencent/wxop/stat/event/e;Lcom/tencent/wxop/stat/h;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized b(Lcom/tencent/wxop/stat/f;)V
    .locals 12

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/tencent/wxop/stat/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/wxop/stat/common/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "content"

    iget-object v5, p1, Lcom/tencent/wxop/stat/f;->b:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "md5sum"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p1, Lcom/tencent/wxop/stat/f;->c:Ljava/lang/String;

    const-string v2, "version"

    iget v4, p1, Lcom/tencent/wxop/stat/f;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/tencent/wxop/stat/au;->c:Lcom/tencent/wxop/stat/bc;

    invoke-virtual {v2}, Lcom/tencent/wxop/stat/bc;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "config"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iget v7, p1, Lcom/tencent/wxop/stat/f;->a:I

    if-ne v4, v7, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    iget-object v7, p0, Lcom/tencent/wxop/stat/au;->c:Lcom/tencent/wxop/stat/bc;

    invoke-virtual {v7}, Lcom/tencent/wxop/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    if-ne v5, v4, :cond_2

    iget-object v0, p0, Lcom/tencent/wxop/stat/au;->c:Lcom/tencent/wxop/stat/bc;

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v4, "config"

    const-string v7, "type=?"

    new-array v5, v5, [Ljava/lang/String;

    iget p1, p1, Lcom/tencent/wxop/stat/f;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v6

    invoke-virtual {v0, v4, v3, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long v3, p1

    goto :goto_1

    :cond_2
    const-string v4, "type"

    iget p1, p1, Lcom/tencent/wxop/stat/f;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p1, p0, Lcom/tencent/wxop/stat/au;->c:Lcom/tencent/wxop/stat/bc;

    invoke-virtual {p1}, Lcom/tencent/wxop/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v4, "config"

    invoke-virtual {p1, v4, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    :goto_1
    const-wide/16 v5, -0x1

    cmp-long p1, v3, v5

    if-nez p1, :cond_3

    sget-object p1, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Failed to store cfg:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    sget-object p1, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Sucessed to store cfg:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->d(Ljava/lang/Object;)V

    :goto_2
    iget-object p1, p0, Lcom/tencent/wxop/stat/au;->c:Lcom/tencent/wxop/stat/bc;

    invoke-virtual {p1}, Lcom/tencent/wxop/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_4

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_4
    :try_start_3
    iget-object p1, p0, Lcom/tencent/wxop/stat/au;->c:Lcom/tencent/wxop/stat/bc;

    invoke-virtual {p1}, Lcom/tencent/wxop/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit p0

    return-void

    :catch_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    move-object v0, v2

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v2, v0

    goto :goto_4

    :catch_2
    move-exception p1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v1, p1}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_5

    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_5
    :try_start_6
    iget-object p1, p0, Lcom/tencent/wxop/stat/au;->c:Lcom/tencent/wxop/stat/bc;

    invoke-virtual {p1}, Lcom/tencent/wxop/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    monitor-exit p0

    return-void

    :catch_3
    monitor-exit p0

    return-void

    :goto_4
    if-eqz v2, :cond_6

    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception p1

    goto :goto_6

    :cond_6
    :goto_5
    :try_start_8
    iget-object v0, p0, Lcom/tencent/wxop/stat/au;->c:Lcom/tencent/wxop/stat/bc;

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catch_4
    :try_start_9
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_6
    monitor-exit p0

    throw p1
.end method

.method private b(Ljava/util/List;IZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/wxop/stat/bd;",
            ">;IZ)V"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p3}, Lcom/tencent/wxop/stat/au;->d(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "events"

    const/4 v3, 0x0

    const-string v4, "status=?"

    const/4 p3, 0x1

    new-array v5, p3, [Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x0

    aput-object v6, v5, v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/tencent/wxop/stat/StatConfig;->g:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/tencent/wxop/stat/common/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v4, v0

    const/4 v0, 0x2

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v0, 0x3

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    new-instance v9, Lcom/tencent/wxop/stat/bd;

    move-object v1, v9

    move-wide v2, v7

    move v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/wxop/stat/bd;-><init>(JLjava/lang/String;II)V

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "peek event, id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",send_count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",timestamp="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x4

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_1
    invoke-interface {p1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v0, p2

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object p2, v0

    goto :goto_2

    :catch_1
    move-exception p1

    :goto_1
    :try_start_2
    sget-object p2, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {p2, p1}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void

    :goto_2
    if-eqz p2, :cond_4

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p1
.end method

.method private c(Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/wxop/stat/au;->c:Lcom/tencent/wxop/stat/bc;

    :goto_0
    invoke-virtual {p1}, Lcom/tencent/wxop/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/tencent/wxop/stat/au;->d:Lcom/tencent/wxop/stat/bc;

    goto :goto_0
.end method

.method private d(Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/wxop/stat/au;->c:Lcom/tencent/wxop/stat/bc;

    :goto_0
    invoke-virtual {p1}, Lcom/tencent/wxop/stat/bc;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/tencent/wxop/stat/au;->d:Lcom/tencent/wxop/stat/bc;

    goto :goto_0
.end method

.method static synthetic e()Lcom/tencent/wxop/stat/common/StatLogger;
    .locals 1

    sget-object v0, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    return-object v0
.end method

.method private f()V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/wxop/stat/au;->g()I

    move-result v0

    invoke-direct {p0}, Lcom/tencent/wxop/stat/au;->h()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/wxop/stat/au;->a:I

    return-void
.end method

.method private g()I
    .locals 2

    iget-object v0, p0, Lcom/tencent/wxop/stat/au;->c:Lcom/tencent/wxop/stat/bc;

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/bc;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "events"

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private h()I
    .locals 2

    iget-object v0, p0, Lcom/tencent/wxop/stat/au;->d:Lcom/tencent/wxop/stat/bc;

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/bc;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "events"

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private i()V
    .locals 11

    iget-boolean v0, p0, Lcom/tencent/wxop/stat/au;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/wxop/stat/au;->l:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/wxop/stat/au;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/wxop/stat/au;->m:Z

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "insert "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/wxop/stat/au;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " events ,numEventsCachedInMemory:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/tencent/wxop/stat/StatConfig;->m:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",numStoredEvents:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/tencent/wxop/stat/au;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :cond_2
    const/4 v2, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/tencent/wxop/stat/au;->c:Lcom/tencent/wxop/stat/bc;

    invoke-virtual {v3}, Lcom/tencent/wxop/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    iget-object v4, p0, Lcom/tencent/wxop/stat/au;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/wxop/stat/event/e;

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v5}, Lcom/tencent/wxop/stat/event/e;->g()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v8

    if-eqz v8, :cond_3

    sget-object v8, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "insert content:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_3
    invoke-static {v7}, Lcom/tencent/wxop/stat/common/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "content"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "send_count"

    const-string v8, "0"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "status"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "timestamp"

    invoke-virtual {v5}, Lcom/tencent/wxop/stat/event/e;->c()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "events"

    invoke-virtual {v3, v5, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_5

    :try_start_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-direct {p0}, Lcom/tencent/wxop/stat/au;->f()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catch_0
    move-exception v1

    :try_start_4
    sget-object v2, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    :goto_1
    invoke-virtual {v2, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v2, v3

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v3, v2

    goto :goto_4

    :catch_2
    move-exception v1

    :goto_2
    :try_start_5
    sget-object v3, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v3, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_5

    :try_start_6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-direct {p0}, Lcom/tencent/wxop/stat/au;->f()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    :catch_3
    move-exception v1

    :try_start_7
    sget-object v2, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    goto :goto_1

    :cond_5
    :goto_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/wxop/stat/au;->m:Z

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "after insert, cacheEventsInMemory.size():"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/wxop/stat/au;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",numEventsCachedInMemory:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/tencent/wxop/stat/StatConfig;->m:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",numStoredEvents:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tencent/wxop/stat/au;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_6
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    return-void

    :goto_4
    if-eqz v3, :cond_7

    :try_start_8
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-direct {p0}, Lcom/tencent/wxop/stat/au;->f()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_5

    :catch_4
    move-exception v2

    :try_start_9
    sget-object v3, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v3, v2}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    :cond_7
    :goto_5
    throw v1

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v1
.end method

.method private j()V
    .locals 11

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/wxop/stat/au;->c:Lcom/tencent/wxop/stat/bc;

    invoke-virtual {v1}, Lcom/tencent/wxop/stat/bc;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "keyvalues"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wxop/stat/au;->n:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_1
    :try_start_2
    sget-object v2, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v2, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/tencent/wxop/stat/au;->a:I

    return v0
.end method

.method a(I)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/wxop/stat/au;->e:Lcom/tencent/wxop/stat/common/e;

    new-instance v1, Lcom/tencent/wxop/stat/bb;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wxop/stat/bb;-><init>(Lcom/tencent/wxop/stat/au;I)V

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/e;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method a(Lcom/tencent/wxop/stat/event/e;Lcom/tencent/wxop/stat/h;ZZ)V
    .locals 8

    iget-object v0, p0, Lcom/tencent/wxop/stat/au;->e:Lcom/tencent/wxop/stat/common/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wxop/stat/au;->e:Lcom/tencent/wxop/stat/common/e;

    new-instance v7, Lcom/tencent/wxop/stat/ay;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/tencent/wxop/stat/ay;-><init>(Lcom/tencent/wxop/stat/au;Lcom/tencent/wxop/stat/event/e;Lcom/tencent/wxop/stat/h;ZZ)V

    invoke-virtual {v0, v7}, Lcom/tencent/wxop/stat/common/e;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method a(Lcom/tencent/wxop/stat/f;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/wxop/stat/au;->e:Lcom/tencent/wxop/stat/common/e;

    new-instance v1, Lcom/tencent/wxop/stat/az;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wxop/stat/az;-><init>(Lcom/tencent/wxop/stat/au;Lcom/tencent/wxop/stat/f;)V

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/e;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method a(Ljava/util/List;IZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/wxop/stat/bd;",
            ">;IZZ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/wxop/stat/au;->e:Lcom/tencent/wxop/stat/common/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wxop/stat/au;->e:Lcom/tencent/wxop/stat/common/e;

    new-instance v7, Lcom/tencent/wxop/stat/av;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/tencent/wxop/stat/av;-><init>(Lcom/tencent/wxop/stat/au;Ljava/util/List;IZZ)V

    invoke-virtual {v0, v7}, Lcom/tencent/wxop/stat/common/e;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method a(Ljava/util/List;ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/wxop/stat/bd;",
            ">;ZZ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/wxop/stat/au;->e:Lcom/tencent/wxop/stat/common/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wxop/stat/au;->e:Lcom/tencent/wxop/stat/common/e;

    new-instance v1, Lcom/tencent/wxop/stat/aw;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/tencent/wxop/stat/aw;-><init>(Lcom/tencent/wxop/stat/au;Ljava/util/List;ZZ)V

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/e;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized b(Landroid/content/Context;)Lcom/tencent/wxop/stat/common/a;
    .locals 19

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-object v2, v1, Lcom/tencent/wxop/stat/au;->b:Lcom/tencent/wxop/stat/common/a;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/tencent/wxop/stat/au;->b:Lcom/tencent/wxop/stat/common/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    monitor-exit p0

    return-object v2

    :cond_0
    :try_start_1
    iget-object v3, v1, Lcom/tencent/wxop/stat/au;->c:Lcom/tencent/wxop/stat/bc;

    invoke-virtual {v3}, Lcom/tencent/wxop/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-eqz v3, :cond_1

    :try_start_2
    sget-object v3, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v4, "try to load user info from db."

    invoke-virtual {v3, v4}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    const/4 v6, 0x0

    goto/16 :goto_15

    :catch_0
    move-exception v0

    move-object v2, v0

    const/4 v6, 0x0

    goto/16 :goto_11

    :cond_1
    :goto_0
    :try_start_3
    iget-object v3, v1, Lcom/tencent/wxop/stat/au;->c:Lcom/tencent/wxop/stat/bc;

    invoke-virtual {v3}, Lcom/tencent/wxop/stat/bc;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "user"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    const-wide/16 v5, 0x3e8

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v4, :cond_a

    :try_start_5
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/wxop/stat/common/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v11, 0x2

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x3

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v17, v3

    :try_start_6
    div-long v2, v15, v5

    if-eq v10, v8, :cond_2

    mul-long v13, v13, v5

    invoke-static {v13, v14}, Lcom/tencent/wxop/stat/common/l;->a(J)Ljava/lang/String;

    move-result-object v13

    mul-long v14, v2, v5

    invoke-static {v14, v15}, Lcom/tencent/wxop/stat/common/l;->a(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    const/4 v13, 0x1

    goto :goto_1

    :cond_2
    move v13, v10

    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/tencent/wxop/stat/common/l;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    or-int/lit8 v13, v13, 0x2

    :cond_3
    const-string v12, ","

    invoke-virtual {v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    array-length v14, v12

    if-lez v14, :cond_6

    aget-object v14, v12, v7

    if-eqz v14, :cond_5

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v5, 0xb

    if-ge v15, v5, :cond_4

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    goto :goto_4

    :cond_5
    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/tencent/wxop/stat/common/r;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v15, 0xa

    if-le v6, v15, :cond_4

    move-object v14, v5

    goto :goto_3

    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/tencent/wxop/stat/common/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    move-object v14, v9

    :goto_3
    const/4 v5, 0x1

    :goto_4
    if-eqz v12, :cond_7

    array-length v6, v12

    if-lt v6, v11, :cond_7

    aget-object v6, v12, v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ","

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/tencent/wxop/stat/common/l;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v5, 0x1

    :cond_8
    :goto_5
    new-instance v11, Lcom/tencent/wxop/stat/common/a;

    invoke-direct {v11, v14, v6, v13}, Lcom/tencent/wxop/stat/common/a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v11, v1, Lcom/tencent/wxop/stat/au;->b:Lcom/tencent/wxop/stat/common/a;

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v9}, Lcom/tencent/wxop/stat/common/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "uid"

    invoke-virtual {v6, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "user_type"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "app_ver"

    invoke-static/range {p1 .. p1}, Lcom/tencent/wxop/stat/common/l;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "ts"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v6, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz v5, :cond_9

    iget-object v2, v1, Lcom/tencent/wxop/stat/au;->c:Lcom/tencent/wxop/stat/bc;

    invoke-virtual {v2}, Lcom/tencent/wxop/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "user"

    const-string v5, "uid=?"

    new-array v9, v8, [Ljava/lang/String;

    aput-object v4, v9, v7

    invoke-virtual {v2, v3, v6, v5, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_9
    if-eq v13, v10, :cond_b

    iget-object v2, v1, Lcom/tencent/wxop/stat/au;->c:Lcom/tencent/wxop/stat/bc;

    invoke-virtual {v2}, Lcom/tencent/wxop/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "user"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 v17, v3

    :goto_6
    move-object v2, v0

    move-object/from16 v6, v17

    goto/16 :goto_15

    :catch_1
    move-exception v0

    move-object/from16 v17, v3

    :goto_7
    move-object v2, v0

    move-object/from16 v6, v17

    goto/16 :goto_11

    :cond_a
    move-object/from16 v17, v3

    const/4 v8, 0x0

    :cond_b
    :goto_8
    if-nez v8, :cond_d

    invoke-static/range {p1 .. p1}, Lcom/tencent/wxop/stat/common/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/tencent/wxop/stat/common/l;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    :cond_c
    move-object v4, v2

    :goto_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v8, 0x3e8

    div-long/2addr v5, v8

    invoke-static/range {p1 .. p1}, Lcom/tencent/wxop/stat/common/l;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v4}, Lcom/tencent/wxop/stat/common/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v10, "uid"

    invoke-virtual {v9, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "user_type"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "app_ver"

    invoke-virtual {v9, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "ts"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v4, v1, Lcom/tencent/wxop/stat/au;->c:Lcom/tencent/wxop/stat/bc;

    invoke-virtual {v4}, Lcom/tencent/wxop/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "user"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    new-instance v4, Lcom/tencent/wxop/stat/common/a;

    invoke-direct {v4, v2, v3, v7}, Lcom/tencent/wxop/stat/common/a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v4, v1, Lcom/tencent/wxop/stat/au;->b:Lcom/tencent/wxop/stat/common/a;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_a

    :catchall_2
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_7

    :cond_d
    :goto_a
    :try_start_7
    iget-object v2, v1, Lcom/tencent/wxop/stat/au;->c:Lcom/tencent/wxop/stat/bc;

    invoke-virtual {v2}, Lcom/tencent/wxop/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v17, :cond_e

    move-object/from16 v4, v17

    :try_start_8
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_b

    :catch_3
    move-exception v0

    move-object v2, v0

    goto :goto_c

    :cond_e
    :goto_b
    iget-object v2, v1, Lcom/tencent/wxop/stat/au;->c:Lcom/tencent/wxop/stat/bc;

    invoke-virtual {v2}, Lcom/tencent/wxop/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    goto :goto_14

    :goto_c
    :try_start_9
    sget-object v3, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    :goto_d
    invoke-virtual {v3, v2}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    goto :goto_14

    :catchall_3
    move-exception v0

    move-object/from16 v4, v17

    goto :goto_e

    :catch_4
    move-exception v0

    move-object/from16 v4, v17

    goto :goto_f

    :catchall_4
    move-exception v0

    move-object v4, v3

    :goto_e
    move-object v2, v0

    move-object v6, v4

    goto :goto_15

    :catch_5
    move-exception v0

    move-object v4, v3

    :goto_f
    move-object v2, v0

    move-object v6, v4

    goto :goto_11

    :catchall_5
    move-exception v0

    const/4 v6, 0x0

    :goto_10
    move-object v2, v0

    goto :goto_15

    :catch_6
    move-exception v0

    const/4 v6, 0x0

    move-object v2, v0

    :goto_11
    :try_start_a
    sget-object v3, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v3, v2}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    if-eqz v6, :cond_f

    :try_start_b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_12

    :catch_7
    move-exception v0

    move-object v2, v0

    goto :goto_13

    :cond_f
    :goto_12
    iget-object v2, v1, Lcom/tencent/wxop/stat/au;->c:Lcom/tencent/wxop/stat/bc;

    invoke-virtual {v2}, Lcom/tencent/wxop/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    goto :goto_14

    :goto_13
    :try_start_c
    sget-object v3, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    goto :goto_d

    :goto_14
    iget-object v2, v1, Lcom/tencent/wxop/stat/au;->b:Lcom/tencent/wxop/stat/common/a;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    monitor-exit p0

    return-object v2

    :catchall_6
    move-exception v0

    goto :goto_10

    :goto_15
    if-eqz v6, :cond_10

    :try_start_d
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_16

    :catch_8
    move-exception v0

    move-object v3, v0

    goto :goto_17

    :cond_10
    :goto_16
    iget-object v3, v1, Lcom/tencent/wxop/stat/au;->c:Lcom/tencent/wxop/stat/bc;

    invoke-virtual {v3}, Lcom/tencent/wxop/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_18

    :goto_17
    :try_start_e
    sget-object v4, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v4, v3}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    :goto_18
    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :catchall_7
    move-exception v0

    move-object v2, v0

    monitor-exit p0

    throw v2
.end method

.method c()V
    .locals 2

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wxop/stat/au;->e:Lcom/tencent/wxop/stat/common/e;

    new-instance v1, Lcom/tencent/wxop/stat/ax;

    invoke-direct {v1, p0}, Lcom/tencent/wxop/stat/ax;-><init>(Lcom/tencent/wxop/stat/au;)V

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/e;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method d()V
    .locals 11

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/wxop/stat/au;->c:Lcom/tencent/wxop/stat/bc;

    invoke-virtual {v1}, Lcom/tencent/wxop/stat/bc;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "config"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    new-instance v5, Lcom/tencent/wxop/stat/f;

    invoke-direct {v5, v0}, Lcom/tencent/wxop/stat/f;-><init>(I)V

    iput v0, v5, Lcom/tencent/wxop/stat/f;->a:I

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, v5, Lcom/tencent/wxop/stat/f;->b:Lorg/json/JSONObject;

    iput-object v3, v5, Lcom/tencent/wxop/stat/f;->c:Ljava/lang/String;

    iput v4, v5, Lcom/tencent/wxop/stat/f;->d:I

    sget-object v0, Lcom/tencent/wxop/stat/au;->i:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/tencent/wxop/stat/StatConfig;->a(Landroid/content/Context;Lcom/tencent/wxop/stat/f;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_1
    :try_start_2
    sget-object v2, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v2, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method
