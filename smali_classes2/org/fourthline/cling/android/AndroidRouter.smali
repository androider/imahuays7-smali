.class public Lorg/fourthline/cling/android/AndroidRouter;
.super Lorg/fourthline/cling/transport/RouterImpl;
.source "AndroidRouter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fourthline/cling/android/AndroidRouter$ConnectivityBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final context:Landroid/content/Context;

.field protected multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

.field protected networkInfo:Landroid/net/NetworkInfo;

.field protected wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private final wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lorg/fourthline/cling/transport/Router;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/android/AndroidRouter;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/UpnpServiceConfiguration;Lorg/fourthline/cling/protocol/ProtocolFactory;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/spi/InitializationException;
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Lorg/fourthline/cling/transport/RouterImpl;-><init>(Lorg/fourthline/cling/UpnpServiceConfiguration;Lorg/fourthline/cling/protocol/ProtocolFactory;)V

    .line 60
    iput-object p3, p0, Lorg/fourthline/cling/android/AndroidRouter;->context:Landroid/content/Context;

    const-string p1, "wifi"

    .line 61
    invoke-virtual {p3, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lorg/fourthline/cling/android/AndroidRouter;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 62
    invoke-static {p3}, Lorg/fourthline/cling/android/NetworkUtils;->getConnectedNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p1

    iput-object p1, p0, Lorg/fourthline/cling/android/AndroidRouter;->networkInfo:Landroid/net/NetworkInfo;

    .line 65
    sget-boolean p1, Lorg/fourthline/cling/model/ModelUtil;->ANDROID_EMULATOR:Z

    if-nez p1, :cond_0

    .line 66
    invoke-virtual {p0}, Lorg/fourthline/cling/android/AndroidRouter;->createConnectivityBroadcastReceiver()Landroid/content/BroadcastReceiver;

    move-result-object p1

    iput-object p1, p0, Lorg/fourthline/cling/android/AndroidRouter;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 67
    iget-object p1, p0, Lorg/fourthline/cling/android/AndroidRouter;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .line 43
    sget-object v0, Lorg/fourthline/cling/android/AndroidRouter;->log:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method protected createConnectivityBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .line 72
    new-instance v0, Lorg/fourthline/cling/android/AndroidRouter$ConnectivityBroadcastReceiver;

    invoke-direct {v0, p0}, Lorg/fourthline/cling/android/AndroidRouter$ConnectivityBroadcastReceiver;-><init>(Lorg/fourthline/cling/android/AndroidRouter;)V

    return-object v0
.end method

.method public disable()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lorg/fourthline/cling/android/AndroidRouter;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/android/AndroidRouter;->lock(Ljava/util/concurrent/locks/Lock;)V

    .line 111
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/android/AndroidRouter;->isWifi()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 112
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/android/AndroidRouter;->setWiFiMulticastLock(Z)V

    .line 113
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/android/AndroidRouter;->setWifiLock(Z)V

    .line 115
    :cond_0
    invoke-super {p0}, Lorg/fourthline/cling/transport/RouterImpl;->disable()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    iget-object v1, p0, Lorg/fourthline/cling/android/AndroidRouter;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v1}, Lorg/fourthline/cling/android/AndroidRouter;->unlock(Ljava/util/concurrent/locks/Lock;)V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/fourthline/cling/android/AndroidRouter;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v1}, Lorg/fourthline/cling/android/AndroidRouter;->unlock(Ljava/util/concurrent/locks/Lock;)V

    throw v0
.end method

.method public enable()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lorg/fourthline/cling/android/AndroidRouter;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/android/AndroidRouter;->lock(Ljava/util/concurrent/locks/Lock;)V

    .line 91
    :try_start_0
    invoke-super {p0}, Lorg/fourthline/cling/transport/RouterImpl;->enable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lorg/fourthline/cling/android/AndroidRouter;->isWifi()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 95
    invoke-virtual {p0, v1}, Lorg/fourthline/cling/android/AndroidRouter;->setWiFiMulticastLock(Z)V

    .line 96
    invoke-virtual {p0, v1}, Lorg/fourthline/cling/android/AndroidRouter;->setWifiLock(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_0
    iget-object v1, p0, Lorg/fourthline/cling/android/AndroidRouter;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v1}, Lorg/fourthline/cling/android/AndroidRouter;->unlock(Ljava/util/concurrent/locks/Lock;)V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/fourthline/cling/android/AndroidRouter;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v1}, Lorg/fourthline/cling/android/AndroidRouter;->unlock(Ljava/util/concurrent/locks/Lock;)V

    throw v0
.end method

.method public enableWiFi()Z
    .locals 4

    .line 138
    sget-object v0, Lorg/fourthline/cling/android/AndroidRouter;->log:Ljava/util/logging/Logger;

    const-string v1, "Enabling WiFi..."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 140
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/android/AndroidRouter;->wifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 149
    sget-object v1, Lorg/fourthline/cling/android/AndroidRouter;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "SetWifiEnabled failed"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method protected getLockTimeoutMillis()I
    .locals 1

    const/16 v0, 0x3a98

    return v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/fourthline/cling/android/AndroidRouter;->networkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method protected handleRouterExceptionOnNetworkTypeChange(Lorg/fourthline/cling/transport/RouterException;)V
    .locals 5

    .line 239
    invoke-static {p1}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 240
    instance-of v1, v0, Ljava/lang/InterruptedException;

    if-eqz v1, :cond_0

    .line 241
    sget-object v1, Lorg/fourthline/cling/android/AndroidRouter;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Router was interrupted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 243
    :cond_0
    sget-object v0, Lorg/fourthline/cling/android/AndroidRouter;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Router error on network change: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public isEthernet()Z
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/fourthline/cling/android/AndroidRouter;->networkInfo:Landroid/net/NetworkInfo;

    invoke-static {v0}, Lorg/fourthline/cling/android/NetworkUtils;->isEthernet(Landroid/net/NetworkInfo;)Z

    move-result v0

    return v0
.end method

.method public isMobile()Z
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/fourthline/cling/android/AndroidRouter;->networkInfo:Landroid/net/NetworkInfo;

    invoke-static {v0}, Lorg/fourthline/cling/android/NetworkUtils;->isMobile(Landroid/net/NetworkInfo;)Z

    move-result v0

    return v0
.end method

.method public isWifi()Z
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/fourthline/cling/android/AndroidRouter;->networkInfo:Landroid/net/NetworkInfo;

    invoke-static {v0}, Lorg/fourthline/cling/android/NetworkUtils;->isWifi(Landroid/net/NetworkInfo;)Z

    move-result v0

    return v0
.end method

.method protected onNetworkTypeChange(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 211
    sget-object v0, Lorg/fourthline/cling/android/AndroidRouter;->log:Ljava/util/logging/Logger;

    const-string v1, "Network type changed %s => %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    if-nez p1, :cond_0

    const-string v3, ""

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    :goto_0
    const/4 v4, 0x0

    aput-object v3, v2, v4

    if-nez p2, :cond_1

    const-string v3, "NONE"

    goto :goto_1

    .line 213
    :cond_1
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    :goto_1
    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 211
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Lorg/fourthline/cling/android/AndroidRouter;->disable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 216
    sget-object v0, Lorg/fourthline/cling/android/AndroidRouter;->log:Ljava/util/logging/Logger;

    const-string v1, "Disabled router on network type change (old network: %s)"

    new-array v2, v5, [Ljava/lang/Object;

    if-nez p1, :cond_2

    const-string p1, "NONE"

    goto :goto_2

    .line 218
    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object p1

    :goto_2
    aput-object p1, v2, v4

    .line 216
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 222
    :cond_3
    iput-object p2, p0, Lorg/fourthline/cling/android/AndroidRouter;->networkInfo:Landroid/net/NetworkInfo;

    .line 223
    invoke-virtual {p0}, Lorg/fourthline/cling/android/AndroidRouter;->enable()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 226
    sget-object p1, Lorg/fourthline/cling/android/AndroidRouter;->log:Ljava/util/logging/Logger;

    const-string v0, "Enabled router on network type change (new network: %s)"

    new-array v1, v5, [Ljava/lang/Object;

    if-nez p2, :cond_4

    const-string p2, "NONE"

    goto :goto_3

    .line 228
    :cond_4
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object p2

    :goto_3
    aput-object p2, v1, v4

    .line 226
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method protected setWiFiMulticastLock(Z)V
    .locals 2

    .line 162
    iget-object v0, p0, Lorg/fourthline/cling/android/AndroidRouter;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lorg/fourthline/cling/android/AndroidRouter;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/android/AndroidRouter;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    :cond_0
    if-eqz p1, :cond_2

    .line 167
    iget-object p1, p0, Lorg/fourthline/cling/android/AndroidRouter;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 168
    sget-object p1, Lorg/fourthline/cling/android/AndroidRouter;->log:Ljava/util/logging/Logger;

    const-string v0, "WiFi multicast lock already acquired"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_1
    sget-object p1, Lorg/fourthline/cling/android/AndroidRouter;->log:Ljava/util/logging/Logger;

    const-string v0, "WiFi multicast lock acquired"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 171
    iget-object p1, p0, Lorg/fourthline/cling/android/AndroidRouter;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    goto :goto_0

    .line 174
    :cond_2
    iget-object p1, p0, Lorg/fourthline/cling/android/AndroidRouter;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 175
    sget-object p1, Lorg/fourthline/cling/android/AndroidRouter;->log:Ljava/util/logging/Logger;

    const-string v0, "WiFi multicast lock released"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 176
    iget-object p1, p0, Lorg/fourthline/cling/android/AndroidRouter;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    goto :goto_0

    .line 178
    :cond_3
    sget-object p1, Lorg/fourthline/cling/android/AndroidRouter;->log:Ljava/util/logging/Logger;

    const-string v0, "WiFi multicast lock already released"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected setWifiLock(Z)V
    .locals 3

    .line 184
    iget-object v0, p0, Lorg/fourthline/cling/android/AndroidRouter;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lorg/fourthline/cling/android/AndroidRouter;->wifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/android/AndroidRouter;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    :cond_0
    if-eqz p1, :cond_2

    .line 189
    iget-object p1, p0, Lorg/fourthline/cling/android/AndroidRouter;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 190
    sget-object p1, Lorg/fourthline/cling/android/AndroidRouter;->log:Ljava/util/logging/Logger;

    const-string v0, "WiFi lock already acquired"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_1
    sget-object p1, Lorg/fourthline/cling/android/AndroidRouter;->log:Ljava/util/logging/Logger;

    const-string v0, "WiFi lock acquired"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 193
    iget-object p1, p0, Lorg/fourthline/cling/android/AndroidRouter;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    goto :goto_0

    .line 196
    :cond_2
    iget-object p1, p0, Lorg/fourthline/cling/android/AndroidRouter;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 197
    sget-object p1, Lorg/fourthline/cling/android/AndroidRouter;->log:Ljava/util/logging/Logger;

    const-string v0, "WiFi lock released"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 198
    iget-object p1, p0, Lorg/fourthline/cling/android/AndroidRouter;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    goto :goto_0

    .line 200
    :cond_3
    sget-object p1, Lorg/fourthline/cling/android/AndroidRouter;->log:Ljava/util/logging/Logger;

    const-string v0, "WiFi lock already released"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public shutdown()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 82
    invoke-super {p0}, Lorg/fourthline/cling/transport/RouterImpl;->shutdown()V

    .line 83
    invoke-virtual {p0}, Lorg/fourthline/cling/android/AndroidRouter;->unregisterBroadcastReceiver()V

    return-void
.end method

.method public unregisterBroadcastReceiver()V
    .locals 2

    .line 155
    iget-object v0, p0, Lorg/fourthline/cling/android/AndroidRouter;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lorg/fourthline/cling/android/AndroidRouter;->context:Landroid/content/Context;

    iget-object v1, p0, Lorg/fourthline/cling/android/AndroidRouter;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Lorg/fourthline/cling/android/AndroidRouter;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method
