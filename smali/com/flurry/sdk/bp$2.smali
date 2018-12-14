.class final Lcom/flurry/sdk/bp$2;
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

    .line 693
    iput-object p1, p0, Lcom/flurry/sdk/bp$2;->a:Lcom/flurry/sdk/bp;

    invoke-direct {p0}, Lcom/flurry/sdk/ep;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 696
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v0

    .line 1144
    iget-object v0, v0, Lcom/flurry/sdk/y;->a:Lcom/flurry/sdk/at;

    .line 696
    invoke-virtual {v0}, Lcom/flurry/sdk/at;->b()V

    return-void
.end method
