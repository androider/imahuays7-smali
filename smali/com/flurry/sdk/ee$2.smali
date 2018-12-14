.class final Lcom/flurry/sdk/ee$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/cw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ee;
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
.field final synthetic a:Lcom/flurry/sdk/ee;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ee;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/flurry/sdk/ee$2;->a:Lcom/flurry/sdk/ee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/cv;)V
    .locals 5

    .line 45
    check-cast p1, Lcom/flurry/sdk/co;

    .line 1048
    iget-object v0, p1, Lcom/flurry/sdk/co;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 1050
    invoke-static {}, Lcom/flurry/sdk/ee;->g()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Activity has been destroyed, can\'t pass ActivityLifecycleEvent to adobject."

    invoke-static {p1, v0}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1055
    :cond_0
    sget-object v1, Lcom/flurry/sdk/ee$8;->a:[I

    iget v2, p1, Lcom/flurry/sdk/co;->b:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    const/4 v2, 0x3

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1074
    :pswitch_0
    invoke-static {}, Lcom/flurry/sdk/ee;->g()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Automatic onEndSession (destroyed) for context:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/flurry/sdk/co;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1073
    invoke-static {v2, v1, p1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1076
    iget-object p1, p0, Lcom/flurry/sdk/ee$2;->a:Lcom/flurry/sdk/ee;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/ee;->d(Landroid/content/Context;)V

    goto :goto_0

    .line 1065
    :pswitch_1
    invoke-static {}, Lcom/flurry/sdk/ee;->g()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Automatic onEndSession for context:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/flurry/sdk/co;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1067
    iget-object p1, p0, Lcom/flurry/sdk/ee$2;->a:Lcom/flurry/sdk/ee;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/ee;->d(Landroid/content/Context;)V

    return-void

    .line 1058
    :pswitch_2
    invoke-static {}, Lcom/flurry/sdk/ee;->g()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Automatic onStartSession for context:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/flurry/sdk/co;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1060
    iget-object p1, p0, Lcom/flurry/sdk/ee$2;->a:Lcom/flurry/sdk/ee;

    invoke-static {p1, v0}, Lcom/flurry/sdk/ee;->a(Lcom/flurry/sdk/ee;Landroid/content/Context;)V

    return-void

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
