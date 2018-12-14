.class final Lcom/flurry/sdk/dp$4;
.super Lcom/flurry/sdk/ep;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/dp;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/dp$a;

.field final synthetic b:Lcom/flurry/sdk/dp;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/dp;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/flurry/sdk/dp$4;->b:Lcom/flurry/sdk/dp;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/flurry/sdk/dp$4;->a:Lcom/flurry/sdk/dp$a;

    invoke-direct {p0}, Lcom/flurry/sdk/ep;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/flurry/sdk/dp$4;->b:Lcom/flurry/sdk/dp;

    invoke-virtual {v0}, Lcom/flurry/sdk/dp;->c()V

    return-void
.end method
