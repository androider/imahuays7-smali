.class public Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;
.super Ljava/lang/Object;
.source "SDKNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/utils/SDKNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SDKNotificationBuilder"
.end annotation


# instance fields
.field private mNotificationContent:Ljava/lang/String;

.field private mNotificationPendingIntent:Landroid/app/PendingIntent;

.field private mNotificationTitle:Ljava/lang/String;

.field private mSoundUri:Landroid/net/Uri;

.field private mTickerText:Ljava/lang/String;

.field private mVibrate:[J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildUpon()Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;
    .locals 1

    .line 64
    new-instance v0, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;-><init>()V

    return-object v0
.end method

.method private static getNotificationIcon(Landroid/content/Context;)I
    .locals 2

    const-string v0, "com_sina_weibo_sdk_weibo_logo"

    const-string v1, "drawable"

    .line 131
    invoke-static {p0, v0, v1}, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const p0, 0x108009b

    :goto_0
    return p0
.end method

.method private static getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 148
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    .line 149
    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 151
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public build(Landroid/content/Context;)Lcom/sina/weibo/sdk/utils/SDKNotification;
    .locals 3

    .line 99
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 101
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 102
    iget-object v1, p0, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;->mNotificationPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 103
    iget-object v1, p0, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;->mTickerText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 105
    invoke-static {p1}, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;->getNotificationIcon(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 108
    iget-object v1, p0, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;->mSoundUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;->mSoundUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;->mVibrate:[J

    if-eqz v1, :cond_1

    .line 113
    iget-object v1, p0, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;->mVibrate:[J

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_1
    const-string v1, "weibosdk_notification_icon.png"

    .line 116
    invoke-static {p1, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 117
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 118
    iget-object v1, p0, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;->mNotificationTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 119
    iget-object v1, p0, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;->mNotificationContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 120
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 121
    new-instance v1, Lcom/sina/weibo/sdk/utils/SDKNotification;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lcom/sina/weibo/sdk/utils/SDKNotification;-><init>(Landroid/content/Context;Landroid/app/Notification;Lcom/sina/weibo/sdk/utils/SDKNotification$1;)V

    return-object v1
.end method

.method public setNotificationContent(Ljava/lang/String;)Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;->mNotificationContent:Ljava/lang/String;

    return-object p0
.end method

.method public setNotificationPendingIntent(Landroid/app/PendingIntent;)Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;->mNotificationPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setNotificationTitle(Ljava/lang/String;)Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;->mNotificationTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setSoundUri(Landroid/net/Uri;)Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;->mSoundUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setTickerText(Ljava/lang/String;)Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;->mTickerText:Ljava/lang/String;

    return-object p0
.end method

.method public setVibrate([J)Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;->mVibrate:[J

    return-object p0
.end method
