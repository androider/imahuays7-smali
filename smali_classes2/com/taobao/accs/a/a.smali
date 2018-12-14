.class public Lcom/taobao/accs/a/a;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/a/a$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String; = null

.field public static final b:Ljava/lang/String;

.field public static c:Z = false

.field private static d:Ljava/io/File;

.field private static e:Ljava/io/File;

.field private static f:J

.field private static final g:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/taobao/accs/a/a;->g:Ljava/util/Random;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.taobao.accs.intent.action."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/taobao/accs/client/b;->a:Lcom/taobao/accs/client/AccsConfig$ACCS_GROUP;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "ELECTION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/a/a;->b:Ljava/lang/String;

    return-void
.end method

.method public static final a(Landroid/content/Context;)Lcom/taobao/accs/a/a$a;
    .locals 5

    .line 156
    invoke-static {}, Lcom/taobao/accs/a/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    new-instance p0, Lcom/taobao/accs/a/a$a;

    invoke-direct {p0}, Lcom/taobao/accs/a/a$a;-><init>()V

    return-object p0

    .line 160
    :cond_0
    invoke-static {p0}, Lcom/taobao/accs/client/a;->a(Landroid/content/Context;)Lcom/taobao/accs/client/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/accs/client/a;->f()Lcom/taobao/accs/a/a$a;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string p0, "ElectionServiceUtil"

    const-string v1, "getElectionResult from mem"

    const/4 v2, 0x4

    .line 162
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "host"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, v0, Lcom/taobao/accs/a/a$a;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "retry"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, v0, Lcom/taobao/accs/a/a$a;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 165
    :cond_1
    invoke-static {p0}, Lcom/taobao/accs/a/a;->b(Landroid/content/Context;)Lcom/taobao/accs/a/a$a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Ljava/io/File;)Ljava/io/File;
    .locals 0

    .line 39
    sput-object p0, Lcom/taobao/accs/a/a;->d:Ljava/io/File;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 398
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_2

    :cond_0
    const-wide/16 v1, -0x1

    .line 404
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 407
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 410
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 411
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 412
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 413
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v6, v4

    cmp-long v4, v6, v1

    if-lez v4, :cond_2

    .line 416
    invoke-interface {v3}, Ljava/util/List;->clear()V

    move-wide v1, v6

    :cond_2
    cmp-long v4, v6, v1

    if-nez v4, :cond_1

    .line 419
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 422
    :cond_3
    sget-object p1, Lcom/taobao/accs/a/a;->g:Ljava/util/Random;

    const/16 v1, 0x2710

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    .line 423
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr p1, v1

    .line 424
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 425
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    .line 428
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p0, "ElectionServiceUtil"

    const-string v1, "localElection localResult null, user curr app"

    const/4 v2, 0x2

    .line 429
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "pkg"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    aput-object p1, v2, v0

    invoke-static {p0, v1, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-object p1

    :cond_5
    :goto_2
    const-string p0, "ElectionServiceUtil"

    const-string p1, "localElection failed, packMap null"

    .line 399
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static a([B)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 299
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V

    .line 300
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "blacklist"

    .line 301
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 302
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 303
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    .line 304
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 305
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "sdkvs"

    .line 306
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v5, "pkg"

    .line 307
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v4, :cond_2

    .line 308
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 309
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    const/4 v6, 0x0

    .line 310
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 311
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 313
    :cond_1
    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v0, v2

    goto :goto_4

    :cond_4
    :goto_2
    :try_start_2
    const-string p0, "ElectionServiceUtil"

    const-string v2, "praseBlackList"

    const/4 v3, 0x2

    .line 317
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "blacklist"

    aput-object v4, v3, v1

    if-nez v0, :cond_5

    const-string v4, "null"

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {p0, v2, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception p0

    :goto_4
    const-string v2, "ElectionServiceUtil"

    const-string v3, "praseBlackList"

    .line 319
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, p0, v1}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_5
    return-object v0
.end method

.method public static a()V
    .locals 4

    const/4 v0, 0x0

    .line 76
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/taobao/accs/a/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    sput-object v1, Lcom/taobao/accs/a/a;->d:Ljava/io/File;

    const-string v1, "ElectionServiceUtil"

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/taobao/accs/a/a;->d:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/taobao/accs/a/a;->d:Ljava/io/File;

    const-string v3, "accs_election"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lcom/taobao/accs/a/a;->e:Ljava/io/File;

    .line 79
    sget-object v1, Lcom/taobao/accs/a/a;->e:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/taobao/accs/a/a;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ElectionServiceUtil"

    const-string v3, "ElectionServiceUtil"

    .line 81
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v0}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final a(Landroid/content/Context;Lcom/taobao/accs/a/a$a;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 97
    :cond_0
    invoke-static {p0}, Lcom/taobao/accs/client/a;->a(Landroid/content/Context;)Lcom/taobao/accs/client/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/accs/client/a;->a(Lcom/taobao/accs/a/a$a;)V

    .line 99
    new-instance v0, Lcom/taobao/accs/a/b;

    invoke-direct {v0, p0, p1}, Lcom/taobao/accs/a/b;-><init>(Landroid/content/Context;Lcom/taobao/accs/a/a$a;)V

    invoke-static {v0}, Lcom/taobao/accs/common/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final a(Landroid/content/Context;[B)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p1, :cond_1

    .line 224
    sget-object v3, Lcom/taobao/accs/a/a;->d:Ljava/io/File;

    if-nez v3, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/taobao/accs/a/a;->d:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/accs_blacklist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ElectionServiceUtil"

    const-string v5, "saveBlackList"

    .line 229
    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "path"

    aput-object v6, v2, v1

    aput-object v3, v2, v0

    invoke-static {v4, v5, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    invoke-static {p0}, Lcom/taobao/accs/client/a;->a(Landroid/content/Context;)Lcom/taobao/accs/client/a;

    move-result-object v0

    invoke-static {p1}, Lcom/taobao/accs/a/a;->a([B)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/accs/client/a;->a(Ljava/util/Map;)V

    .line 231
    new-instance v0, Lcom/taobao/accs/a/c;

    invoke-direct {v0, p0, p1, v3}, Lcom/taobao/accs/a/c;-><init>(Landroid/content/Context;[BLjava/lang/String;)V

    invoke-static {v0}, Lcom/taobao/accs/common/a;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "ElectionServiceUtil"

    const-string v3, "saveBlackList null"

    const/4 v4, 0x4

    .line 225
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "data"

    aput-object v5, v4, v1

    aput-object p1, v4, v0

    const-string p1, "path"

    aput-object p1, v4, v2

    const/4 p1, 0x3

    sget-object v0, Lcom/taobao/accs/a/a;->d:Ljava/io/File;

    aput-object v0, v4, p1

    invoke-static {p0, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 8

    .line 335
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p2, v4, :cond_1

    :try_start_0
    const-string p0, "ElectionServiceUtil"

    const-string v5, "checkApp election version not match"

    const/4 v6, 0x6

    .line 342
    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "package"

    aput-object v7, v6, v1

    aput-object p1, v6, v4

    const-string p1, "require"

    aput-object p1, v6, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v2

    const-string p1, "self ver"

    aput-object p1, v6, v0

    const/4 p1, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v6, p1

    invoke-static {p0, v5, v6}, Lcom/taobao/accs/utl/ALog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :catch_0
    move-exception p0

    goto/16 :goto_0

    .line 347
    :cond_1
    invoke-static {p1}, Lcom/taobao/accs/internal/c;->a(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p0, "ElectionServiceUtil"

    const-string p2, "checkApp is unbinded"

    .line 348
    new-array v0, v3, [Ljava/lang/Object;

    const-string v2, "package"

    aput-object v2, v0, v1

    aput-object p1, v0, v4

    invoke-static {p0, p2, v0}, Lcom/taobao/accs/utl/ALog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 351
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 352
    invoke-virtual {p2, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    if-nez p2, :cond_3

    const-string p0, "ElectionServiceUtil"

    const-string p2, "checkApp applicaton info null"

    .line 356
    new-array v0, v3, [Ljava/lang/Object;

    const-string v2, "package"

    aput-object v2, v0, v1

    aput-object p1, v0, v4

    invoke-static {p0, p2, v0}, Lcom/taobao/accs/utl/ALog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 360
    :cond_3
    iget-boolean p2, p2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez p2, :cond_4

    const-string p0, "ElectionServiceUtil"

    const-string p2, "checkApp is disabled"

    .line 361
    new-array v0, v3, [Ljava/lang/Object;

    const-string v2, "package"

    aput-object v2, v0, v1

    aput-object p1, v0, v4

    invoke-static {p0, p2, v0}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 366
    :cond_4
    invoke-static {p0}, Lcom/taobao/accs/a/a;->d(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_8

    const-string p2, "ElectionServiceUtil"

    const-string v5, "checkApp"

    .line 368
    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "blackList"

    aput-object v7, v6, v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {p2, v5, v6}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    const/4 v5, -0x1

    const/16 v6, 0xdd

    if-eqz p2, :cond_6

    .line 370
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    :cond_5
    const-string p0, "ElectionServiceUtil"

    const-string p2, "checkApp in blacklist"

    .line 371
    new-array v0, v0, [Ljava/lang/Object;

    const-string v5, "package"

    aput-object v5, v0, v1

    aput-object p1, v0, v4

    const-string p1, "sdkv"

    aput-object p1, v0, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {p0, p2, v0}, Lcom/taobao/accs/utl/ALog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_6
    const-string p2, "*"

    .line 374
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-eqz p0, :cond_8

    .line 375
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_7
    const-string p0, "ElectionServiceUtil"

    const-string p2, "checkApp in blacklist *"

    .line 376
    new-array v0, v0, [Ljava/lang/Object;

    const-string v5, "package"

    aput-object v5, v0, v1

    aput-object p1, v0, v4

    const-string p1, "sdkv"

    aput-object p1, v0, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {p0, p2, v0}, Lcom/taobao/accs/utl/ALog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_8
    const/4 v1, 0x1

    goto :goto_1

    :goto_0
    const-string p1, "ElectionServiceUtil"

    const-string p2, "checkApp error"

    .line 383
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, p0, v0}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_1
    return v1
.end method

.method public static final b(Landroid/content/Context;)Lcom/taobao/accs/a/a$a;
    .locals 13

    .line 180
    new-instance v0, Lcom/taobao/accs/a/a$a;

    invoke-direct {v0}, Lcom/taobao/accs/a/a$a;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 183
    :try_start_0
    sget-object v3, Lcom/taobao/accs/a/a;->d:Ljava/io/File;

    if-nez v3, :cond_0

    .line 184
    invoke-static {}, Lcom/taobao/accs/a/a;->a()V

    .line 186
    :cond_0
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/taobao/accs/a/a;->a:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 188
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 189
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v2

    .line 190
    new-array v2, v2, [B

    .line 191
    invoke-virtual {v4, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 192
    new-instance v3, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v3, v2, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 193
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_3

    const-string v3, "package"

    .line 195
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 196
    invoke-static {p0, v3}, Lcom/taobao/accs/utl/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 197
    iput-object v3, v0, Lcom/taobao/accs/a/a$a;->a:Ljava/lang/String;

    const-string v3, "lastFlushTime"

    .line 198
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    sput-wide v5, Lcom/taobao/accs/a/a;->f:J

    .line 200
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-wide v7, Lcom/taobao/accs/a/a;->f:J

    const-wide/32 v9, 0x5265c00

    add-long v11, v7, v9

    cmp-long v3, v5, v11

    if-gez v3, :cond_2

    const-string v3, "retry"

    .line 201
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/taobao/accs/a/a$a;->b:I

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x0

    .line 203
    sput-wide v2, Lcom/taobao/accs/a/a;->f:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_0
    move-object v2, v4

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v2, v4

    goto :goto_4

    :catch_0
    move-exception p0

    move-object v2, v4

    goto :goto_2

    :cond_4
    :goto_1
    :try_start_2
    const-string v3, "ElectionServiceUtil"

    const-string v4, "getElectionResult"

    const/4 v5, 0x4

    .line 207
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "host"

    aput-object v6, v5, v1

    const/4 v6, 0x1

    iget-object v7, v0, Lcom/taobao/accs/a/a$a;->a:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "retry"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget v7, v0, Lcom/taobao/accs/a/a$a;->b:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    invoke-static {p0}, Lcom/taobao/accs/client/a;->a(Landroid/content/Context;)Lcom/taobao/accs/client/a;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/taobao/accs/client/a;->a(Lcom/taobao/accs/a/a$a;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_5

    .line 214
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p0

    :goto_2
    :try_start_4
    const-string v3, "ElectionServiceUtil"

    const-string v4, "readFile is error"

    .line 210
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, p0, v1}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_5

    .line 214
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    .line 216
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    return-object v0

    :goto_4
    if-eqz v2, :cond_6

    .line 214
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    .line 216
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 217
    :cond_6
    :goto_5
    throw p0
.end method

.method static synthetic b(Ljava/io/File;)Ljava/io/File;
    .locals 0

    .line 39
    sput-object p0, Lcom/taobao/accs/a/a;->e:Ljava/io/File;

    return-object p0
.end method

.method public static final b()Z
    .locals 4

    .line 171
    sget-boolean v0, Lcom/taobao/accs/a/a;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "ElectionServiceUtil"

    const-string v1, "try Election Fail, disable election!!"

    const/4 v2, 0x0

    .line 172
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 175
    :cond_0
    invoke-static {}, Lcom/taobao/accs/utl/j;->c()Z

    move-result v0

    return v0
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    .line 475
    sget-object v0, Lcom/taobao/accs/client/b;->a:Lcom/taobao/accs/client/AccsConfig$ACCS_GROUP;

    sget-object v1, Lcom/taobao/accs/client/AccsConfig$ACCS_GROUP;->TAOBAO:Lcom/taobao/accs/client/AccsConfig$ACCS_GROUP;

    if-ne v0, v1, :cond_0

    const-string v0, "com.taobao.accs.intent.action.ELECTION"

    return-object v0

    .line 478
    :cond_0
    sget-object v0, Lcom/taobao/accs/a/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static final c(Landroid/content/Context;)V
    .locals 4

    const-string v0, "ElectionServiceUtil"

    const-string v1, "clearBlackList"

    const/4 v2, 0x0

    .line 250
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    invoke-static {p0}, Lcom/taobao/accs/client/a;->a(Landroid/content/Context;)Lcom/taobao/accs/client/a;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/taobao/accs/client/a;->a(Ljava/util/Map;)V

    .line 252
    sget-object p0, Lcom/taobao/accs/a/a;->d:Ljava/io/File;

    if-nez p0, :cond_0

    const-string p0, "ElectionServiceUtil"

    const-string v0, "clearBlackList path null"

    .line 253
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 257
    :cond_0
    :try_start_0
    new-instance p0, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/taobao/accs/a/a;->d:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "accs_blacklist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ElectionServiceUtil"

    const-string v1, "clearBlackList"

    .line 262
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, p0, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 2

    .line 483
    sget-object v0, Lcom/taobao/accs/client/b;->a:Lcom/taobao/accs/client/AccsConfig$ACCS_GROUP;

    sget-object v1, Lcom/taobao/accs/client/AccsConfig$ACCS_GROUP;->TAOBAO:Lcom/taobao/accs/client/AccsConfig$ACCS_GROUP;

    if-ne v0, v1, :cond_0

    const-string v0, "/accs/accs_main/1"

    return-object v0

    .line 486
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/accs/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/taobao/accs/client/b;->a:Lcom/taobao/accs/client/AccsConfig$ACCS_GROUP;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final d(Landroid/content/Context;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 269
    invoke-static {p0}, Lcom/taobao/accs/client/a;->a(Landroid/content/Context;)Lcom/taobao/accs/client/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/accs/client/a;->e()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "ElectionServiceUtil"

    const-string v2, "getBlackList from mem"

    const/4 v3, 0x1

    .line 272
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p0, v2, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 276
    :cond_0
    sget-object v2, Lcom/taobao/accs/a/a;->d:Ljava/io/File;

    if-nez v2, :cond_1

    const-string p0, "ElectionServiceUtil"

    const-string v0, "getBlackList path null"

    .line 277
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    .line 282
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/taobao/accs/a/a;->d:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "accs_blacklist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/taobao/accs/utl/e;->a(Ljava/io/File;)[B

    move-result-object v2

    if-eqz v2, :cond_2

    .line 284
    invoke-static {v2}, Lcom/taobao/accs/a/a;->a([B)Ljava/util/Map;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "ElectionServiceUtil"

    const-string v4, "getBlackList"

    .line 287
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v2, v1}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 289
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/taobao/accs/client/a;->a(Landroid/content/Context;)Lcom/taobao/accs/client/a;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/taobao/accs/client/a;->a(Ljava/util/Map;)V

    return-object v0
.end method

.method static synthetic e()Ljava/io/File;
    .locals 1

    .line 39
    sget-object v0, Lcom/taobao/accs/a/a;->d:Ljava/io/File;

    return-object v0
.end method

.method public static final e(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 443
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 444
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/taobao/accs/a/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p0, v2, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "ElectionServiceUtil"

    const-string v2, "getResolveService resolveInfo null"

    .line 447
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 450
    :cond_0
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz p0, :cond_3

    .line 451
    invoke-virtual {p0}, Landroid/content/pm/ServiceInfo;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 455
    :cond_1
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 457
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p0, "ElectionServiceUtil"

    const-string v2, "getResolveService clientPack null"

    .line 458
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :cond_2
    :try_start_1
    const-string v0, "ElectionServiceUtil"

    const-string v2, "getResolveService"

    const/4 v3, 0x2

    .line 463
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "package"

    aput-object v4, v3, v1

    const/4 v4, 0x1

    aput-object p0, v3, v4

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, p0

    move-object p0, v5

    goto :goto_1

    :cond_3
    :goto_0
    :try_start_2
    const-string p0, "ElectionServiceUtil"

    const-string v2, "getResolveService serviceinfo null or disabled"

    .line 452
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    :catch_1
    move-exception p0

    :goto_1
    const-string v2, "ElectionServiceUtil"

    const-string v3, "getResolveService error"

    .line 465
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, p0, v1}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move-object p0, v0

    :goto_2
    return-object p0
.end method

.method static synthetic f()Ljava/io/File;
    .locals 1

    .line 39
    sget-object v0, Lcom/taobao/accs/a/a;->e:Ljava/io/File;

    return-object v0
.end method

.method static synthetic g()J
    .locals 2

    .line 39
    sget-wide v0, Lcom/taobao/accs/a/a;->f:J

    return-wide v0
.end method
