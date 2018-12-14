.class Lanet/channel/status/c;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field static a:Landroid/content/Context; = null

.field static volatile b:Lanet/channel/status/NetworkStatusHelper$NetworkStatus; = null

.field static volatile c:Ljava/lang/String; = "unknown"

.field static volatile d:Ljava/lang/String; = ""

.field static volatile e:Ljava/lang/String; = ""

.field static volatile f:Ljava/lang/String; = ""

.field static volatile g:Ljava/lang/String; = "unknown"

.field static volatile h:Ljava/lang/String; = ""

.field static volatile i:Landroid/util/Pair; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile j:Z = false

.field private static k:Landroid/net/ConnectivityManager;

.field private static l:Landroid/telephony/TelephonyManager;

.field private static m:Landroid/net/wifi/WifiManager;

.field private static n:Landroid/telephony/SubscriptionManager;

.field private static o:Ljava/lang/reflect/Method;

.field private static p:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    sget-object v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->NONE:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    sput-object v0, Lanet/channel/status/c;->b:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    .line 72
    new-instance v0, Lanet/channel/status/a;

    invoke-direct {v0}, Lanet/channel/status/a;-><init>()V

    sput-object v0, Lanet/channel/status/c;->p:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private static a(ILjava/lang/String;)Lanet/channel/status/NetworkStatusHelper$NetworkStatus;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "TD-SCDMA"

    .line 153
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "WCDMA"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "CDMA2000"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 151
    :pswitch_0
    sget-object p0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G4:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    return-object p0

    .line 149
    :pswitch_1
    sget-object p0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G3:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    return-object p0

    .line 147
    :pswitch_2
    sget-object p0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G2:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    return-object p0

    .line 156
    :cond_0
    sget-object p0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->NONE:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    return-object p0

    .line 154
    :cond_1
    :goto_0
    sget-object p0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G3:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 161
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 162
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "cmwap"

    .line 163
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "cmwap"

    return-object p0

    :cond_0
    const-string v0, "uniwap"

    .line 165
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "uniwap"

    return-object p0

    :cond_1
    const-string v0, "3gwap"

    .line 167
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "3gwap"

    return-object p0

    :cond_2
    const-string v0, "ctwap"

    .line 169
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "ctwap"

    return-object p0

    :cond_3
    const-string v0, "cmnet"

    .line 171
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "cmnet"

    return-object p0

    :cond_4
    const-string v0, "uninet"

    .line 173
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "uninet"

    return-object p0

    :cond_5
    const-string v0, "3gnet"

    .line 175
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "3gnet"

    return-object p0

    :cond_6
    const-string v0, "ctnet"

    .line 177
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "ctnet"

    return-object p0

    :cond_7
    const-string p0, "unknown"

    return-object p0

    :cond_8
    const-string p0, "unknown"

    return-object p0
.end method

.method static a()V
    .locals 5

    .line 52
    sget-boolean v0, Lanet/channel/status/c;->j:Z

    if-nez v0, :cond_0

    sget-object v0, Lanet/channel/status/c;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lanet/channel/status/c;->a:Landroid/content/Context;

    monitor-enter v0

    .line 54
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 55
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :try_start_1
    sget-object v2, Lanet/channel/status/c;->a:Landroid/content/Context;

    sget-object v3, Lanet/channel/status/c;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v1, "awcn.NetworkStatusMonitor"

    const-string v2, "registerReceiver failed"

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 59
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lanet/channel/h/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    sget-object v0, Lanet/channel/status/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lanet/channel/status/c;->b(Landroid/content/Context;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 61
    monitor-exit v0

    throw v1

    :cond_0
    :goto_1
    return-void
.end method

.method static synthetic a(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-static {p0}, Lanet/channel/status/c;->b(Landroid/content/Context;)V

    return-void
.end method

.method private static a(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;Ljava/lang/String;)V
    .locals 0

    .line 134
    sput-object p0, Lanet/channel/status/c;->b:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    .line 135
    sput-object p1, Lanet/channel/status/c;->c:Ljava/lang/String;

    const-string p0, ""

    .line 136
    sput-object p0, Lanet/channel/status/c;->d:Ljava/lang/String;

    const-string p0, ""

    .line 137
    sput-object p0, Lanet/channel/status/c;->e:Ljava/lang/String;

    const-string p0, ""

    .line 138
    sput-object p0, Lanet/channel/status/c;->f:Ljava/lang/String;

    const/4 p0, 0x0

    .line 139
    sput-object p0, Lanet/channel/status/c;->i:Landroid/util/Pair;

    const-string p0, ""

    .line 140
    sput-object p0, Lanet/channel/status/c;->g:Ljava/lang/String;

    const-string p0, ""

    .line 141
    sput-object p0, Lanet/channel/status/c;->h:Ljava/lang/String;

    return-void
.end method

.method static b()Landroid/net/NetworkInfo;
    .locals 5

    const/4 v0, 0x0

    .line 211
    :try_start_0
    sget-object v1, Lanet/channel/status/c;->k:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    .line 212
    sget-object v1, Lanet/channel/status/c;->a:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    sput-object v1, Lanet/channel/status/c;->k:Landroid/net/ConnectivityManager;

    .line 214
    :cond_0
    sget-object v1, Lanet/channel/status/c;->k:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "awcn.NetworkStatusMonitor"

    const-string v3, "getNetworkInfo"

    const/4 v4, 0x0

    .line 216
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v0, v1, v4}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 12

    const-string v0, "awcn.NetworkStatusMonitor"

    const-string v1, "[checkNetworkStatus]"

    const/4 v2, 0x0

    .line 88
    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v3}, Lanet/channel/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    sget-object v0, Lanet/channel/status/c;->b:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    .line 90
    sget-object v1, Lanet/channel/status/c;->d:Ljava/lang/String;

    .line 91
    sget-object v3, Lanet/channel/status/c;->e:Ljava/lang/String;

    if-eqz p0, :cond_8

    .line 94
    :try_start_0
    invoke-static {}, Lanet/channel/status/c;->b()Landroid/net/NetworkInfo;

    move-result-object p0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz p0, :cond_5

    .line 95
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-nez v7, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v7, "awcn.NetworkStatusMonitor"

    const-string v8, "checkNetworkStatus"

    const/4 v9, 0x4

    .line 99
    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "info.isConnected"

    aput-object v10, v9, v2

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v6

    const-string v10, "info.isAvailable"

    aput-object v10, v9, v5

    const/4 v10, 0x3

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v4, v9}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-nez v7, :cond_2

    .line 101
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v6

    .line 102
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, " "

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    const-string v6, ""

    .line 103
    :goto_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v7

    invoke-static {v7, v6}, Lanet/channel/status/c;->a(ILjava/lang/String;)Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v7

    invoke-static {v7, v6}, Lanet/channel/status/c;->a(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lanet/channel/status/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lanet/channel/status/c;->d:Ljava/lang/String;

    .line 105
    invoke-static {}, Lanet/channel/status/c;->c()V

    goto :goto_2

    .line 106
    :cond_2
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-ne p0, v6, :cond_4

    .line 107
    sget-object p0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->WIFI:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    const-string v6, "wifi"

    invoke-static {p0, v6}, Lanet/channel/status/c;->a(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lanet/channel/status/c;->d()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 110
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lanet/channel/status/c;->f:Ljava/lang/String;

    .line 111
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lanet/channel/status/c;->e:Ljava/lang/String;

    :cond_3
    const-string p0, "wifi"

    .line 113
    sput-object p0, Lanet/channel/status/c;->g:Ljava/lang/String;

    sput-object p0, Lanet/channel/status/c;->h:Ljava/lang/String;

    .line 114
    invoke-static {}, Lanet/channel/status/c;->e()Landroid/util/Pair;

    move-result-object p0

    sput-object p0, Lanet/channel/status/c;->i:Landroid/util/Pair;

    goto :goto_2

    .line 116
    :cond_4
    sget-object p0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->NONE:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    const-string v6, "unknown"

    invoke-static {p0, v6}, Lanet/channel/status/c;->a(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;Ljava/lang/String;)V

    goto :goto_2

    .line 96
    :cond_5
    :goto_1
    sget-object p0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->NO:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    const-string v7, "no network"

    invoke-static {p0, v7}, Lanet/channel/status/c;->a(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;Ljava/lang/String;)V

    const-string p0, "awcn.NetworkStatusMonitor"

    const-string v7, "checkNetworkStatus"

    .line 97
    new-array v6, v6, [Ljava/lang/Object;

    const-string v8, "NO NETWORK"

    aput-object v8, v6, v2

    invoke-static {p0, v7, v4, v6}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    :goto_2
    sget-object p0, Lanet/channel/status/c;->b:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-ne p0, v0, :cond_6

    sget-object p0, Lanet/channel/status/c;->d:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lanet/channel/status/c;->e:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_8

    .line 121
    :cond_6
    invoke-static {v5}, Lanet/channel/h/a;->a(I)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 122
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->k()V

    .line 125
    :cond_7
    sget-object p0, Lanet/channel/status/c;->b:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    invoke-static {p0}, Lanet/channel/status/NetworkStatusHelper;->a(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    const-string v0, "awcn.NetworkStatusMonitor"

    const-string v1, "checkNetworkStatus"

    .line 129
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v4, p0, v2}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_8
    :goto_3
    return-void
.end method

.method private static c()V
    .locals 4

    .line 189
    :try_start_0
    sget-object v0, Lanet/channel/status/c;->l:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 190
    sget-object v0, Lanet/channel/status/c;->a:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lanet/channel/status/c;->l:Landroid/telephony/TelephonyManager;

    .line 192
    :cond_0
    sget-object v0, Lanet/channel/status/c;->l:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lanet/channel/status/c;->h:Ljava/lang/String;

    .line 194
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_2

    .line 195
    sget-object v0, Lanet/channel/status/c;->n:Landroid/telephony/SubscriptionManager;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 196
    sget-object v0, Lanet/channel/status/c;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    sput-object v0, Lanet/channel/status/c;->n:Landroid/telephony/SubscriptionManager;

    .line 197
    sget-object v0, Lanet/channel/status/c;->n:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getDefaultDataSubscriptionInfo"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lanet/channel/status/c;->o:Ljava/lang/reflect/Method;

    .line 199
    :cond_1
    sget-object v0, Lanet/channel/status/c;->o:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    .line 200
    sget-object v0, Lanet/channel/status/c;->o:Ljava/lang/reflect/Method;

    sget-object v2, Lanet/channel/status/c;->n:Landroid/telephony/SubscriptionManager;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 201
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lanet/channel/status/c;->g:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method private static d()Landroid/net/wifi/WifiInfo;
    .locals 5

    const/4 v0, 0x0

    .line 224
    :try_start_0
    sget-object v1, Lanet/channel/status/c;->m:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 225
    sget-object v1, Lanet/channel/status/c;->a:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    sput-object v1, Lanet/channel/status/c;->m:Landroid/net/wifi/WifiManager;

    .line 227
    :cond_0
    sget-object v1, Lanet/channel/status/c;->m:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "awcn.NetworkStatusMonitor"

    const-string v3, "getWifiInfo"

    const/4 v4, 0x0

    .line 229
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v0, v1, v4}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method private static e()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "http.proxyHost"

    .line 236
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "http.proxyPort"

    .line 238
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 239
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
