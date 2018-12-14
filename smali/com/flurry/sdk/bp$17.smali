.class final Lcom/flurry/sdk/bp$17;
.super Lcom/flurry/sdk/ep;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/bp;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/bp;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/bp;)V
    .locals 0

    .line 682
    iput-object p1, p0, Lcom/flurry/sdk/bp$17;->a:Lcom/flurry/sdk/bp;

    invoke-direct {p0}, Lcom/flurry/sdk/ep;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 685
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v0

    .line 1152
    iget-object v0, v0, Lcom/flurry/sdk/y;->c:Lcom/flurry/sdk/av;

    const/4 v1, 0x0

    .line 1216
    iput-boolean v1, v0, Lcom/flurry/sdk/do;->c:Z

    .line 1219
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/do$5;

    invoke-direct {v2, v0}, Lcom/flurry/sdk/do$5;-><init>(Lcom/flurry/sdk/do;)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/cl;->b(Ljava/lang/Runnable;)V

    return-void
.end method
