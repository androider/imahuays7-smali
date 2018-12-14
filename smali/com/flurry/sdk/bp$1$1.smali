.class final Lcom/flurry/sdk/bp$1$1;
.super Lcom/flurry/sdk/ep;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/bp$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/bp$1;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/bp$1;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/flurry/sdk/bp$1$1;->a:Lcom/flurry/sdk/bp$1;

    invoke-direct {p0}, Lcom/flurry/sdk/ep;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 155
    iget-object v0, p0, Lcom/flurry/sdk/bp$1$1;->a:Lcom/flurry/sdk/bp$1;

    iget-object v0, v0, Lcom/flurry/sdk/bp$1;->a:Lcom/flurry/sdk/bp;

    .line 156
    invoke-static {}, Lcom/flurry/sdk/br;->a()Lcom/flurry/sdk/br;

    invoke-static {}, Lcom/flurry/sdk/br;->d()J

    move-result-wide v1

    const/4 v3, 0x1

    .line 155
    invoke-static {v0, v3, v1, v2}, Lcom/flurry/sdk/bp;->a(Lcom/flurry/sdk/bp;ZJ)V

    return-void
.end method
