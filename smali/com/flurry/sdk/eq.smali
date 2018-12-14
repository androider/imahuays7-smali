.class public Lcom/flurry/sdk/eq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/eq$b;,
        Lcom/flurry/sdk/eq$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "eq"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/flurry/sdk/eq$b;
    .locals 1

    .line 140
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    .line 141
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result p0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 156
    sget-object p0, Lcom/flurry/sdk/eq$b;->a:Lcom/flurry/sdk/eq$b;

    return-object p0

    .line 152
    :pswitch_0
    sget-object p0, Lcom/flurry/sdk/eq$b;->g:Lcom/flurry/sdk/eq$b;

    return-object p0

    .line 150
    :pswitch_1
    sget-object p0, Lcom/flurry/sdk/eq$b;->f:Lcom/flurry/sdk/eq$b;

    return-object p0

    .line 146
    :pswitch_2
    sget-object p0, Lcom/flurry/sdk/eq$b;->d:Lcom/flurry/sdk/eq$b;

    return-object p0

    .line 144
    :pswitch_3
    sget-object p0, Lcom/flurry/sdk/eq$b;->c:Lcom/flurry/sdk/eq$b;

    return-object p0

    .line 148
    :cond_0
    sget-object p0, Lcom/flurry/sdk/eq$b;->e:Lcom/flurry/sdk/eq$b;

    return-object p0

    .line 154
    :cond_1
    sget-object p0, Lcom/flurry/sdk/eq$b;->h:Lcom/flurry/sdk/eq$b;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 159
    :catch_0
    sget-object p0, Lcom/flurry/sdk/eq;->a:Ljava/lang/String;

    const-string v0, "Error retrieving Google Play Services Availability. This probably means google play services is unavailable."

    invoke-static {p0, v0}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    sget-object p0, Lcom/flurry/sdk/eq$b;->a:Lcom/flurry/sdk/eq$b;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".fcb"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ".*"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".*"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 89
    invoke-static {p0, p1}, Lcom/flurry/sdk/em;->a(Ljava/io/File;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object p0

    .line 91
    array-length p1, p0

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 92
    aget-object p0, p0, p1

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 37
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "\\."

    .line 41
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 43
    array-length v0, p0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    return-object v1

    :cond_1
    const/4 v0, 0x3

    .line 49
    aget-object p0, p0, v0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 60
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "\\."

    .line 64
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 66
    array-length v0, p0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    return-object v1

    :cond_1
    const/4 v0, 0x4

    .line 72
    aget-object p0, p0, v0

    return-object p0
.end method
