.class final Lcom/flurry/sdk/dp$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/cw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/dp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/cw<",
        "Lcom/flurry/sdk/by;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/dp;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/dp;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/flurry/sdk/dp$1;->a:Lcom/flurry/sdk/dp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/cv;)V
    .locals 3

    .line 28
    check-cast p1, Lcom/flurry/sdk/by;

    .line 1031
    iget-object v0, p0, Lcom/flurry/sdk/dp$1;->a:Lcom/flurry/sdk/dp;

    iget-object v0, v0, Lcom/flurry/sdk/dp;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onNetworkStateChanged : isNetworkEnable = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p1, Lcom/flurry/sdk/by;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1033
    iget-boolean p1, p1, Lcom/flurry/sdk/by;->a:Z

    if-eqz p1, :cond_0

    .line 1034
    iget-object p1, p0, Lcom/flurry/sdk/dp$1;->a:Lcom/flurry/sdk/dp;

    invoke-virtual {p1}, Lcom/flurry/sdk/dp;->d()V

    :cond_0
    return-void
.end method
