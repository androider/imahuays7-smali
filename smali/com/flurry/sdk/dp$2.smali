.class final Lcom/flurry/sdk/dp$2;
.super Lcom/flurry/sdk/ep;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/dp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/flurry/sdk/dp;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/dp;Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/flurry/sdk/dp$2;->b:Lcom/flurry/sdk/dp;

    iput-object p2, p0, Lcom/flurry/sdk/dp$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/flurry/sdk/ep;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/flurry/sdk/dp$2;->b:Lcom/flurry/sdk/dp;

    new-instance v1, Lcom/flurry/sdk/dr;

    iget-object v2, p0, Lcom/flurry/sdk/dp$2;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/flurry/sdk/dr;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/flurry/sdk/dp;->d:Lcom/flurry/sdk/dr;

    return-void
.end method
