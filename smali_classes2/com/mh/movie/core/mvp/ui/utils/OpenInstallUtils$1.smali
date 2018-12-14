.class final Lcom/mh/movie/core/mvp/ui/utils/OpenInstallUtils$1;
.super Lcom/fm/openinstall/g/a;
.source "OpenInstallUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/utils/OpenInstallUtils;->getData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/fm/openinstall/g/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onInstall(Lcom/fm/openinstall/model/AppData;)V
    .locals 3

    .line 15
    invoke-virtual {p1}, Lcom/fm/openinstall/model/AppData;->getChannel()Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Lcom/fm/openinstall/model/AppData;->getData()Ljava/lang/String;

    const-string v0, "OpenInstall"

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInstall : installData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/fm/openinstall/model/AppData;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
