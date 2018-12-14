.class public Lcom/tencent/wxop/stat/a;
.super Ljava/lang/Object;


# static fields
.field private static g:Lcom/tencent/wxop/stat/a;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile b:I

.field private volatile c:Ljava/lang/String;

.field private volatile d:Lorg/apache/http/HttpHost;

.field private e:Lcom/tencent/wxop/stat/common/e;

.field private f:I

.field private h:Landroid/content/Context;

.field private i:Lcom/tencent/wxop/stat/common/StatLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/wxop/stat/a;->a:Ljava/util/List;

    const/4 v1, 0x2

    iput v1, p0, Lcom/tencent/wxop/stat/a;->b:I

    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/wxop/stat/a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/wxop/stat/a;->d:Lorg/apache/http/HttpHost;

    iput-object v0, p0, Lcom/tencent/wxop/stat/a;->e:Lcom/tencent/wxop/stat/common/e;

    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/wxop/stat/a;->f:I

    iput-object v0, p0, Lcom/tencent/wxop/stat/a;->h:Landroid/content/Context;

    iput-object v0, p0, Lcom/tencent/wxop/stat/a;->i:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wxop/stat/a;->h:Landroid/content/Context;

    new-instance v0, Lcom/tencent/wxop/stat/common/e;

    invoke-direct {v0}, Lcom/tencent/wxop/stat/common/e;-><init>()V

    iput-object v0, p0, Lcom/tencent/wxop/stat/a;->e:Lcom/tencent/wxop/stat/common/e;

    invoke-static {p1}, Lcom/tencent/wxop/stat/i;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/tencent/wxop/stat/common/l;->b()Lcom/tencent/wxop/stat/common/StatLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wxop/stat/a;->i:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-direct {p0}, Lcom/tencent/wxop/stat/a;->l()V

    invoke-direct {p0}, Lcom/tencent/wxop/stat/a;->i()V

    invoke-virtual {p0}, Lcom/tencent/wxop/stat/a;->g()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/wxop/stat/a;
    .locals 2

    sget-object v0, Lcom/tencent/wxop/stat/a;->g:Lcom/tencent/wxop/stat/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/wxop/stat/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/wxop/stat/a;->g:Lcom/tencent/wxop/stat/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/wxop/stat/a;

    invoke-direct {v1, p0}, Lcom/tencent/wxop/stat/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tencent/wxop/stat/a;->g:Lcom/tencent/wxop/stat/a;

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
    sget-object p0, Lcom/tencent/wxop/stat/a;->g:Lcom/tencent/wxop/stat/a;

    return-object p0
.end method

.method static synthetic a(Lcom/tencent/wxop/stat/a;)Lcom/tencent/wxop/stat/common/e;
    .locals 0

    iget-object p0, p0, Lcom/tencent/wxop/stat/a;->e:Lcom/tencent/wxop/stat/common/e;

    return-object p0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "(2[5][0-5]|2[0-4]\\d|1\\d{2}|\\d{1,2})\\.(25[0-5]|2[0-4]\\d|1\\d{2}|\\d{1,2})\\.(25[0-5]|2[0-4]\\d|1\\d{2}|\\d{1,2})\\.(25[0-5]|2[0-4]\\d|1\\d{2}|\\d{1,2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method

.method private i()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/wxop/stat/a;->a:Ljava/util/List;

    iget-object v0, p0, Lcom/tencent/wxop/stat/a;->a:Ljava/util/List;

    const-string v1, "117.135.169.101"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/wxop/stat/a;->a:Ljava/util/List;

    const-string v1, "140.207.54.125"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/wxop/stat/a;->a:Ljava/util/List;

    const-string v1, "180.153.8.53"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/wxop/stat/a;->a:Ljava/util/List;

    const-string v1, "120.198.203.175"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/wxop/stat/a;->a:Ljava/util/List;

    const-string v1, "14.17.43.18"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/wxop/stat/a;->a:Ljava/util/List;

    const-string v1, "163.177.71.186"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/wxop/stat/a;->a:Ljava/util/List;

    const-string v1, "111.30.131.31"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/wxop/stat/a;->a:Ljava/util/List;

    const-string v1, "123.126.121.167"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/wxop/stat/a;->a:Ljava/util/List;

    const-string v1, "123.151.152.111"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/wxop/stat/a;->a:Ljava/util/List;

    const-string v1, "113.142.45.79"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/wxop/stat/a;->a:Ljava/util/List;

    const-string v1, "123.138.162.90"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/wxop/stat/a;->a:Ljava/util/List;

    const-string v1, "103.7.30.94"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private j()Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "pingma.qq.com"

    invoke-direct {p0, v0}, Lcom/tencent/wxop/stat/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/wxop/stat/a;->i:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private k()V
    .locals 4

    invoke-direct {p0}, Lcom/tencent/wxop/stat/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/wxop/stat/a;->i:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "remoteIp ip is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_0
    invoke-static {v0}, Lcom/tencent/wxop/stat/common/l;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tencent/wxop/stat/a;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/tencent/wxop/stat/a;->a:Ljava/util/List;

    iget v2, p0, Lcom/tencent/wxop/stat/a;->f:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/wxop/stat/a;->i:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not in ip list, change to:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->w(Ljava/lang/Object;)V

    :cond_2
    move-object v0, v1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":80/mstat/report"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/wxop/stat/StatConfig;->setStatReportUrl(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private l()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/wxop/stat/a;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/wxop/stat/a;->d:Lorg/apache/http/HttpHost;

    iput-object v0, p0, Lcom/tencent/wxop/stat/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lorg/apache/http/HttpHost;
    .locals 1

    iget-object v0, p0, Lcom/tencent/wxop/stat/a;->d:Lorg/apache/http/HttpHost;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 9

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wxop/stat/a;->i:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateIpList "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/tencent/wxop/stat/common/l;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-lez p1, :cond_4

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/wxop/stat/common/l;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    invoke-static {v5}, Lcom/tencent/wxop/stat/common/l;->c(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x1

    if-le v6, v7, :cond_3

    aget-object v5, v5, v3

    invoke-direct {p0, v5}, Lcom/tencent/wxop/stat/a;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/tencent/wxop/stat/a;->a:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/tencent/wxop/stat/a;->i:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "add new ip:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_2
    iget-object v6, p0, Lcom/tencent/wxop/stat/a;->a:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/tencent/wxop/stat/a;->i:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v0, p1}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    :cond_4
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iget-object v0, p0, Lcom/tencent/wxop/stat/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    iput p1, p0, Lcom/tencent/wxop/stat/a;->f:I

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/wxop/stat/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/tencent/wxop/stat/a;->b:I

    return v0
.end method

.method public d()V
    .locals 2

    iget v0, p0, Lcom/tencent/wxop/stat/a;->f:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/tencent/wxop/stat/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/wxop/stat/a;->f:I

    return-void
.end method

.method public e()Z
    .locals 2

    iget v0, p0, Lcom/tencent/wxop/stat/a;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .locals 1

    iget v0, p0, Lcom/tencent/wxop/stat/a;->b:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method g()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/wxop/stat/a;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/wxop/stat/common/r;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/tencent/wxop/stat/StatConfig;->g:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/wxop/stat/a;->k()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/wxop/stat/a;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/wxop/stat/common/l;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wxop/stat/a;->c:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/wxop/stat/a;->i:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NETWORK name:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/wxop/stat/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/wxop/stat/a;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/wxop/stat/common/l;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "WIFI"

    iget-object v1, p0, Lcom/tencent/wxop/stat/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/tencent/wxop/stat/a;->b:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/tencent/wxop/stat/a;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/wxop/stat/common/l;->a(Landroid/content/Context;)Lorg/apache/http/HttpHost;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wxop/stat/a;->d:Lorg/apache/http/HttpHost;

    :cond_3
    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tencent/wxop/stat/a;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/wxop/stat/StatServiceImpl;->d(Landroid/content/Context;)V

    return-void

    :cond_4
    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/wxop/stat/a;->i:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v1, "NETWORK TYPE: network is close."

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_5
    invoke-direct {p0}, Lcom/tencent/wxop/stat/a;->l()V

    :cond_6
    return-void
.end method

.method public h()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/wxop/stat/a;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/tencent/wxop/stat/b;

    invoke-direct {v1, p0}, Lcom/tencent/wxop/stat/b;-><init>(Lcom/tencent/wxop/stat/a;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
