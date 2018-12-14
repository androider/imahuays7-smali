.class final Lcom/flurry/sdk/bx$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/bx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/bx;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/bx;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/flurry/sdk/bx$1;->a:Lcom/flurry/sdk/bx;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 204
    iget-object v0, p0, Lcom/flurry/sdk/bx$1;->a:Lcom/flurry/sdk/bx;

    invoke-static {v0}, Lcom/flurry/sdk/bx;->a(Lcom/flurry/sdk/bx;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/bx$1;->a:Lcom/flurry/sdk/bx;

    .line 205
    invoke-static {v0}, Lcom/flurry/sdk/bx;->a(Lcom/flurry/sdk/bx;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x4

    .line 206
    invoke-static {}, Lcom/flurry/sdk/bx;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No location received in 90 seconds , stopping LocationManager"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/flurry/sdk/bx$1;->a:Lcom/flurry/sdk/bx;

    invoke-static {v0}, Lcom/flurry/sdk/bx;->b(Lcom/flurry/sdk/bx;)V

    :cond_0
    return-void
.end method
