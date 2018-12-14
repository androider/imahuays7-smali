.class public final Lcom/flurry/sdk/dp$6;
.super Lcom/flurry/sdk/ep;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/dp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/flurry/sdk/dp;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/dp;Ljava/lang/String;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/flurry/sdk/dp$6;->b:Lcom/flurry/sdk/dp;

    iput-object p2, p0, Lcom/flurry/sdk/dp$6;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/flurry/sdk/ep;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 287
    iget-object v0, p0, Lcom/flurry/sdk/dp$6;->b:Lcom/flurry/sdk/dp;

    iget-object v0, v0, Lcom/flurry/sdk/dp;->c:Ljava/util/Set;

    iget-object v1, p0, Lcom/flurry/sdk/dp$6;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x6

    .line 289
    iget-object v1, p0, Lcom/flurry/sdk/dp$6;->b:Lcom/flurry/sdk/dp;

    iget-object v1, v1, Lcom/flurry/sdk/dp;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Internal error. Block with id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/dp$6;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " was not in progress state"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
