.class public Lanetwork/channel/statist/a;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static a:Lanetwork/channel/statist/a;


# instance fields
.field private b:Z

.field private c:J

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-direct {p0}, Lanetwork/channel/statist/a;->b()V

    return-void
.end method

.method public static a()Lanetwork/channel/statist/a;
    .locals 2

    .line 33
    sget-object v0, Lanetwork/channel/statist/a;->a:Lanetwork/channel/statist/a;

    if-nez v0, :cond_1

    .line 34
    const-class v0, Lanetwork/channel/statist/a;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lanetwork/channel/statist/a;->a:Lanetwork/channel/statist/a;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lanetwork/channel/statist/a;

    invoke-direct {v1}, Lanetwork/channel/statist/a;-><init>()V

    sput-object v1, Lanetwork/channel/statist/a;->a:Lanetwork/channel/statist/a;

    .line 38
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 40
    :cond_1
    :goto_0
    sget-object v0, Lanetwork/channel/statist/a;->a:Lanetwork/channel/statist/a;

    return-object v0
.end method

.method private b()V
    .locals 2

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lanetwork/channel/statist/a;->b:Z

    const-wide/16 v0, 0x0

    .line 45
    iput-wide v0, p0, Lanetwork/channel/statist/a;->c:J

    .line 46
    iput-wide v0, p0, Lanetwork/channel/statist/a;->f:J

    .line 47
    iget-object v0, p0, Lanetwork/channel/statist/a;->d:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lanetwork/channel/statist/a;->d:Ljava/util/Set;

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lanetwork/channel/statist/a;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 52
    :goto_0
    iget-object v0, p0, Lanetwork/channel/statist/a;->e:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lanetwork/channel/statist/a;->e:Ljava/util/Set;

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 5

    .line 63
    iget-object v0, p0, Lanetwork/channel/statist/a;->e:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lanetwork/channel/statist/a;->e:Ljava/util/Set;

    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lanetwork/channel/statist/a;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :goto_0
    const/4 v0, 0x2

    .line 68
    invoke-static {v0}, Lanet/channel/h/a;->a(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v0, "awcn.StatisticReqTimes"

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "urlsFromOrange: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v2, v4}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 73
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 75
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lanetwork/channel/statist/a;->e:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "awcn.StatisticReqTimes"

    const-string v0, "whiteReqUrls from orange isnot json format"

    .line 79
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2, v1}, Lanet/channel/h/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
