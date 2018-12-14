.class final Lcom/flurry/sdk/bt$3;
.super Lcom/flurry/sdk/ep;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/bt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/bt;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/bt;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/flurry/sdk/bt$3;->a:Lcom/flurry/sdk/bt;

    invoke-direct {p0}, Lcom/flurry/sdk/ep;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 300
    invoke-static {}, Lcom/flurry/sdk/bt;->g()Lcom/flurry/sdk/cd;

    move-result-object v0

    .line 302
    iget-object v1, p0, Lcom/flurry/sdk/bt$3;->a:Lcom/flurry/sdk/bt;

    invoke-static {v1, v0}, Lcom/flurry/sdk/bt;->a(Lcom/flurry/sdk/bt;Lcom/flurry/sdk/cd;)V

    return-void
.end method
