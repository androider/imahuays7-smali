.class public Lcom/flurry/sdk/bt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/bt$b;,
        Lcom/flurry/sdk/bt$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "bt"

.field private static e:Lcom/flurry/sdk/bt;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/flurry/sdk/cb;",
            "[B>;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/String;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/flurry/sdk/bt$b;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/flurry/sdk/bt$a;

.field private h:Lcom/flurry/sdk/cd;

.field private i:Lcom/flurry/sdk/cf;

.field private final j:Lcom/flurry/sdk/cw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/cw<",
            "Lcom/flurry/sdk/ed;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1525
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "null"

    .line 1526
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "9774d56d682e549c"

    .line 1527
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "dead00beef"

    .line 1528
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1529
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/flurry/sdk/bt;->f:Ljava/util/Set;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/bt;->a:Ljava/util/Map;

    .line 57
    sget-object v0, Lcom/flurry/sdk/bt$a;->a:Lcom/flurry/sdk/bt$a;

    iput-object v0, p0, Lcom/flurry/sdk/bt;->g:Lcom/flurry/sdk/bt$a;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/bt;->c:Ljava/util/List;

    .line 63
    new-instance v0, Lcom/flurry/sdk/bt$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/bt$1;-><init>(Lcom/flurry/sdk/bt;)V

    iput-object v0, p0, Lcom/flurry/sdk/bt;->j:Lcom/flurry/sdk/cw;

    .line 90
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    .line 2103
    iget-object v0, v0, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    const-string v1, "FLURRY_SHARED_PREFERENCES"

    const/4 v2, 0x0

    .line 91
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/bt;->k:Landroid/content/SharedPreferences;

    .line 93
    invoke-static {}, Lcom/flurry/sdk/cx;->a()Lcom/flurry/sdk/cx;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.FlurrySessionEvent"

    iget-object v2, p0, Lcom/flurry/sdk/bt;->j:Lcom/flurry/sdk/cw;

    .line 94
    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/cx;->a(Ljava/lang/String;Lcom/flurry/sdk/cw;)V

    .line 95
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/bt$2;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/bt$2;-><init>(Lcom/flurry/sdk/bt;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/cl;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/bt;
    .locals 2

    const-class v0, Lcom/flurry/sdk/bt;

    monitor-enter v0

    .line 104
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/bt;->e:Lcom/flurry/sdk/bt;

    if-nez v1, :cond_0

    .line 105
    new-instance v1, Lcom/flurry/sdk/bt;

    invoke-direct {v1}, Lcom/flurry/sdk/bt;-><init>()V

    sput-object v1, Lcom/flurry/sdk/bt;->e:Lcom/flurry/sdk/bt;

    .line 107
    :cond_0
    sget-object v1, Lcom/flurry/sdk/bt;->e:Lcom/flurry/sdk/bt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 103
    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lcom/flurry/sdk/bt;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/flurry/sdk/bt;->h()V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/bt;Lcom/flurry/sdk/cd;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 14348
    iget-object p0, p0, Lcom/flurry/sdk/bt;->k:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "advertising_id"

    .line 15028
    iget-object v1, p1, Lcom/flurry/sdk/cd;->a:Ljava/lang/String;

    .line 14349
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "ad_tracking_enabled"

    .line 15037
    iget-boolean p1, p1, Lcom/flurry/sdk/cd;->b:Z

    .line 14350
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 14351
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/io/File;)V
    .locals 3

    const/4 v0, 0x0

    .line 422
    :try_start_0
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, 0x1

    .line 4491
    :try_start_1
    invoke-interface {v1, p1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 4492
    invoke-interface {v1, p0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 427
    invoke-static {v1}, Lcom/flurry/sdk/en;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    :goto_0
    const/4 p1, 0x6

    .line 425
    :try_start_2
    sget-object v1, Lcom/flurry/sdk/bt;->d:Ljava/lang/String;

    const-string v2, "Error when saving deviceId"

    invoke-static {p1, v1, v2, p0}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 427
    invoke-static {v0}, Lcom/flurry/sdk/en;->a(Ljava/io/Closeable;)V

    return-void

    :goto_1
    invoke-static {v0}, Lcom/flurry/sdk/en;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static b()V
    .locals 1

    const/4 v0, 0x0

    .line 111
    sput-object v0, Lcom/flurry/sdk/bt;->e:Lcom/flurry/sdk/bt;

    return-void
.end method

.method static synthetic b(Lcom/flurry/sdk/bt;)V
    .locals 10

    .line 9174
    :cond_0
    :goto_0
    sget-object v0, Lcom/flurry/sdk/bt$a;->f:Lcom/flurry/sdk/bt$a;

    iget-object v1, p0, Lcom/flurry/sdk/bt;->g:Lcom/flurry/sdk/bt$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/bt$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 9176
    sget-object v0, Lcom/flurry/sdk/bt$6;->b:[I

    iget-object v1, p0, Lcom/flurry/sdk/bt;->g:Lcom/flurry/sdk/bt$a;

    invoke-virtual {v1}, Lcom/flurry/sdk/bt$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 9194
    :pswitch_0
    sget-object v0, Lcom/flurry/sdk/bt$a;->f:Lcom/flurry/sdk/bt$a;

    iput-object v0, p0, Lcom/flurry/sdk/bt;->g:Lcom/flurry/sdk/bt$a;

    goto :goto_1

    .line 9190
    :pswitch_1
    sget-object v0, Lcom/flurry/sdk/bt$a;->e:Lcom/flurry/sdk/bt$a;

    iput-object v0, p0, Lcom/flurry/sdk/bt;->g:Lcom/flurry/sdk/bt$a;

    goto :goto_1

    .line 9186
    :pswitch_2
    sget-object v0, Lcom/flurry/sdk/bt$a;->c:Lcom/flurry/sdk/bt$a;

    iput-object v0, p0, Lcom/flurry/sdk/bt;->g:Lcom/flurry/sdk/bt$a;

    goto :goto_1

    .line 9182
    :pswitch_3
    sget-object v0, Lcom/flurry/sdk/bt$a;->d:Lcom/flurry/sdk/bt$a;

    iput-object v0, p0, Lcom/flurry/sdk/bt;->g:Lcom/flurry/sdk/bt$a;

    goto :goto_1

    .line 9178
    :pswitch_4
    sget-object v0, Lcom/flurry/sdk/bt$a;->b:Lcom/flurry/sdk/bt$a;

    iput-object v0, p0, Lcom/flurry/sdk/bt;->g:Lcom/flurry/sdk/bt$a;

    .line 9204
    :goto_1
    :try_start_0
    sget-object v0, Lcom/flurry/sdk/bt$6;->b:[I

    iget-object v1, p0, Lcom/flurry/sdk/bt;->g:Lcom/flurry/sdk/bt$a;

    invoke-virtual {v1}, Lcom/flurry/sdk/bt$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 9218
    :pswitch_5
    invoke-direct {p0}, Lcom/flurry/sdk/bt;->l()V

    goto :goto_0

    .line 9283
    :pswitch_6
    invoke-static {}, Lcom/flurry/sdk/en;->a()V

    .line 9366
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    .line 10103
    iget-object v0, v0, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    .line 9366
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10389
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 10393
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 10521
    iget-object v2, p0, Lcom/flurry/sdk/bt;->f:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_2

    const/4 v0, 0x0

    goto :goto_3

    .line 9372
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AND"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9357
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_4

    .line 11376
    :cond_3
    invoke-static {}, Lcom/flurry/sdk/bt;->j()Ljava/lang/String;

    move-result-object v0

    .line 11377
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 11379
    invoke-direct {p0}, Lcom/flurry/sdk/bt;->k()Ljava/lang/String;

    move-result-object v0

    .line 11380
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 11398
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 11399
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 11400
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v4

    .line 12103
    iget-object v4, v4, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    .line 11400
    invoke-static {v4}, Lcom/flurry/sdk/ek;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 11399
    invoke-static {v4}, Lcom/flurry/sdk/en;->g(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x25

    mul-long v4, v4, v6

    add-long v8, v2, v4

    mul-long v8, v8, v6

    add-long v2, v0, v8

    .line 11401
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ID"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x10

    invoke-static {v2, v3, v1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12405
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 12409
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v1

    .line 13103
    iget-object v1, v1, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    const-string v2, ".flurryb."

    .line 12410
    invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 12412
    invoke-static {v1}, Lcom/flurry/sdk/em;->a(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 12416
    invoke-static {v0, v1}, Lcom/flurry/sdk/bt;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 9285
    :cond_5
    :goto_4
    iput-object v0, p0, Lcom/flurry/sdk/bt;->b:Ljava/lang/String;

    goto/16 :goto_0

    .line 9247
    :pswitch_7
    invoke-static {}, Lcom/flurry/sdk/en;->a()V

    .line 9250
    iget-object v0, p0, Lcom/flurry/sdk/bt;->i:Lcom/flurry/sdk/cf;

    if-nez v0, :cond_0

    .line 9251
    new-instance v0, Lcom/flurry/sdk/cf;

    invoke-direct {v0}, Lcom/flurry/sdk/cf;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/bt;->i:Lcom/flurry/sdk/cf;

    goto/16 :goto_0

    .line 9206
    :pswitch_8
    invoke-direct {p0}, Lcom/flurry/sdk/bt;->h()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x4

    .line 9226
    sget-object v2, Lcom/flurry/sdk/bt;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception during id fetch:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/flurry/sdk/bt;->g:Lcom/flurry/sdk/bt$a;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9231
    :cond_6
    new-instance v0, Lcom/flurry/sdk/bu;

    invoke-direct {v0}, Lcom/flurry/sdk/bu;-><init>()V

    .line 9232
    invoke-static {}, Lcom/flurry/sdk/cx;->a()Lcom/flurry/sdk/cx;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/cx;->a(Lcom/flurry/sdk/cv;)V

    .line 9235
    iget-object v0, p0, Lcom/flurry/sdk/bt;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 9236
    iget-object p0, p0, Lcom/flurry/sdk/bt;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 9237
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 9238
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/bt$b;

    .line 9239
    invoke-interface {v0}, Lcom/flurry/sdk/bt$b;->a()V

    .line 9240
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic g()Lcom/flurry/sdk/cd;
    .locals 1

    .line 44
    invoke-static {}, Lcom/flurry/sdk/bt;->i()Lcom/flurry/sdk/cd;

    move-result-object v0

    return-object v0
.end method

.method private h()V
    .locals 6

    .line 258
    invoke-static {}, Lcom/flurry/sdk/en;->a()V

    .line 3293
    iget-object v0, p0, Lcom/flurry/sdk/bt;->k:Landroid/content/SharedPreferences;

    const-string v1, "advertising_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3294
    iget-object v1, p0, Lcom/flurry/sdk/bt;->k:Landroid/content/SharedPreferences;

    const-string v2, "ad_tracking_enabled"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-wide/16 v2, 0x1388

    if-eqz v0, :cond_0

    .line 3297
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v4

    new-instance v5, Lcom/flurry/sdk/bt$3;

    invoke-direct {v5, p0}, Lcom/flurry/sdk/bt$3;-><init>(Lcom/flurry/sdk/bt;)V

    invoke-virtual {v4, v5, v2, v3}, Lcom/flurry/sdk/cl;->a(Ljava/lang/Runnable;J)V

    .line 3307
    new-instance v2, Lcom/flurry/sdk/cd;

    invoke-direct {v2, v0, v1}, Lcom/flurry/sdk/cd;-><init>(Ljava/lang/String;Z)V

    move-object v0, v2

    goto :goto_0

    .line 3311
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/bt;->i()Lcom/flurry/sdk/cd;

    move-result-object v0

    .line 3312
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v1

    new-instance v4, Lcom/flurry/sdk/bt$4;

    invoke-direct {v4, p0, v0}, Lcom/flurry/sdk/bt$4;-><init>(Lcom/flurry/sdk/bt;Lcom/flurry/sdk/cd;)V

    invoke-virtual {v1, v4, v2, v3}, Lcom/flurry/sdk/cl;->a(Ljava/lang/Runnable;J)V

    .line 261
    :goto_0
    iput-object v0, p0, Lcom/flurry/sdk/bt;->h:Lcom/flurry/sdk/cd;

    .line 264
    invoke-virtual {p0}, Lcom/flurry/sdk/bt;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    invoke-direct {p0}, Lcom/flurry/sdk/bt;->l()V

    .line 271
    new-instance v0, Lcom/flurry/sdk/bv;

    invoke-direct {v0}, Lcom/flurry/sdk/bv;-><init>()V

    .line 272
    invoke-static {}, Lcom/flurry/sdk/cx;->a()Lcom/flurry/sdk/cx;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/cx;->a(Lcom/flurry/sdk/cv;)V

    :cond_1
    return-void
.end method

.method private static i()Lcom/flurry/sdk/cd;
    .locals 5

    const/4 v0, 0x0

    .line 326
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v1

    .line 4103
    iget-object v1, v1, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    .line 326
    invoke-static {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v1

    .line 327
    new-instance v2, Lcom/flurry/sdk/cd;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v1

    invoke-direct {v2, v3, v1}, Lcom/flurry/sdk/cd;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    .line 336
    sget-object v2, Lcom/flurry/sdk/bt;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GOOGLE PLAY SERVICES ERROR: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    sget-object v1, Lcom/flurry/sdk/bt;->d:Ljava/lang/String;

    const-string v2, "There is a problem with the Google Play Services library, which is required for Android Advertising ID support. The Google Play Services library should be integrated in any app shipping in the Play Store that uses analytics or advertising."

    invoke-static {v1, v2}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 329
    :catch_1
    sget-object v1, Lcom/flurry/sdk/bt;->d:Ljava/lang/String;

    const-string v2, "There is a problem with the Google Play Services library, which is required for Android Advertising ID support. The Google Play Services library should be integrated in any app shipping in the Play Store that uses analytics or advertising."

    invoke-static {v1, v2}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static j()Ljava/lang/String;
    .locals 6

    .line 433
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    .line 5103
    iget-object v0, v0, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    const-string v1, ".flurryb."

    .line 434
    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 435
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    .line 442
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 6496
    :try_start_1
    invoke-interface {v2}, Ljava/io/DataInput;->readInt()I

    move-result v3

    if-eq v0, v3, :cond_1

    goto :goto_1

    .line 6499
    :cond_1
    invoke-interface {v2}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v1

    :goto_0
    const/4 v3, 0x6

    .line 445
    :try_start_2
    sget-object v4, Lcom/flurry/sdk/bt;->d:Ljava/lang/String;

    const-string v5, "Error when loading deviceId"

    invoke-static {v3, v4, v5, v0}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 447
    :goto_1
    invoke-static {v2}, Lcom/flurry/sdk/en;->a(Ljava/io/Closeable;)V

    return-object v1

    :catchall_1
    move-exception v0

    :goto_2
    invoke-static {v2}, Lcom/flurry/sdk/en;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_2
    :goto_3
    return-object v1
.end method

.method private k()Ljava/lang/String;
    .locals 6

    .line 453
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    .line 7103
    iget-object v0, v0, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    .line 453
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 458
    :cond_0
    new-instance v2, Lcom/flurry/sdk/bt$5;

    invoke-direct {v2, p0}, Lcom/flurry/sdk/bt$5;-><init>(Lcom/flurry/sdk/bt;)V

    invoke-virtual {v0, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 465
    array-length v2, v0

    if-nez v2, :cond_1

    goto :goto_4

    :cond_1
    const/4 v2, 0x0

    .line 469
    aget-object v0, v0, v2

    .line 471
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v2

    .line 8103
    iget-object v2, v2, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    .line 472
    invoke-virtual {v2, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 473
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_3

    .line 480
    :cond_2
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v0, 0xb5fa

    .line 8503
    :try_start_1
    invoke-interface {v2}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v3

    if-eq v0, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    .line 8507
    invoke-interface {v2}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v3

    if-eq v0, v3, :cond_4

    goto :goto_1

    .line 8511
    :cond_4
    invoke-interface {v2}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    .line 8513
    invoke-interface {v2}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v1

    :goto_0
    const/4 v3, 0x6

    .line 483
    :try_start_2
    sget-object v4, Lcom/flurry/sdk/bt;->d:Ljava/lang/String;

    const-string v5, "Error when loading deviceId"

    invoke-static {v3, v4, v5, v0}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 485
    :goto_1
    invoke-static {v2}, Lcom/flurry/sdk/en;->a(Ljava/io/Closeable;)V

    return-object v1

    :catchall_1
    move-exception v0

    :goto_2
    invoke-static {v2}, Lcom/flurry/sdk/en;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_5
    :goto_3
    return-object v1

    :cond_6
    :goto_4
    return-object v1
.end method

.method private l()V
    .locals 4

    .line 533
    invoke-virtual {p0}, Lcom/flurry/sdk/bt;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 535
    sget-object v2, Lcom/flurry/sdk/bt;->d:Ljava/lang/String;

    const-string v3, "Fetched advertising id"

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object v2, p0, Lcom/flurry/sdk/bt;->a:Ljava/util/Map;

    sget-object v3, Lcom/flurry/sdk/cb;->b:Lcom/flurry/sdk/cb;

    .line 537
    invoke-static {v0}, Lcom/flurry/sdk/en;->d(Ljava/lang/String;)[B

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/bt;->e()[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 542
    sget-object v2, Lcom/flurry/sdk/bt;->d:Ljava/lang/String;

    const-string v3, "Fetched install id"

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 543
    iget-object v2, p0, Lcom/flurry/sdk/bt;->a:Ljava/util/Map;

    sget-object v3, Lcom/flurry/sdk/cb;->c:Lcom/flurry/sdk/cb;

    .line 544
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9165
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/bt;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 549
    sget-object v2, Lcom/flurry/sdk/bt;->d:Ljava/lang/String;

    const-string v3, "Fetched device id"

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 550
    iget-object v1, p0, Lcom/flurry/sdk/bt;->a:Ljava/util/Map;

    sget-object v2, Lcom/flurry/sdk/cb;->a:Lcom/flurry/sdk/cb;

    invoke-static {v0}, Lcom/flurry/sdk/en;->d(Ljava/lang/String;)[B

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 2

    .line 115
    sget-object v0, Lcom/flurry/sdk/bt$a;->f:Lcom/flurry/sdk/bt$a;

    iget-object v1, p0, Lcom/flurry/sdk/bt;->g:Lcom/flurry/sdk/bt$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/bt$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/flurry/sdk/bt;->h:Lcom/flurry/sdk/cd;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/bt;->h:Lcom/flurry/sdk/cd;

    .line 3028
    iget-object v0, v0, Lcom/flurry/sdk/cd;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final e()[B
    .locals 5

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/bt;->i:Lcom/flurry/sdk/cf;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Lcom/flurry/sdk/cf;

    invoke-direct {v0}, Lcom/flurry/sdk/cf;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/bt;->i:Lcom/flurry/sdk/cf;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/bt;->i:Lcom/flurry/sdk/cf;

    invoke-virtual {v0}, Lcom/flurry/sdk/cf;->a()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x5

    .line 149
    sget-object v2, Lcom/flurry/sdk/bt;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error while generating Install ID"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final f()Z
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/flurry/sdk/bt;->h:Lcom/flurry/sdk/cd;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/bt;->h:Lcom/flurry/sdk/cd;

    .line 3037
    iget-boolean v0, v0, Lcom/flurry/sdk/cd;->b:Z

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
