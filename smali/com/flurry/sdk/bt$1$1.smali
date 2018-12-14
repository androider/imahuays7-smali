.class final Lcom/flurry/sdk/bt$1$1;
.super Lcom/flurry/sdk/ep;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/bt$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/bt$1;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/bt$1;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/flurry/sdk/bt$1$1;->a:Lcom/flurry/sdk/bt$1;

    invoke-direct {p0}, Lcom/flurry/sdk/ep;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/flurry/sdk/bt$1$1;->a:Lcom/flurry/sdk/bt$1;

    iget-object v0, v0, Lcom/flurry/sdk/bt$1;->a:Lcom/flurry/sdk/bt;

    invoke-static {v0}, Lcom/flurry/sdk/bt;->a(Lcom/flurry/sdk/bt;)V

    return-void
.end method
