.class Lorg/fourthline/cling/android/AndroidRouter$ConnectivityBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AndroidRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/android/AndroidRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectivityBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/android/AndroidRouter;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/android/AndroidRouter;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lorg/fourthline/cling/android/AndroidRouter$ConnectivityBroadcastReceiver;->this$0:Lorg/fourthline/cling/android/AndroidRouter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected displayIntentInfo(Landroid/content/Intent;)V
    .locals 8

    const-string v0, "noConnectivity"

    const/4 v1, 0x0

    .line 302
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "reason"

    .line 303
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "isFailover"

    .line 304
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "networkInfo"

    .line 306
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    const-string v4, "otherNetwork"

    .line 307
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    .line 309
    invoke-static {}, Lorg/fourthline/cling/android/AndroidRouter;->access$000()Ljava/util/logging/Logger;

    move-result-object v5

    const-string v6, "Connectivity change detected..."

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 310
    invoke-static {}, Lorg/fourthline/cling/android/AndroidRouter;->access$000()Ljava/util/logging/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EXTRA_NO_CONNECTIVITY: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 311
    invoke-static {}, Lorg/fourthline/cling/android/AndroidRouter;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EXTRA_REASON: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 312
    invoke-static {}, Lorg/fourthline/cling/android/AndroidRouter;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EXTRA_IS_FAILOVER: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 313
    invoke-static {}, Lorg/fourthline/cling/android/AndroidRouter;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EXTRA_NETWORK_INFO: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_0

    const-string v3, "none"

    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 314
    invoke-static {}, Lorg/fourthline/cling/android/AndroidRouter;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EXTRA_OTHER_NETWORK_INFO: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_1

    const-string v4, "none"

    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 315
    invoke-static {}, Lorg/fourthline/cling/android/AndroidRouter;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EXTRA_EXTRA_INFO: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "extraInfo"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method protected isSameNetworkType(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_1

    goto :goto_1

    .line 298
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result p2

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 252
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 255
    :cond_0
    invoke-virtual {p0, p2}, Lorg/fourthline/cling/android/AndroidRouter$ConnectivityBroadcastReceiver;->displayIntentInfo(Landroid/content/Intent;)V

    .line 257
    invoke-static {p1}, Lorg/fourthline/cling/android/NetworkUtils;->getConnectedNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p2

    .line 265
    iget-object v0, p0, Lorg/fourthline/cling/android/AndroidRouter$ConnectivityBroadcastReceiver;->this$0:Lorg/fourthline/cling/android/AndroidRouter;

    iget-object v0, v0, Lorg/fourthline/cling/android/AndroidRouter;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    const/4 v0, 0x1

    move-object v1, p2

    const/4 p2, 0x1

    :goto_0
    const/4 v2, 0x3

    if-gt p2, v2, :cond_3

    const-wide/16 v1, 0x3e8

    .line 268
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    invoke-static {}, Lorg/fourthline/cling/android/AndroidRouter;->access$000()Ljava/util/logging/Logger;

    move-result-object v1

    const-string v2, "%s => NONE network transition, waiting for new network... retry #%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/fourthline/cling/android/AndroidRouter$ConnectivityBroadcastReceiver;->this$0:Lorg/fourthline/cling/android/AndroidRouter;

    iget-object v5, v5, Lorg/fourthline/cling/android/AndroidRouter;->networkInfo:Landroid/net/NetworkInfo;

    .line 274
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    .line 272
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 276
    invoke-static {p1}, Lorg/fourthline/cling/android/NetworkUtils;->getConnectedNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    return-void

    :cond_2
    move-object v1, p2

    .line 282
    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/fourthline/cling/android/AndroidRouter$ConnectivityBroadcastReceiver;->this$0:Lorg/fourthline/cling/android/AndroidRouter;

    iget-object p1, p1, Lorg/fourthline/cling/android/AndroidRouter;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p0, p1, v1}, Lorg/fourthline/cling/android/AndroidRouter$ConnectivityBroadcastReceiver;->isSameNetworkType(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 283
    invoke-static {}, Lorg/fourthline/cling/android/AndroidRouter;->access$000()Ljava/util/logging/Logger;

    move-result-object p1

    const-string p2, "No actual network change... ignoring event!"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_2

    .line 286
    :cond_4
    :try_start_1
    iget-object p1, p0, Lorg/fourthline/cling/android/AndroidRouter$ConnectivityBroadcastReceiver;->this$0:Lorg/fourthline/cling/android/AndroidRouter;

    iget-object p2, p0, Lorg/fourthline/cling/android/AndroidRouter$ConnectivityBroadcastReceiver;->this$0:Lorg/fourthline/cling/android/AndroidRouter;

    iget-object p2, p2, Lorg/fourthline/cling/android/AndroidRouter;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p1, p2, v1}, Lorg/fourthline/cling/android/AndroidRouter;->onNetworkTypeChange(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo;)V
    :try_end_1
    .catch Lorg/fourthline/cling/transport/RouterException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 288
    iget-object p2, p0, Lorg/fourthline/cling/android/AndroidRouter$ConnectivityBroadcastReceiver;->this$0:Lorg/fourthline/cling/android/AndroidRouter;

    invoke-virtual {p2, p1}, Lorg/fourthline/cling/android/AndroidRouter;->handleRouterExceptionOnNetworkTypeChange(Lorg/fourthline/cling/transport/RouterException;)V

    :goto_2
    return-void
.end method
