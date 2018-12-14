.class Lcom/mh/movie/core/mvp/ui/activity/b$1;
.super Landroid/content/BroadcastReceiver;
.source "AbsSystemReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/activity/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/b;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/b;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/b$1;->a:Lcom/mh/movie/core/mvp/ui/activity/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 74
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_ON"

    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    new-instance p1, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;

    invoke-direct {p1}, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;-><init>()V

    const-string p2, "quit"

    .line 84
    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;->setType(Ljava/lang/String;)V

    const-string p2, "returnHome"

    .line 85
    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;->setSecondaryType(Ljava/lang/String;)V

    .line 86
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/b/a;->a(Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;)V

    goto :goto_0

    :cond_1
    const-string v0, "android.intent.action.USER_PRESENT"

    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 93
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
