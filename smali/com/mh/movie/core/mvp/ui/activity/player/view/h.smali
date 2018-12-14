.class public Lcom/mh/movie/core/mvp/ui/activity/player/view/h;
.super Ljava/lang/Object;
.source "VideoPhoneView.java"


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/widget/BatteryView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/BatteryView;Landroid/widget/TextView;Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/h;->a:Lcom/mh/movie/core/mvp/ui/widget/BatteryView;

    .line 27
    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/h;->b:Landroid/widget/TextView;

    .line 28
    iput-object p3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/h;->c:Landroid/content/Context;

    return-void
.end method

.method private b()V
    .locals 4

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 38
    :try_start_0
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/h;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/jess/arms/c/a;->g(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "HH:mm"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "hh:mm"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 43
    :goto_0
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/h;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 47
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/h;->b()V

    .line 67
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/h;->c:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/h;->a(Landroid/content/Context;)V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    .line 54
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 55
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "level"

    const/4 v1, -0x1

    .line 57
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "scale"

    .line 58
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 61
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/h;->a:Lcom/mh/movie/core/mvp/ui/widget/BatteryView;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/BatteryView;->setPower(I)V

    return-void
.end method
