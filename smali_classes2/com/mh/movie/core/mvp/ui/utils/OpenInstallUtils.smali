.class public Lcom/mh/movie/core/mvp/ui/utils/OpenInstallUtils;
.super Ljava/lang/Object;
.source "OpenInstallUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getData()V
    .locals 1

    .line 11
    new-instance v0, Lcom/mh/movie/core/mvp/ui/utils/OpenInstallUtils$1;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/ui/utils/OpenInstallUtils$1;-><init>()V

    invoke-static {v0}, Lcom/fm/openinstall/OpenInstall;->getInstall(Lcom/fm/openinstall/g/b;)V

    return-void
.end method
