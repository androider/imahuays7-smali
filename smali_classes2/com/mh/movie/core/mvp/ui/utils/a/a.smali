.class public Lcom/mh/movie/core/mvp/ui/utils/a/a;
.super Ljava/lang/Object;
.source "CheckDomainUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/utils/a/a$a;
    }
.end annotation


# static fields
.field private static a:Lcom/mh/movie/core/b/c; = null

.field private static b:Z = false

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:Lcom/mh/movie/core/mvp/ui/utils/a/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    sget-object v0, Lcom/mh/movie/core/mvp/ui/utils/a/a$a;->c:Lcom/mh/movie/core/mvp/ui/utils/a/a$a;

    sput-object v0, Lcom/mh/movie/core/mvp/ui/utils/a/a;->f:Lcom/mh/movie/core/mvp/ui/utils/a/a$a;

    return-void
.end method

.method static synthetic a()I
    .locals 1

    .line 27
    sget v0, Lcom/mh/movie/core/mvp/ui/utils/a/a;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/mh/movie/core/mvp/ui/utils/a/a;->c:I

    return v0
.end method

.method static synthetic a(I)I
    .locals 0

    .line 27
    sput p0, Lcom/mh/movie/core/mvp/ui/utils/a/a;->c:I

    return p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .line 63
    invoke-static {p0}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getDomainModel(Landroid/content/Context;)Lcom/mh/movie/core/mvp/model/entity/Domain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/Domain;->getAPI_URL()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mh/movie/core/mvp/ui/utils/a/a;->d(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 112
    sget-boolean v0, Lcom/mh/movie/core/mvp/ui/utils/a/a;->b:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/mh/movie/core/mvp/ui/utils/TimeUtils;->canRetry(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/a/a;->d()V

    .line 116
    invoke-static {p0, p1}, Lcom/mh/movie/core/mvp/ui/utils/a/a;->b(Landroid/content/Context;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Landroid/content/Context;Lokhttp3/Response;)V
    .locals 0

    .line 27
    invoke-static {p0, p1}, Lcom/mh/movie/core/mvp/ui/utils/a/a;->b(Landroid/content/Context;Lokhttp3/Response;)V

    return-void
.end method

.method static synthetic b()I
    .locals 1

    .line 27
    sget v0, Lcom/mh/movie/core/mvp/ui/utils/a/a;->d:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/mh/movie/core/mvp/ui/utils/a/a;->d:I

    return v0
.end method

.method static synthetic b(I)I
    .locals 0

    .line 27
    sput p0, Lcom/mh/movie/core/mvp/ui/utils/a/a;->d:I

    return p0
.end method

.method static synthetic b(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-static {p0}, Lcom/mh/movie/core/mvp/ui/utils/a/a;->c(Landroid/content/Context;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 129
    sget-boolean v0, Lcom/mh/movie/core/mvp/ui/b;->j:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 133
    sput-boolean v0, Lcom/mh/movie/core/mvp/ui/utils/a/a;->b:Z

    .line 135
    invoke-static {}, Lcom/mh/movie/core/b/c;->a()Lcom/mh/movie/core/b/c;

    move-result-object v0

    sput-object v0, Lcom/mh/movie/core/mvp/ui/utils/a/a;->a:Lcom/mh/movie/core/b/c;

    const/4 v0, 0x0

    .line 137
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 139
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 142
    sget-object v2, Lcom/mh/movie/core/mvp/ui/utils/a/a;->a:Lcom/mh/movie/core/b/c;

    new-instance v3, Lcom/mh/movie/core/mvp/ui/utils/a/a$1;

    invoke-direct {v3, p1, p0}, Lcom/mh/movie/core/mvp/ui/utils/a/a$1;-><init>(Ljava/util/List;Landroid/content/Context;)V

    invoke-virtual {v2, v1, v3}, Lcom/mh/movie/core/b/c;->a(Ljava/lang/String;Lokhttp3/Callback;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static b(Landroid/content/Context;Lokhttp3/Response;)V
    .locals 3

    .line 252
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/a/a;->e()V

    .line 253
    sget-object v0, Lcom/mh/movie/core/mvp/ui/utils/a/a;->f:Lcom/mh/movie/core/mvp/ui/utils/a/a$a;

    monitor-enter v0

    .line 254
    :try_start_0
    sget-object v1, Lcom/mh/movie/core/mvp/ui/utils/a/a;->f:Lcom/mh/movie/core/mvp/ui/utils/a/a$a;

    sget-object v2, Lcom/mh/movie/core/mvp/ui/utils/a/a$a;->c:Lcom/mh/movie/core/mvp/ui/utils/a/a$a;

    if-ne v1, v2, :cond_1

    .line 255
    sget-object v1, Lcom/mh/movie/core/mvp/ui/utils/a/a$a;->a:Lcom/mh/movie/core/mvp/ui/utils/a/a$a;

    sput-object v1, Lcom/mh/movie/core/mvp/ui/utils/a/a;->f:Lcom/mh/movie/core/mvp/ui/utils/a/a$a;

    .line 258
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 262
    :try_start_1
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 264
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_0
    const-string v0, "==mahuaBegin==([0-9a-f]+)==mahuaEnd=="

    .line 269
    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/AesUtil;->getSubUtilSimple(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 270
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/AesUtil;->getKey(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/AesUtil;->decryptHex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 274
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/a/b;->a(Ljava/lang/String;)Lcom/mh/movie/core/mvp/model/entity/Domain;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "DOMAIN_KEY_DOMAIN"

    .line 279
    invoke-static {p0, v1, p1}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/Domain;->getAPI_URL()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->setGlobalDomain(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 257
    :cond_1
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 258
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method static synthetic c()V
    .locals 0

    .line 27
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/a/a;->d()V

    return-void
.end method

.method private static c(Landroid/content/Context;)V
    .locals 8

    .line 218
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 219
    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    .line 220
    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    .line 221
    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0xa

    if-le v5, v6, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    :goto_0
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    goto :goto_0

    .line 224
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v5, v6, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    goto :goto_2

    .line 225
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mahua_android"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://www."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/mh/movie/core/mvp/ui/utils/AesUtil;->getKey(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mh/movie/core/mvp/ui/utils/AesUtil;->encryptToHex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".com"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-static {}, Lcom/mh/movie/core/b/c;->a()Lcom/mh/movie/core/b/c;

    move-result-object v1

    new-instance v2, Lcom/mh/movie/core/mvp/ui/utils/a/a$3;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/ui/utils/a/a$3;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0, v2}, Lcom/mh/movie/core/b/c;->a(Ljava/lang/String;Lokhttp3/Callback;)V

    return-void
.end method

.method static synthetic c(Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    .line 27
    invoke-static {p0, p1}, Lcom/mh/movie/core/mvp/ui/utils/a/a;->e(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method private static d()V
    .locals 2

    const/4 v0, 0x0

    .line 314
    sput-boolean v0, Lcom/mh/movie/core/mvp/ui/utils/a/a;->b:Z

    .line 315
    sget-object v1, Lcom/mh/movie/core/mvp/ui/utils/a/a$a;->c:Lcom/mh/movie/core/mvp/ui/utils/a/a$a;

    sput-object v1, Lcom/mh/movie/core/mvp/ui/utils/a/a;->f:Lcom/mh/movie/core/mvp/ui/utils/a/a$a;

    const/4 v1, 0x0

    .line 316
    sput-object v1, Lcom/mh/movie/core/mvp/ui/utils/a/a;->a:Lcom/mh/movie/core/b/c;

    .line 317
    sput v0, Lcom/mh/movie/core/mvp/ui/utils/a/a;->c:I

    .line 318
    sput v0, Lcom/mh/movie/core/mvp/ui/utils/a/a;->d:I

    .line 319
    sput v0, Lcom/mh/movie/core/mvp/ui/utils/a/a;->e:I

    return-void
.end method

.method private static d(Landroid/content/Context;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 70
    sget-boolean v0, Lcom/mh/movie/core/mvp/ui/b;->j:Z

    if-nez v0, :cond_0

    return-void

    .line 74
    :cond_0
    invoke-static {p0}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getLastDomain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 78
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, -0x1

    if-ge v2, v3, :cond_2

    .line 79
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    :goto_1
    if-eq v2, v4, :cond_4

    .line 88
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v2, v0, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 98
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 99
    invoke-static {p0, p1}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->setGlobalDomain(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 90
    :cond_4
    :goto_2
    invoke-static {p0}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getDomainModel(Landroid/content/Context;)Lcom/mh/movie/core/mvp/model/entity/Domain;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/Domain;->getAPI_URL()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 91
    invoke-static {p0, p1}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->setGlobalDomain(Landroid/content/Context;Ljava/lang/String;)V

    .line 94
    invoke-static {p0}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getDomainModel(Landroid/content/Context;)Lcom/mh/movie/core/mvp/model/entity/Domain;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/Domain;->getBLOG_URL()Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/mh/movie/core/mvp/ui/utils/a/a;->a(Landroid/content/Context;Ljava/util/List;)V

    :goto_3
    return-void
.end method

.method private static e()V
    .locals 2

    const/4 v0, 0x0

    .line 323
    sput-boolean v0, Lcom/mh/movie/core/mvp/ui/utils/a/a;->b:Z

    const/4 v1, 0x0

    .line 324
    sput-object v1, Lcom/mh/movie/core/mvp/ui/utils/a/a;->a:Lcom/mh/movie/core/b/c;

    .line 325
    sput v0, Lcom/mh/movie/core/mvp/ui/utils/a/a;->c:I

    .line 326
    sput v0, Lcom/mh/movie/core/mvp/ui/utils/a/a;->d:I

    .line 327
    sput v0, Lcom/mh/movie/core/mvp/ui/utils/a/a;->e:I

    return-void
.end method

.method private static e(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 173
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 176
    sget v1, Lcom/mh/movie/core/mvp/ui/utils/a/a;->d:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 179
    sget-object v2, Lcom/mh/movie/core/mvp/ui/utils/a/a;->a:Lcom/mh/movie/core/b/c;

    new-instance v3, Lcom/mh/movie/core/mvp/ui/utils/a/a$2;

    invoke-direct {v3, v0, p0, p1}, Lcom/mh/movie/core/mvp/ui/utils/a/a$2;-><init>(ILandroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v2, v1, v3}, Lcom/mh/movie/core/b/c;->a(Ljava/lang/String;Lokhttp3/Callback;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
