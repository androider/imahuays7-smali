.class final Lcom/flurry/sdk/do$3;
.super Lcom/flurry/sdk/ep;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/do;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/do;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/do;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/flurry/sdk/do$3;->a:Lcom/flurry/sdk/do;

    invoke-direct {p0}, Lcom/flurry/sdk/ep;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/flurry/sdk/do$3;->a:Lcom/flurry/sdk/do;

    iget-object v1, p0, Lcom/flurry/sdk/do$3;->a:Lcom/flurry/sdk/do;

    invoke-static {v1}, Lcom/flurry/sdk/do;->b(Lcom/flurry/sdk/do;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/do;->a(Ljava/util/List;)V

    .line 63
    iget-object v0, p0, Lcom/flurry/sdk/do$3;->a:Lcom/flurry/sdk/do;

    invoke-static {v0}, Lcom/flurry/sdk/do;->a(Lcom/flurry/sdk/do;)V

    return-void
.end method
