.class final Lcom/flurry/sdk/bp$6$1;
.super Lcom/flurry/sdk/ep;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/bp$6;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/bp$6;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/bp$6;)V
    .locals 0

    .line 982
    iput-object p1, p0, Lcom/flurry/sdk/bp$6$1;->a:Lcom/flurry/sdk/bp$6;

    invoke-direct {p0}, Lcom/flurry/sdk/ep;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 985
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v0

    .line 1152
    iget-object v0, v0, Lcom/flurry/sdk/y;->c:Lcom/flurry/sdk/av;

    const/4 v1, 0x1

    .line 1212
    iput-boolean v1, v0, Lcom/flurry/sdk/do;->c:Z

    return-void
.end method
