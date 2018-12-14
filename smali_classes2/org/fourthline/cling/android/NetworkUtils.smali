.class public Lorg/fourthline/cling/android/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# static fields
.field private static final log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lorg/fourthline/cling/android/NetworkUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/android/NetworkUtils;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConnectedNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 2

    const-string v0, "connectivity"

    .line 36
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 38
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 43
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 47
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    const/4 v0, 0x6

    .line 49
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 50
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    const/16 v0, 0x9

    .line 52
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 53
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    return-object p0

    .line 55
    :cond_4
    sget-object p0, Lorg/fourthline/cling/android/NetworkUtils;->log:Ljava/util/logging/Logger;

    const-string v0, "Could not find any connected network..."

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static isEthernet(Landroid/net/NetworkInfo;)Z
    .locals 1

    const/16 v0, 0x9

    .line 61
    invoke-static {p0, v0}, Lorg/fourthline/cling/android/NetworkUtils;->isNetworkType(Landroid/net/NetworkInfo;I)Z

    move-result p0

    return p0
.end method

.method public static isMobile(Landroid/net/NetworkInfo;)Z
    .locals 2

    const/4 v0, 0x0

    .line 69
    invoke-static {p0, v0}, Lorg/fourthline/cling/android/NetworkUtils;->isNetworkType(Landroid/net/NetworkInfo;I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x6

    invoke-static {p0, v1}, Lorg/fourthline/cling/android/NetworkUtils;->isNetworkType(Landroid/net/NetworkInfo;I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isNetworkType(Landroid/net/NetworkInfo;I)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 73
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSSDPAwareNetwork(Landroid/net/NetworkInfo;)Z
    .locals 1

    .line 77
    invoke-static {p0}, Lorg/fourthline/cling/android/NetworkUtils;->isWifi(Landroid/net/NetworkInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/fourthline/cling/android/NetworkUtils;->isEthernet(Landroid/net/NetworkInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isWifi(Landroid/net/NetworkInfo;)Z
    .locals 1

    const/4 v0, 0x1

    .line 65
    invoke-static {p0, v0}, Lorg/fourthline/cling/android/NetworkUtils;->isNetworkType(Landroid/net/NetworkInfo;I)Z

    move-result p0

    if-nez p0, :cond_1

    sget-boolean p0, Lorg/fourthline/cling/model/ModelUtil;->ANDROID_EMULATOR:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method
