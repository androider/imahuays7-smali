.class final Lcom/flurry/sdk/ci$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/cw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ci;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/cw<",
        "Lcom/flurry/sdk/ed;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ci;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ci;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/flurry/sdk/ci$1;->a:Lcom/flurry/sdk/ci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/cv;)V
    .locals 7

    .line 31
    check-cast p1, Lcom/flurry/sdk/ed;

    .line 1034
    iget-object v0, p0, Lcom/flurry/sdk/ci$1;->a:Lcom/flurry/sdk/ci;

    invoke-static {v0}, Lcom/flurry/sdk/ci;->a(Lcom/flurry/sdk/ci;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/flurry/sdk/ed;->b:Lcom/flurry/sdk/ec;

    iget-object v1, p0, Lcom/flurry/sdk/ci$1;->a:Lcom/flurry/sdk/ci;

    invoke-static {v1}, Lcom/flurry/sdk/ci;->a(Lcom/flurry/sdk/ci;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 1038
    :cond_0
    sget-object v0, Lcom/flurry/sdk/ci$4;->a:[I

    iget v1, p1, Lcom/flurry/sdk/ed;->d:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1052
    :pswitch_0
    invoke-static {}, Lcom/flurry/sdk/cx;->a()Lcom/flurry/sdk/cx;

    move-result-object p1

    const-string v0, "com.flurry.android.sdk.FlurrySessionEvent"

    iget-object v1, p0, Lcom/flurry/sdk/ci$1;->a:Lcom/flurry/sdk/ci;

    .line 1053
    invoke-static {v1}, Lcom/flurry/sdk/ci;->b(Lcom/flurry/sdk/ci;)Lcom/flurry/sdk/cw;

    move-result-object v1

    .line 1052
    invoke-virtual {p1, v0, v1}, Lcom/flurry/sdk/cx;->b(Ljava/lang/String;Lcom/flurry/sdk/cw;)V

    .line 1055
    invoke-static {}, Lcom/flurry/sdk/ci;->b()V

    goto :goto_0

    .line 1048
    :pswitch_1
    iget-object v0, p0, Lcom/flurry/sdk/ci$1;->a:Lcom/flurry/sdk/ci;

    iget-object p1, p1, Lcom/flurry/sdk/ed;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 1104
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/flurry/sdk/ci;->c:J

    sub-long v5, v1, v3

    iput-wide v5, v0, Lcom/flurry/sdk/ci;->d:J

    return-void

    .line 1044
    :pswitch_2
    iget-object v0, p0, Lcom/flurry/sdk/ci$1;->a:Lcom/flurry/sdk/ci;

    iget-object p1, p1, Lcom/flurry/sdk/ed;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/flurry/sdk/ci;->a()V

    return-void

    .line 1040
    :pswitch_3
    iget-object v0, p0, Lcom/flurry/sdk/ci$1;->a:Lcom/flurry/sdk/ci;

    iget-object v1, p1, Lcom/flurry/sdk/ed;->b:Lcom/flurry/sdk/ec;

    iget-object p1, p1, Lcom/flurry/sdk/ed;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 1080
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, v0, Lcom/flurry/sdk/ci;->a:Ljava/lang/ref/WeakReference;

    .line 1082
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/flurry/sdk/ci;->b:J

    .line 1083
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/flurry/sdk/ci;->c:J

    .line 1086
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object p1

    new-instance v1, Lcom/flurry/sdk/ci$3;

    invoke-direct {v1, v0}, Lcom/flurry/sdk/ci$3;-><init>(Lcom/flurry/sdk/ci;)V

    invoke-virtual {p1, v1}, Lcom/flurry/sdk/cl;->b(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
