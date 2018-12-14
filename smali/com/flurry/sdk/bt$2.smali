.class final Lcom/flurry/sdk/bt$2;
.super Lcom/flurry/sdk/ep;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/bt;-><init>()V
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

    .line 95
    iput-object p1, p0, Lcom/flurry/sdk/bt$2;->a:Lcom/flurry/sdk/bt;

    invoke-direct {p0}, Lcom/flurry/sdk/ep;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/flurry/sdk/bt$2;->a:Lcom/flurry/sdk/bt;

    invoke-static {v0}, Lcom/flurry/sdk/bt;->b(Lcom/flurry/sdk/bt;)V

    return-void
.end method
