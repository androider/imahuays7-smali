.class public abstract Lcom/mh/movie/core/mvp/ui/activity/b;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "AbsSystemReceiver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P::",
        "Lcom/jess/arms/mvp/b;",
        ">",
        "Lcom/mh/movie/core/mvp/ui/activity/ac<",
        "TP;>;"
    }
.end annotation


# instance fields
.field c:Landroid/content/BroadcastReceiver;

.field private d:Lcom/mh/movie/core/mvp/model/a/a;

.field private e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

.field private f:Z

.field private g:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;-><init>()V

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/b;->f:Z

    .line 71
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/b$1;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/b$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/b;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/b;->c:Landroid/content/BroadcastReceiver;

    .line 124
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/b$2;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/b$2;-><init>(Lcom/mh/movie/core/mvp/ui/activity/b;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/b;->g:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/b;Lcom/mh/movie/core/mvp/model/a/a;)Lcom/mh/movie/core/mvp/model/a/a;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/b;->d:Lcom/mh/movie/core/mvp/model/a/a;

    return-object p1
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/b;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;)Lme/jessyan/rxerrorhandler/core/RxErrorHandler;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/b;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    return-object p1
.end method

.method private f()V
    .locals 2

    .line 104
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 106
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 108
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    .line 110
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 114
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/b;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/mh/movie/core/mvp/ui/activity/b;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private g()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/b;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/b;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private h()V
    .locals 2

    .line 139
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/b;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/mh/movie/core/mvp/ui/activity/b;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private k()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/b;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/b;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 166
    :pswitch_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/b;->e()V

    .line 167
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object p1

    const-string v0, "msg"

    const-string v1, "CONNECT_WIFI"

    invoke-virtual {p1, v0, v1}, Lorg/simple/eventbus/EventBus;->post(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :pswitch_1
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/b;->e()V

    .line 161
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object p1

    const-string v0, "msg"

    const-string v1, "CONNECTED_MOBILE"

    invoke-virtual {p1, v0, v1}, Lorg/simple/eventbus/EventBus;->post(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :pswitch_2
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object p1

    const-string v0, "msg"

    const-string v1, "CONNECTED_WHITHOUT_NET"

    invoke-virtual {p1, v0, v1}, Lorg/simple/eventbus/EventBus;->post(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d()V
    .locals 2

    .line 51
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/MHApplication;->c()Lcom/mh/movie/core/mvp/ui/MHApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/MHApplication;->a()Lcom/jess/arms/b/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/jess/arms/b/a/a;->c()Lcom/jess/arms/integration/IRepositoryManager;

    move-result-object v0

    const-class v1, Lcom/mh/movie/core/mvp/model/a/a;

    invoke-interface {v0, v1}, Lcom/jess/arms/integration/IRepositoryManager;->obtainRetrofitService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/a/a;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/b;->d:Lcom/mh/movie/core/mvp/model/a/a;

    .line 52
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/MHApplication;->c()Lcom/mh/movie/core/mvp/ui/MHApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/MHApplication;->a()Lcom/jess/arms/b/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/jess/arms/b/a/a;->d()Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/b;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    return-void
.end method

.method public e()V
    .locals 4

    .line 175
    sget-boolean v0, Lcom/mh/movie/core/mvp/ui/b;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 176
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/b;->f:Z

    .line 177
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/b;->d()V

    .line 178
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/b;->d:Lcom/mh/movie/core/mvp/model/a/a;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->C:Lcom/mh/movie/core/mvp/ui/utils/AppInfo;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/utils/AppInfo;->getUuid()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mh/movie/core/mvp/ui/b;->C:Lcom/mh/movie/core/mvp/ui/utils/AppInfo;

    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/ui/utils/AppInfo;->getDevice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/mh/movie/core/mvp/ui/b;->C:Lcom/mh/movie/core/mvp/ui/utils/AppInfo;

    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/ui/utils/AppInfo;->getSystemName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/mh/movie/core/mvp/ui/b;->I:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/mh/movie/core/mvp/model/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 179
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 180
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/b$3;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/b;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v3, Lcom/mh/movie/core/mvp/ui/activity/b$4;

    invoke-direct {v3, p0}, Lcom/mh/movie/core/mvp/ui/activity/b$4;-><init>(Lcom/mh/movie/core/mvp/ui/activity/b;)V

    .line 181
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/ui/activity/b$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/mh/movie/core/mvp/ui/activity/b$3;-><init>(Lcom/mh/movie/core/mvp/ui/activity/b;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 57
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/b;->h()V

    .line 58
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/b;->f()V

    .line 59
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/b;->k()V

    .line 66
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/b;->g()V

    .line 67
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onDestroy()V

    return-void
.end method
