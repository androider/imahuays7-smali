.class final Lcom/flurry/sdk/bz$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/cw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/bz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/cw<",
        "Lcom/flurry/sdk/co;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/bz;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/bz;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/flurry/sdk/bz$1;->a:Lcom/flurry/sdk/bz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/cv;)V
    .locals 3

    .line 41
    check-cast p1, Lcom/flurry/sdk/co;

    .line 1044
    iget-object v0, p1, Lcom/flurry/sdk/co;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    const/4 p1, 0x3

    .line 1046
    sget-object v0, Lcom/flurry/sdk/bz;->a:Ljava/lang/String;

    const-string v1, "Activity has been destroyed, don\'t update network state."

    invoke-static {p1, v0, v1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1051
    :cond_0
    sget-object v1, Lcom/flurry/sdk/bz$2;->a:[I

    iget p1, p1, Lcom/flurry/sdk/co;->b:I

    const/4 v2, 0x1

    sub-int/2addr p1, v2

    aget p1, v1, p1

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 1054
    :cond_1
    iget-object p1, p0, Lcom/flurry/sdk/bz$1;->a:Lcom/flurry/sdk/bz;

    iget-object v1, p0, Lcom/flurry/sdk/bz$1;->a:Lcom/flurry/sdk/bz;

    invoke-static {v1, v0}, Lcom/flurry/sdk/bz;->a(Lcom/flurry/sdk/bz;Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/flurry/sdk/bz;->c:Z

    :goto_0
    return-void
.end method
