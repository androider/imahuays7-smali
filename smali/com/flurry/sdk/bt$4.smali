.class final Lcom/flurry/sdk/bt$4;
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
.field final synthetic a:Lcom/flurry/sdk/cd;

.field final synthetic b:Lcom/flurry/sdk/bt;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/bt;Lcom/flurry/sdk/cd;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/flurry/sdk/bt$4;->b:Lcom/flurry/sdk/bt;

    iput-object p2, p0, Lcom/flurry/sdk/bt$4;->a:Lcom/flurry/sdk/cd;

    invoke-direct {p0}, Lcom/flurry/sdk/ep;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/flurry/sdk/bt$4;->b:Lcom/flurry/sdk/bt;

    iget-object v1, p0, Lcom/flurry/sdk/bt$4;->a:Lcom/flurry/sdk/cd;

    invoke-static {v0, v1}, Lcom/flurry/sdk/bt;->a(Lcom/flurry/sdk/bt;Lcom/flurry/sdk/cd;)V

    return-void
.end method
