.class public final Lcom/flurry/android/FlurryAgent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/android/FlurryAgent$Builder;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "FlurryAgent"

.field private static b:Lcom/flurry/android/FlurryAgentListener; = null

.field private static final c:Lcom/flurry/sdk/cw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/cw<",
            "Lcom/flurry/sdk/ed;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Z = false

.field private static e:I = 0x5

.field private static f:J = 0x2710L

.field private static g:Z = true

.field private static h:Z = true

.field private static i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/flurry/android/FlurryModule;",
            ">;"
        }
    .end annotation
.end field

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Lcom/flurry/android/Consent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lcom/flurry/android/FlurryAgent$1;

    invoke-direct {v0}, Lcom/flurry/android/FlurryAgent$1;-><init>()V

    sput-object v0, Lcom/flurry/android/FlurryAgent;->c:Lcom/flurry/sdk/cw;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/flurry/android/FlurryAgent;->i:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/flurry/android/FlurryAgentListener;
    .locals 1

    .line 51
    sget-object v0, Lcom/flurry/android/FlurryAgent;->b:Lcom/flurry/android/FlurryAgentListener;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/android/FlurryAgentListener;ZIJZZZLjava/util/List;Lcom/flurry/android/Consent;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    if-nez p10, :cond_0

    .line 5141
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null context"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5144
    :cond_0
    invoke-virtual {p10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p10

    .line 5148
    sput-object p0, Lcom/flurry/android/FlurryAgent;->b:Lcom/flurry/android/FlurryAgentListener;

    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->setFlurryAgentListener(Lcom/flurry/android/FlurryAgentListener;)V

    .line 5151
    sput-boolean p1, Lcom/flurry/android/FlurryAgent;->d:Z

    invoke-static {p1}, Lcom/flurry/android/FlurryAgent;->setLogEnabled(Z)V

    .line 5154
    sput p2, Lcom/flurry/android/FlurryAgent;->e:I

    invoke-static {p2}, Lcom/flurry/android/FlurryAgent;->setLogLevel(I)V

    .line 5157
    sput-wide p3, Lcom/flurry/android/FlurryAgent;->f:J

    invoke-static {p3, p4}, Lcom/flurry/android/FlurryAgent;->setContinueSessionMillis(J)V

    .line 5160
    sput-boolean p5, Lcom/flurry/android/FlurryAgent;->g:Z

    invoke-static {p5}, Lcom/flurry/android/FlurryAgent;->setCaptureUncaughtExceptions(Z)V

    if-nez p10, :cond_1

    .line 5311
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null context"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    .line 5315
    invoke-virtual {p10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string p2, "FLURRY_IS_YAHOO_APP"

    const-string p3, "bool"

    .line 5317
    invoke-virtual {p10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p2, p3, p4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 5319
    invoke-virtual {p10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    .line 5320
    sget-object p1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Found FLURRY_IS_YAHOO_APP resource id. Value: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/flurry/sdk/dc;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p0, :cond_3

    .line 5324
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/eh;

    move-result-object p0

    const-string p1, "ProtonEnabled"

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/eh;->a(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez p6, :cond_4

    .line 5328
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/eh;

    move-result-object p0

    const-string p1, "analyticsEnabled"

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/eh;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 5332
    :cond_3
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "This feature is not available anymore and the API will be removed in an upcoming release"

    invoke-static {p0, p1}, Lcom/flurry/sdk/dc;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5167
    :cond_4
    :goto_0
    sput-boolean p7, Lcom/flurry/android/FlurryAgent;->h:Z

    .line 5338
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x10

    if-ge p0, p1, :cond_5

    .line 5339
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "Device SDK Version older than 16"

    invoke-static {p0, p1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5343
    :cond_5
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/eh;

    move-result-object p0

    const-string p1, "IncludeBackgroundSessionsInMetrics"

    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/eh;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5169
    :goto_1
    invoke-interface {p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/flurry/android/FlurryModule;

    .line 5170
    check-cast p1, Lcom/flurry/sdk/dg;

    invoke-static {p1}, Lcom/flurry/sdk/df;->a(Lcom/flurry/sdk/dg;)V

    goto :goto_2

    .line 5173
    :cond_6
    sput-object p9, Lcom/flurry/android/FlurryAgent;->l:Lcom/flurry/android/Consent;

    .line 5176
    sput-object p11, Lcom/flurry/android/FlurryAgent;->j:Ljava/lang/String;

    .line 5177
    sget-object p0, Lcom/flurry/android/FlurryAgent;->j:Ljava/lang/String;

    invoke-static {p10, p0}, Lcom/flurry/android/FlurryAgent;->init(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static addOrigin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 513
    invoke-static {p0, p1, v0}, Lcom/flurry/android/FlurryAgent;->addOrigin(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static addOrigin(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 534
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 535
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "Device SDK Version older than 16"

    invoke-static {p0, p1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 539
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 540
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "originName not specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 543
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 544
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "originVersion not specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 548
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/cn;->a()Lcom/flurry/sdk/cn;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/flurry/sdk/cn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 550
    sget-object p1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p2, ""

    invoke-static {p1, p2, p0}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static addSessionProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1463
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 1464
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "Device SDK Version older than 16"

    invoke-static {p0, p1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1468
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1473
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1474
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Flurry SDK must be initialized before starting a session"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1478
    :cond_2
    invoke-static {}, Lcom/flurry/sdk/br;->a()Lcom/flurry/sdk/br;

    .line 4173
    invoke-static {}, Lcom/flurry/sdk/br;->c()Lcom/flurry/sdk/ci;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4175
    invoke-virtual {v0, p0, p1}, Lcom/flurry/sdk/ci;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    .line 1469
    :cond_4
    :goto_0
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "String name or value passed to addSessionProperty was null or empty."

    invoke-static {p0, p1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 51
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static clearLocation()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 476
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 477
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 16"

    invoke-static {v0, v1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 481
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/eh;

    move-result-object v0

    const-string v1, "ExplicitLocation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/eh;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static endTimedEvent(Ljava/lang/String;)V
    .locals 4

    .line 1150
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 1151
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Device SDK Version older than 16"

    invoke-static {p0, v0}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p0, :cond_1

    .line 1156
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "String eventId passed to endTimedEvent was null."

    invoke-static {p0, v0}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1161
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v0

    .line 3274
    new-instance v1, Lcom/flurry/sdk/x;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/flurry/sdk/x;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 3275
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/y;->a(Lcom/flurry/sdk/x;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1163
    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to signify the end of event: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static endTimedEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1178
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 1179
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "Device SDK Version older than 16"

    invoke-static {p0, p1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p0, :cond_1

    .line 1184
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "String eventId passed to endTimedEvent was null."

    invoke-static {p0, p1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 1189
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "String eventId passed to endTimedEvent was null."

    invoke-static {p0, p1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1194
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v0

    .line 3279
    new-instance v1, Lcom/flurry/sdk/x;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/x;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 3280
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/y;->a(Lcom/flurry/sdk/x;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1196
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to signify the end of event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static getAddOnModules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/flurry/android/FlurryModule;",
            ">;"
        }
    .end annotation

    .line 414
    sget-object v0, Lcom/flurry/android/FlurryAgent;->i:Ljava/util/List;

    return-object v0
.end method

.method public static getAgentVersion()I
    .locals 1

    .line 396
    invoke-static {}, Lcom/flurry/sdk/cm;->b()I

    move-result v0

    return v0
.end method

.method public static declared-synchronized getFlurryConsent()Lcom/flurry/android/Consent;
    .locals 2

    const-class v0, Lcom/flurry/android/FlurryAgent;

    monitor-enter v0

    .line 579
    :try_start_0
    sget-object v1, Lcom/flurry/android/FlurryAgent;->l:Lcom/flurry/android/Consent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getInstantAppName()Ljava/lang/String;
    .locals 1

    .line 571
    sget-object v0, Lcom/flurry/android/FlurryAgent;->k:Ljava/lang/String;

    return-object v0
.end method

.method public static getReleaseVersion()Ljava/lang/String;
    .locals 1

    .line 405
    invoke-static {}, Lcom/flurry/sdk/cm;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSessionId()Ljava/lang/String;
    .locals 4

    .line 762
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-ge v0, v2, :cond_0

    .line 763
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, "Device SDK Version older than 16"

    invoke-static {v0, v2}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 767
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    if-nez v0, :cond_1

    .line 768
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Flurry SDK must be initialized before starting a session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 773
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/br;->a()Lcom/flurry/sdk/br;

    invoke-static {}, Lcom/flurry/sdk/br;->b()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 775
    sget-object v2, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/flurry/android/FlurryAgent;

    monitor-enter v0

    .line 362
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 363
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "Device SDK Version older than 16"

    invoke-static {p0, p1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    monitor-exit v0

    return-void

    :cond_0
    if-nez p0, :cond_1

    .line 368
    :try_start_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null context"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 371
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 372
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "API key not specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 375
    :cond_2
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 376
    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, "Flurry is already initialized"

    invoke-static {v1, v2}, Lcom/flurry/sdk/dc;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    :try_start_2
    invoke-static {}, Lcom/flurry/sdk/fe;->a()V

    .line 384
    invoke-static {p0, p1}, Lcom/flurry/sdk/cl;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 387
    monitor-exit v0

    return-void

    :catch_0
    move-exception p0

    .line 386
    :try_start_3
    sget-object p1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p1, v1, p0}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 388
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 361
    monitor-exit v0

    throw p0
.end method

.method public static isSessionActive()Z
    .locals 4

    .line 738
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-ge v0, v2, :cond_0

    .line 739
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, "Device SDK Version older than 16"

    invoke-static {v0, v2}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 744
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/ee;->a()Lcom/flurry/sdk/ee;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ee;->d()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 746
    sget-object v2, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public static logBreadcrumb(Ljava/lang/String;)V
    .locals 4

    .line 1305
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 1306
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Device SDK Version older than 16"

    invoke-static {p0, v0}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1310
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1311
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Crash breadcrumb cannot be null or empty."

    invoke-static {p0, v0}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1315
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1316
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Flurry SDK must be initialized before starting a session"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1321
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v0

    .line 3378
    new-instance v1, Lcom/flurry/sdk/et;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, p0, v2, v3}, Lcom/flurry/sdk/et;-><init>(Ljava/lang/String;J)V

    .line 3379
    iget-object p0, v0, Lcom/flurry/sdk/y;->d:Lcom/flurry/sdk/eu;

    if-eqz p0, :cond_3

    .line 3380
    iget-object p0, v0, Lcom/flurry/sdk/y;->d:Lcom/flurry/sdk/eu;

    invoke-virtual {p0, v1}, Lcom/flurry/sdk/eu;->a(Lcom/flurry/sdk/et;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p0

    .line 1323
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static logEvent(Ljava/lang/String;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 5

    .line 802
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 804
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 805
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 16"

    invoke-static {p0, v1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    if-nez p0, :cond_1

    .line 810
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "String eventId passed to logEvent was null."

    invoke-static {p0, v1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 815
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2183
    invoke-virtual {v1, p0, v2, v3, v3}, Lcom/flurry/sdk/y;->a(Ljava/lang/String;Ljava/util/Map;ZI)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 817
    sget-object v2, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to log event: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v1}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public static logEvent(Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    .line 855
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 857
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 858
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "Device SDK Version older than 16"

    invoke-static {p0, p1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    if-nez p0, :cond_1

    .line 863
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "String eventId passed to logEvent was null."

    invoke-static {p0, p1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    if-nez p1, :cond_2

    .line 868
    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, "String parameters passed to logEvent was null."

    invoke-static {v1, v2}, Lcom/flurry/sdk/dc;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p1, v2}, Lcom/flurry/sdk/y;->a(Ljava/lang/String;Ljava/util/Map;I)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 874
    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to log event: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p1}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public static logEvent(Ljava/lang/String;Ljava/util/Map;Z)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    .line 945
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 947
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 948
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "Device SDK Version older than 16"

    invoke-static {p0, p1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    if-nez p0, :cond_1

    .line 953
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "String eventId passed to logEvent was null."

    invoke-static {p0, p1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    if-nez p1, :cond_2

    .line 958
    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, "String parameters passed to logEvent was null."

    invoke-static {v1, v2}, Lcom/flurry/sdk/dc;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2}, Lcom/flurry/sdk/y;->a(Ljava/lang/String;Ljava/util/Map;Z)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 964
    sget-object p2, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to log event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, p1}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public static logEvent(Ljava/lang/String;Z)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 4

    .line 900
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 902
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 903
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "Device SDK Version older than 16"

    invoke-static {p0, p1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    if-nez p0, :cond_1

    .line 908
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "String eventId passed to logEvent was null."

    invoke-static {p0, p1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 913
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2192
    invoke-virtual {v1, p0, v2, p1, v3}, Lcom/flurry/sdk/y;->a(Ljava/lang/String;Ljava/util/Map;ZI)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 915
    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to log event: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p1}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public static logPayment(Ljava/lang/String;Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ID",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    .line 1090
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 1092
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 1093
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "Device SDK Version older than 16"

    invoke-static {p0, p1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    if-nez p0, :cond_1

    .line 1098
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "String productName passed to logEvent was null."

    invoke-static {p0, p1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    if-nez p1, :cond_2

    .line 1103
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "String productId passed to logEvent was null."

    invoke-static {p0, p1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    if-nez p5, :cond_3

    .line 1108
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "String currency passed to logEvent was null."

    invoke-static {p0, p1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_3
    if-nez p6, :cond_4

    .line 1113
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "String transactionId passed to logEvent was null."

    invoke-static {p0, p1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1118
    :cond_4
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "fl.ProductName"

    .line 1119
    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "fl.ProductID"

    .line 1120
    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "fl.Quantity"

    .line 1121
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "fl.Price"

    .line 1122
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string p2, "%1$.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    aput-object p3, v2, v3

    invoke-static {p1, p2, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "fl.Currency"

    .line 1123
    invoke-interface {v1, p0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "fl.TransactionIdentifier"

    .line 1124
    invoke-interface {v1, p0, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p0

    if-eqz p7, :cond_6

    .line 1127
    invoke-interface {p7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 1128
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {v1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 1129
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1133
    :cond_6
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object p1

    const-string p2, "Flurry.purchase"

    .line 1134
    invoke-virtual {p1, p2, v1, p0}, Lcom/flurry/sdk/y;->a(Ljava/lang/String;Ljava/util/Map;I)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1136
    sget-object p1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p2, "Failed to log event: Flurry.purchase"

    invoke-static {p1, p2, p0}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_1
    return-object p0
.end method

.method public static logPayment(ILandroid/content/Intent;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Intent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 984
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 985
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "Device SDK Version older than 16"

    invoke-static {p0, p1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 991
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "RESPONSE_CODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 993
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, "Intent with no response code, assuming OK (known issue)"

    invoke-static {v0, v2}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 995
    :cond_1
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 996
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 997
    :cond_2
    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_3

    .line 998
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v1, v0

    :cond_3
    :goto_0
    const-string v0, "INAPP_PURCHASE_DATA"

    .line 1002
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "INAPP_DATA_SIGNATURE"

    .line 1003
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_6

    if-nez p1, :cond_4

    goto :goto_1

    .line 1014
    :cond_4
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, -0x1

    if-ne p0, v3, :cond_5

    if-nez v1, :cond_5

    .line 1023
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object p0

    .line 3103
    iget-object p0, p0, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    const-string v1, "productId"

    .line 1024
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/flurry/android/FlurryAgent$2;

    invoke-direct {v3, v2, v0, p1, p2}, Lcom/flurry/android/FlurryAgent$2;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {p0, v1, v3}, Lcom/flurry/sdk/bo;->a(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/sdk/bo$a;)V

    return-void

    .line 1061
    :cond_5
    sget-object p2, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid logPayment call. resultCode:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", responseCode:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", purchaseData:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", dataSignature:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p0

    .line 1016
    sget-object p1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p2, "Failed to log event: Flurry.purchase"

    invoke-static {p1, p2, p0}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 1006
    :cond_6
    :goto_1
    sget-object p2, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid logPayment call. resultCode:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", responseCode:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", purchaseData:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", dataSignature:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onEndSession(Landroid/content/Context;)V
    .locals 2

    .line 706
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 707
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Device SDK Version older than 16"

    invoke-static {p0, v0}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p0, :cond_1

    .line 712
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Null context"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 715
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    if-nez v0, :cond_2

    .line 716
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Flurry SDK must be initialized before ending a session"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 721
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/ee;->a()Lcom/flurry/sdk/ee;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/ee;->c(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 723
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1211
    invoke-static {p0, p1, p2, v0}, Lcom/flurry/android/FlurryAgent;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1226
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 1227
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "Device SDK Version older than 16"

    invoke-static {p0, p1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1231
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1232
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "String errorId passed to onError was null or empty."

    invoke-static {p0, p1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1236
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1237
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "String message passed to onError was null or empty."

    invoke-static {p0, p1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1241
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1242
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "String errorClass passed to onError was null or empty."

    invoke-static {p0, p1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1247
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v0

    .line 3317
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 3318
    array-length v2, v1

    const/4 v3, 0x2

    if-le v2, v3, :cond_4

    .line 3320
    array-length v2, v1

    sub-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/StackTraceElement;

    const/4 v4, 0x0

    .line 3321
    array-length v5, v2

    invoke-static {v1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v2

    .line 3324
    :cond_4
    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 3325
    invoke-virtual {v6, v1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 3328
    new-instance v1, Lcom/flurry/sdk/w;

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/flurry/sdk/w;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;Ljava/util/Map;)V

    .line 3329
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/y;->a(Lcom/flurry/sdk/w;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1249
    sget-object p1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p2, ""

    invoke-static {p1, p2, p0}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 1263
    invoke-static {p0, p1, p2, v0}, Lcom/flurry/android/FlurryAgent;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    return-void
.end method

.method public static onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1277
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 1278
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "Device SDK Version older than 16"

    invoke-static {p0, p1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p0, :cond_1

    .line 1283
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "String errorId passed to onError was null."

    invoke-static {p0, p1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 1288
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "String message passed to onError was null."

    invoke-static {p0, p1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    if-nez p2, :cond_3

    .line 1293
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "Throwable passed to onError was null."

    invoke-static {p0, p1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1298
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/flurry/sdk/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1300
    sget-object p1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p2, ""

    invoke-static {p1, p2, p0}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onPageView()V
    .locals 3

    .line 1331
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 1332
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 16"

    invoke-static {v0, v1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1337
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    .line 3389
    invoke-static {}, Lcom/flurry/sdk/y;->b()Lcom/flurry/sdk/bp;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3391
    invoke-virtual {v0}, Lcom/flurry/sdk/bp;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 1339
    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onStartSession(Landroid/content/Context;)V
    .locals 2

    .line 652
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 653
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Device SDK Version older than 16"

    invoke-static {p0, v0}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p0, :cond_1

    .line 658
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Null context"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 661
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    if-nez v0, :cond_2

    .line 662
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Flurry SDK must be initialized before starting a session"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 667
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/ee;->a()Lcom/flurry/sdk/ee;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/ee;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 669
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onStartSession(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 613
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;)V

    return-void
.end method

.method public static openPrivacyDashboard(Lcom/flurry/android/FlurryPrivacySession$Request;)V
    .locals 1

    const/16 v0, 0x10

    .line 1493
    invoke-static {v0}, Lcom/flurry/sdk/en;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1494
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Device SDK Version older than 16"

    invoke-static {p0, v0}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1498
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1499
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Flurry SDK must be initialized before starting a session"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1502
    :cond_1
    invoke-static {p0}, Lcom/flurry/sdk/fb;->a(Lcom/flurry/android/FlurryPrivacySession$Request;)V

    return-void
.end method

.method public static setAge(I)V
    .locals 6

    .line 1365
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 1366
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Device SDK Version older than 16"

    invoke-static {p0, v0}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-lez p0, :cond_1

    const/16 v0, 0x6e

    if-ge p0, v0, :cond_1

    .line 1372
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long v2, p0

    const-wide v4, 0x7528ad000L

    mul-long v2, v2, v4

    sub-long v4, v0, v2

    .line 1374
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0}, Ljava/util/Date;->getYear()I

    move-result p0

    .line 1375
    new-instance v0, Ljava/util/Date;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, v1}, Ljava/util/Date;-><init>(III)V

    .line 1376
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 1378
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/eh;

    move-result-object p0

    const-string v2, "Age"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/flurry/sdk/eh;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static setCaptureUncaughtExceptions(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 287
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 288
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Device SDK Version older than 16"

    invoke-static {p0, v0}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 292
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/eh;

    move-result-object v0

    const-string v1, "CaptureUncaughtExceptions"

    .line 293
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/eh;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setContinueSessionMillis(J)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 264
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 265
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "Device SDK Version older than 16"

    invoke-static {p0, p1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-wide/16 v0, 0x1388

    cmp-long v2, p0, v0

    if-gez v2, :cond_1

    .line 270
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid time set for session resumption: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 274
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/eh;

    move-result-object v0

    const-string v1, "ContinueSessionMillis"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/eh;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setFlurryAgentListener(Lcom/flurry/android/FlurryAgentListener;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 190
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 191
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Device SDK Version older than 16"

    invoke-static {p0, v0}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p0, :cond_1

    .line 196
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Listener cannot be null"

    invoke-static {p0, v0}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-static {}, Lcom/flurry/sdk/cx;->a()Lcom/flurry/sdk/cx;

    move-result-object p0

    const-string v0, "com.flurry.android.sdk.FlurrySessionEvent"

    sget-object v1, Lcom/flurry/android/FlurryAgent;->c:Lcom/flurry/sdk/cw;

    .line 198
    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/cx;->b(Ljava/lang/String;Lcom/flurry/sdk/cw;)V

    return-void

    .line 202
    :cond_1
    sput-object p0, Lcom/flurry/android/FlurryAgent;->b:Lcom/flurry/android/FlurryAgentListener;

    .line 203
    invoke-static {}, Lcom/flurry/sdk/cx;->a()Lcom/flurry/sdk/cx;

    move-result-object p0

    const-string v0, "com.flurry.android.sdk.FlurrySessionEvent"

    sget-object v1, Lcom/flurry/android/FlurryAgent;->c:Lcom/flurry/sdk/cw;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/cx;->a(Ljava/lang/String;Lcom/flurry/sdk/cw;)V

    return-void
.end method

.method public static setGender(B)V
    .locals 2

    .line 1389
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 1390
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Device SDK Version older than 16"

    invoke-static {p0, v0}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 1401
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/eh;

    move-result-object p0

    const-string v0, "Gender"

    const/4 v1, -0x1

    .line 1402
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/eh;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 1397
    :pswitch_0
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/eh;

    move-result-object v0

    const-string v1, "Gender"

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/eh;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static setInstantAppName(Ljava/lang/String;)V
    .locals 0

    .line 561
    sput-object p0, Lcom/flurry/android/FlurryAgent;->k:Ljava/lang/String;

    return-void
.end method

.method public static setLocation(FF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static setLocationCriteria(Landroid/location/Criteria;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1352
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-ge p0, v0, :cond_0

    .line 1353
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Device SDK Version older than 16"

    invoke-static {p0, v0}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setLogEnabled(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 216
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 217
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Device SDK Version older than 16"

    invoke-static {p0, v0}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p0, :cond_1

    .line 222
    invoke-static {}, Lcom/flurry/sdk/dc;->b()V

    return-void

    .line 224
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/dc;->a()V

    return-void
.end method

.method public static setLogEvents(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 492
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-ge p0, v0, :cond_0

    .line 493
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Device SDK Version older than 16"

    invoke-static {p0, v0}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 238
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 239
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Device SDK Version older than 16"

    invoke-static {p0, v0}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 243
    :cond_0
    invoke-static {p0}, Lcom/flurry/sdk/dc;->a(I)V

    return-void
.end method

.method public static setPulseEnabled(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 306
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "This feature is not available anymore and the API will be removed in an upcoming release"

    invoke-static {p0, v0}, Lcom/flurry/sdk/dc;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setReportLocation(Z)V
    .locals 2

    .line 444
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 445
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Device SDK Version older than 16"

    invoke-static {p0, v0}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 449
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/eh;

    move-result-object v0

    const-string v1, "ReportLocation"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/eh;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setSessionOrigin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1436
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 1437
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "Device SDK Version older than 16"

    invoke-static {p0, p1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1441
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1442
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "String originName passed to setSessionOrigin was null or empty."

    invoke-static {p0, p1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1446
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1447
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Flurry SDK must be initialized before starting a session"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1451
    :cond_2
    invoke-static {}, Lcom/flurry/sdk/br;->a()Lcom/flurry/sdk/br;

    invoke-static {p0}, Lcom/flurry/sdk/br;->a(Ljava/lang/String;)V

    .line 1452
    invoke-static {}, Lcom/flurry/sdk/br;->a()Lcom/flurry/sdk/br;

    .line 4166
    invoke-static {}, Lcom/flurry/sdk/br;->c()Lcom/flurry/sdk/ci;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 4168
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/ci;->b(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 2

    .line 1414
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 1415
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Device SDK Version older than 16"

    invoke-static {p0, v0}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p0, :cond_1

    .line 1420
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "String userId passed to setUserId was null."

    invoke-static {p0, v0}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1424
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/eh;

    move-result-object v0

    const-string v1, "UserId"

    .line 1425
    invoke-static {p0}, Lcom/flurry/sdk/en;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/eh;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setVersionName(Ljava/lang/String;)V
    .locals 2

    .line 425
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 426
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Device SDK Version older than 16"

    invoke-static {p0, v0}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p0, :cond_1

    .line 431
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "String versionName passed to setVersionName was null."

    invoke-static {p0, v0}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 435
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/eh;

    move-result-object v0

    const-string v1, "VersionName"

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/eh;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static declared-synchronized updateFlurryConsent(Lcom/flurry/android/Consent;)Z
    .locals 2

    const-class v0, Lcom/flurry/android/FlurryAgent;

    monitor-enter v0

    .line 588
    :try_start_0
    invoke-static {p0}, Lcom/flurry/sdk/ck;->a(Lcom/flurry/android/Consent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 589
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Consent is null or illegal"

    invoke-static {p0, v1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    .line 590
    monitor-exit v0

    return p0

    .line 592
    :cond_0
    :try_start_1
    sput-object p0, Lcom/flurry/android/FlurryAgent;->l:Lcom/flurry/android/Consent;

    .line 2012
    sget-object p0, Lcom/flurry/sdk/cj;->a:Lcom/flurry/sdk/cj$a;

    if-eqz p0, :cond_1

    .line 2013
    sget-object p0, Lcom/flurry/sdk/cj;->a:Lcom/flurry/sdk/cj$a;

    invoke-interface {p0}, Lcom/flurry/sdk/cj$a;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    const/4 p0, 0x1

    .line 594
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 587
    monitor-exit v0

    throw p0
.end method
