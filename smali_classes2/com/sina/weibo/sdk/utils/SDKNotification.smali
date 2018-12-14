.class public Lcom/sina/weibo/sdk/utils/SDKNotification;
.super Ljava/lang/Object;
.source "SDKNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNotification:Landroid/app/Notification;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sina/weibo/sdk/utils/SDKNotification;->mContext:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/sina/weibo/sdk/utils/SDKNotification;->mNotification:Landroid/app/Notification;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/app/Notification;Lcom/sina/weibo/sdk/utils/SDKNotification$1;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/sina/weibo/sdk/utils/SDKNotification;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public show(I)V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/sina/weibo/sdk/utils/SDKNotification;->mNotification:Landroid/app/Notification;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/sina/weibo/sdk/utils/SDKNotification;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/sina/weibo/sdk/utils/SDKNotification;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method
