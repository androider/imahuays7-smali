.class public final Lcom/bumptech/glide/request/ErrorRequestCoordinator;
.super Ljava/lang/Object;
.source "ErrorRequestCoordinator.java"

# interfaces
.implements Lcom/bumptech/glide/request/Request;
.implements Lcom/bumptech/glide/request/RequestCoordinator;


# instance fields
.field private error:Lcom/bumptech/glide/request/Request;

.field private final parent:Lcom/bumptech/glide/request/RequestCoordinator;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private primary:Lcom/bumptech/glide/request/Request;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/request/RequestCoordinator;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/RequestCoordinator;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->parent:Lcom/bumptech/glide/request/RequestCoordinator;

    return-void
.end method

.method private isValidRequest(Lcom/bumptech/glide/request/Request;)Z
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->primary:Lcom/bumptech/glide/request/Request;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->primary:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->error:Lcom/bumptech/glide/request/Request;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private parentCanNotifyCleared()Z
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->parent:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->parent:Lcom/bumptech/glide/request/RequestCoordinator;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->canNotifyCleared(Lcom/bumptech/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private parentCanNotifyStatusChanged()Z
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->parent:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->parent:Lcom/bumptech/glide/request/RequestCoordinator;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->canNotifyStatusChanged(Lcom/bumptech/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private parentCanSetImage()Z
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->parent:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->parent:Lcom/bumptech/glide/request/RequestCoordinator;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->canSetImage(Lcom/bumptech/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private parentIsAnyResourceSet()Z
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->parent:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->parent:Lcom/bumptech/glide/request/RequestCoordinator;

    invoke-interface {v0}, Lcom/bumptech/glide/request/RequestCoordinator;->isAnyResourceSet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public begin()V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->primary:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->primary:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->begin()V

    :cond_0
    return-void
.end method

.method public canNotifyCleared(Lcom/bumptech/glide/request/Request;)Z
    .locals 1

    .line 99
    invoke-direct {p0}, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->parentCanNotifyCleared()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->isValidRequest(Lcom/bumptech/glide/request/Request;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public canNotifyStatusChanged(Lcom/bumptech/glide/request/Request;)Z
    .locals 1

    .line 94
    invoke-direct {p0}, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->parentCanNotifyStatusChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->isValidRequest(Lcom/bumptech/glide/request/Request;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public canSetImage(Lcom/bumptech/glide/request/Request;)Z
    .locals 1

    .line 85
    invoke-direct {p0}, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->parentCanSetImage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->isValidRequest(Lcom/bumptech/glide/request/Request;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public clear()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->primary:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->clear()V

    .line 38
    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->error:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->error:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->clear()V

    :cond_0
    return-void
.end method

.method public isAnyResourceSet()Z
    .locals 1

    .line 116
    invoke-direct {p0}, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->parentIsAnyResourceSet()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->isResourceSet()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isCleared()Z
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->primary:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->error:Lcom/bumptech/glide/request/Request;

    :goto_0
    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->isCleared()Z

    move-result v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->primary:Lcom/bumptech/glide/request/Request;

    goto :goto_0

    :goto_1
    return v0
.end method

.method public isComplete()Z
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->primary:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->error:Lcom/bumptech/glide/request/Request;

    :goto_0
    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->isComplete()Z

    move-result v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->primary:Lcom/bumptech/glide/request/Request;

    goto :goto_0

    :goto_1
    return v0
.end method

.method public isEquivalentTo(Lcom/bumptech/glide/request/Request;)Z
    .locals 3

    .line 76
    instance-of v0, p1, Lcom/bumptech/glide/request/ErrorRequestCoordinator;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 77
    check-cast p1, Lcom/bumptech/glide/request/ErrorRequestCoordinator;

    .line 78
    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->primary:Lcom/bumptech/glide/request/Request;

    iget-object v2, p1, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->primary:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0, v2}, Lcom/bumptech/glide/request/Request;->isEquivalentTo(Lcom/bumptech/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->error:Lcom/bumptech/glide/request/Request;

    iget-object p1, p1, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->error:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/request/Request;->isEquivalentTo(Lcom/bumptech/glide/request/Request;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public isFailed()Z
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->primary:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->error:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isResourceSet()Z
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->primary:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->error:Lcom/bumptech/glide/request/Request;

    :goto_0
    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->isResourceSet()Z

    move-result v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->primary:Lcom/bumptech/glide/request/Request;

    goto :goto_0

    :goto_1
    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->primary:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->error:Lcom/bumptech/glide/request/Request;

    :goto_0
    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->isRunning()Z

    move-result v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->primary:Lcom/bumptech/glide/request/Request;

    goto :goto_0

    :goto_1
    return v0
.end method

.method public onRequestFailed(Lcom/bumptech/glide/request/Request;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->error:Lcom/bumptech/glide/request/Request;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 133
    iget-object p1, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->error:Lcom/bumptech/glide/request/Request;

    invoke-interface {p1}, Lcom/bumptech/glide/request/Request;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    .line 134
    iget-object p1, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->error:Lcom/bumptech/glide/request/Request;

    invoke-interface {p1}, Lcom/bumptech/glide/request/Request;->begin()V

    :cond_0
    return-void

    .line 139
    :cond_1
    iget-object p1, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->parent:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz p1, :cond_2

    .line 140
    iget-object p1, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->parent:Lcom/bumptech/glide/request/RequestCoordinator;

    invoke-interface {p1, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->onRequestFailed(Lcom/bumptech/glide/request/Request;)V

    :cond_2
    return-void
.end method

.method public onRequestSuccess(Lcom/bumptech/glide/request/Request;)V
    .locals 0

    .line 125
    iget-object p1, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->parent:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz p1, :cond_0

    .line 126
    iget-object p1, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->parent:Lcom/bumptech/glide/request/RequestCoordinator;

    invoke-interface {p1, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->onRequestSuccess(Lcom/bumptech/glide/request/Request;)V

    :cond_0
    return-void
.end method

.method public recycle()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->primary:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->recycle()V

    .line 71
    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->error:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->recycle()V

    return-void
.end method

.method public setRequests(Lcom/bumptech/glide/request/Request;Lcom/bumptech/glide/request/Request;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->primary:Lcom/bumptech/glide/request/Request;

    .line 23
    iput-object p2, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->error:Lcom/bumptech/glide/request/Request;

    return-void
.end method
