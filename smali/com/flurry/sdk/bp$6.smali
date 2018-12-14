.class final Lcom/flurry/sdk/bp$6;
.super Lcom/flurry/sdk/ep;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/bp;->a(J)V
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

    .line 972
    iput-object p1, p0, Lcom/flurry/sdk/bp$6;->a:Lcom/flurry/sdk/bp;

    invoke-direct {p0}, Lcom/flurry/sdk/ep;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 975
    iget-object v0, p0, Lcom/flurry/sdk/bp$6;->a:Lcom/flurry/sdk/bp;

    invoke-static {v0}, Lcom/flurry/sdk/bp;->g(Lcom/flurry/sdk/bp;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 976
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v0

    .line 1144
    iget-object v0, v0, Lcom/flurry/sdk/y;->a:Lcom/flurry/sdk/at;

    if-eqz v0, :cond_0

    .line 977
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v0

    .line 2144
    iget-object v0, v0, Lcom/flurry/sdk/y;->a:Lcom/flurry/sdk/at;

    .line 977
    invoke-virtual {v0}, Lcom/flurry/sdk/at;->c()V

    .line 981
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v0

    .line 2152
    iget-object v0, v0, Lcom/flurry/sdk/y;->c:Lcom/flurry/sdk/av;

    if-eqz v0, :cond_1

    .line 982
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/bp$6$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/bp$6$1;-><init>(Lcom/flurry/sdk/bp$6;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/cl;->b(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
