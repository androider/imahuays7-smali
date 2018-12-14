.class public abstract Lcom/fm/openinstall/g/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/fm/openinstall/g/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onInstall(Lcom/fm/openinstall/model/AppData;)V
.end method

.method public onInstallFinish(Lcom/fm/openinstall/model/AppData;Lcom/fm/openinstall/model/a;)V
    .locals 0

    if-nez p1, :cond_0

    new-instance p1, Lcom/fm/openinstall/model/AppData;

    invoke-direct {p1}, Lcom/fm/openinstall/model/AppData;-><init>()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/fm/openinstall/g/a;->onInstall(Lcom/fm/openinstall/model/AppData;)V

    return-void
.end method
