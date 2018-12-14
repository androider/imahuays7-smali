.class public abstract Lcom/mh/movie/core/mvp/ui/activity/a;
.super Lcom/jess/arms/a/b;
.source "AbsDNSProcessor.java"

# interfaces
.implements Lcom/jess/arms/mvp/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P::",
        "Lcom/jess/arms/mvp/b;",
        ">",
        "Lcom/jess/arms/a/b<",
        "TP;>;",
        "Lcom/jess/arms/mvp/c;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/jess/arms/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    invoke-static {p0}, Lcom/jess/arms/mvp/d;->b(Lcom/jess/arms/mvp/c;)V

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jess/arms/mvp/d;->a(Lcom/jess/arms/mvp/c;Ljava/lang/String;)V

    return-void
.end method

.method public e_()V
    .locals 0

    invoke-static {p0}, Lcom/jess/arms/mvp/d;->a(Lcom/jess/arms/mvp/c;)V

    return-void
.end method

.method public i()V
    .locals 1

    .line 32
    invoke-static {p0}, Lcom/mh/movie/core/mvp/ui/utils/TimeUtils;->canRetryAfter1Hour(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-static {p0}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getDomainModel(Landroid/content/Context;)Lcom/mh/movie/core/mvp/model/entity/Domain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/Domain;->getBLOG_URL()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mh/movie/core/mvp/ui/utils/a/a;->a(Landroid/content/Context;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 23
    invoke-super {p0}, Lcom/jess/arms/a/b;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 17
    invoke-super {p0}, Lcom/jess/arms/a/b;->onResume()V

    .line 18
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/a;->i()V

    return-void
.end method
